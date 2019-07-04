<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Bug Tracker</title>
	<style>
		body{
			margin-left: 50px;
		}
		section{
			margin-bottom: 10px;
		}
		.stats, .bugname{
			font-size: 18pt;
		}
		.closed{
			color : red;
			text-decoration: line-through;
			font-style: italic;
			font-weight: bold;
		}
		.bugname{
			cursor: pointer;
		}
		.datetime{
			font-style: italic;
		}
		ol{
			width: 500px;
			list-style: none;
			-webkit-padding-start : 0px;
		}
		li{
			border : 2px solid gray;
			border-radius: 5px;
			padding: 10px;
			margin-bottom: 10px;
			background-color: #e7e7e7;
		}
    </style>
    
    <script src="react.development.js"></script>
	<script src="react-dom.development.js"></script>
	<script src="babel.min.js"></script>
	<script src="redux.js"></script>
    <script type="text/babel">


        function bugsReducer(currentState = [], action){
            if(action.type === 'ADD_NEW'){
                let newBug = action.payload;
                currentState.push(newBug);
                return currentState;
            }
            if (action.type === 'UPDATE'){
				let updatedBug = action.payload;
                return currentState.map(bug => bug.id === updatedBug.id ? updatedBug : bug);
                
                //let updatedBugId = updatedBug['id']-1;
                //currentState[updatedBugId].isClosed = updatedBug.isClosed; 
                //return currentState;
			}
            if(action.type === 'REMOVE_CLOSED'){
                currentState = action.payload;
                return currentState;
            }
            if(action.type === 'SORT_OPEN_CLOSED'){
                currentState = action.payload;
                return currentState;
            }
            if(action.type === 'SORT_DATE'){
                currentState = action.payload;
                return currentState;
            }
            return currentState;
        }
        
        var currentBugId = 0;

        var bugActionCreators = {
            addNew(newBugName){
                let newBug = {
                    id : ++currentBugId,
                    name : newBugName,
                    isClosed : false,
                    createdAt : new Date()
                };
                
                let action = {type : 'ADD_NEW', payload : newBug};
                return action;
			},
            toggle(bug){
				bug.isClosed = !bug.isClosed;
				let action = { type : 'UPDATE', payload : bug};
				return action;
			},
            removeClosed(openBugs){
                let action = { type : 'REMOVE_CLOSED', payload : openBugs};
                return action;
            },
            sortOpenClose(bugs){
                let openBugs = bugs.filter(bug => { return !bug.isClosed });
                let closedBugs = bugs.filter(bug => { return bug.isClosed });
                let sortedBugs = [...openBugs, ...closedBugs]

                let action = { type : 'SORT_OPEN_CLOSED', payload : sortedBugs}
                return action;
            },
            sortDate(bugs){
                bugs.sort(function(a,b){
                    return new Date(b.createdAt) - new Date(a.createdAt);
                });

                let action = { type : 'SORT_DATE', payload : bugs}
                return action;
            }
        }

        class BugModel{
            archivedBugs = 0;
            closedBugs = 0;
            openBugs = 0;
            orderedBugs = {};
            onResultChange = null;

            notifyChange(){
				if (typeof this.onResultChange === 'function')
					this.onResultChange();
			}
        }

        class BugStats extends React.Component{

            render = () => {
                return(
                    <section className="stats">
                        <span className="archived">{this.props.model.archivedBugs}</span>
                        <span> / </span>
                        <span className="closed">{this.props.model.closedBugs}</span>
                        <span> / </span>
                        <span>{this.props.model.openBugs}</span>
                    </section>
                );
            }
        }
        
        class BugSort extends React.Component{

            selectSortOrder = () => {
                var handle = document.getElementById("sort");
                var selectedOption = handle.options[handle.selectedIndex].value;

                switch (selectedOption) {
                    case "OpenClosed": 
                        this.props.sortOpenClose(this.props.bugs);
                        break;
                    case "Date":
                        this.props.sortDate(this.props.bugs);
                        break;
                }
            }

            render = () => {
                return(
                    <section className="sort">
                        <label htmlFor="">Order By :</label>
                        <select id="sort">
                        <option value="OpenClosed">Open/Closed</option>
                        <option value="Date">Period of Entry</option>
                        </select>
                        <input type="button" value="Sort" onClick={this.selectSortOrder} />
                        
                        <section>
                        <label htmlFor="">Descending ? :</label>
                        <input type="checkbox" name="" id="" />
                        </section>

                    </section>
                );
            }
        }
        
        
        class BugItem extends React.Component{
            
            onToggle = () => {
                if(this.props.bug.isClosed){
                    this.props.model.closedBugs -= 1;
                    this.props.model.openBugs += 1;
                }else{
                    this.props.model.closedBugs += 1;
                    this.props.model.openBugs -= 1;
                }

                this.props.toggle(this.props.bug);
            }

            render = () => {
                let { bug,id,toggle } = this.props;
                return (
                    <li>
						<span className="bugname" id={id} onClick={this.onToggle}>
							{bug.name}
						</span>
						<div>{bug.isClosed.toString()}</div>
						<div className="datetime">{bug.createdAt.toString()}</div>
					</li>
                );
            }

        }

        class BugRemove extends React.Component {

            findClosed = () => {
                this.props.bugs.forEach(element => {
                    if(element.isClosed){
                        this.props.model.closedBugs -= 1;
                        this.props.model.archivedBugs += 1;
                    }
                });

                let openBugs = this.props.bugs.filter(bug => { return !bug.isClosed });
                this.props.removeClosed(openBugs);
            }

            render = () => {
                return (
                    <input type="button" value="Remove Closed" onClick={this.findClosed}/>
                );                
            }            
        }

        class BugEdit extends React.Component{
            state = {bugName : 0};

            addNewBug = () => {
                    this.props.addNew(this.state.bugName);
                    this.props.model.openBugs += 1;
            }

            render = () => {
                return (
                    <section className="edit">
                        <label htmlFor="">Bug Name :</label>
                        <input type="text" name="" id="" onChange={ (evt) => { this.state.bugName = evt.target.value} } />
                        <input type="button" value="Add New" onClick={this.addNewBug} />
                    </section>    

                );
            }
        }

        class BugList extends React.Component{
            render = () => {
                let bugItems = this.props.bugs.map((bug, index) => (
                        <BugItem bug={bug} key={index} id={index} toggle={this.props.toggle} model={this.props.model}/>
                    ));                
                
                return(
                    <ol>{bugItems}</ol>
                );
            }
        }

		class BugTracker extends React.Component{
			render = () => {
                let { bugs, removeClosed } = this.props;
                
                return (
                    <>
                        <div>
                        <BugStats model={model} />
                        <BugSort bugs={bugs} sortOpenClose={this.props.sortOpenClose} sortDate={this.props.sortDate}/>
                        <BugEdit model={model} addNew={this.props.addNew} />
                        <section className="list">
                            <BugList bugs={bugs} toggle={this.props.toggle} model={model}/>
                            <BugRemove bugs={bugs} removeClosed={removeClosed} model={model} />
                        </section>
                        </div>                                    
                    </>
                ); 
			}
		}

        var store = Redux.createStore(bugsReducer);
        var bugActionDispatchers = Redux.bindActionCreators(bugActionCreators,store.dispatch);

        var model = new BugModel();

		function renderApp(){
			let bugs = store.getState();
			ReactDOM.render(<BugTracker bugs={bugs} model={model} {...bugActionDispatchers} />,
				document.getElementById('root'));
		}
        
        renderApp();
        store.subscribe(renderApp);    
        model.onResultChange = renderApp;

	</script>
</head>
<body>

	<h1>Bug Tracker</h1>
	<hr>
	<div id="root">
    </div>
    
</body>
</html>
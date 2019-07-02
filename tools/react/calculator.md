## Calculator

```javascript
<DOCTTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Calculator</title>
	<script src="reactDev.js"></script>
	<script src="reactDom.js"></script>
	<script src="babel.min.js"></script>
	<script type="text/babel">

		class Calculator extends React.Component{
			
			txtNumber1Ref = React.createRef();
			txtNumber2Ref = React.createRef();

			state = { result : 0 };

			onBtnAddClick = () => {
				var n1 = this.txtNumber1Ref.current.valueAsNumber;
				var n2 = this.txtNumber2Ref.current.valueAsNumber;
				var answer = n1+n2;

				this.setState({ result : answer });
			}

			onBtnSubtractClick = () => {
				var n1 = this.txtNumber1Ref.current.valueAsNumber;
				var n2 = this.txtNumber2Ref.current.valueAsNumber;
				var answer = n1-n2;

				this.setState({ result : answer });
			}

			onBtnMultiplyClick = () => {
				var n1 = this.txtNumber1Ref.current.valueAsNumber;
				var n2 = this.txtNumber2Ref.current.valueAsNumber;
				var answer = n1*n2;

				this.setState({ result : answer });
			}

			onBtnDivideClick = () => {
				var n1 = this.txtNumber1Ref.current.valueAsNumber;
				var n2 = this.txtNumber2Ref.current.valueAsNumber;
				var answer = n1/n2;

				this.setState({ result : answer });
			}

			render = () => {
				return (
					<div>
						<h1>Calculator</h1>
						<hr/>
						<input type="number" ref={this.txtNumber1Ref}/>
						<input type="number" ref={this.txtNumber2Ref}/>
						<br/>
						<input type="button" value="Add" onClick={this.onBtnAddClick}/>
						<input type="button" value="Subtract" onClick={this.onBtnSubtractClick}/>
						<input type="button" value="Multiply" onClick={this.onBtnMultiplyClick}/>
						<input type="button" value="Divide" onClick={this.onBtnDivideClick}/>
						<div id="divResult">{this.state.result}</div>
					</div>
				);
			}
		}

		ReactDOM.render(React.createElement(Calculator),
			document.getElementById('root'));

	</script>
</head>
<body>
	<div id="root"></div>
</body>
</html>
```



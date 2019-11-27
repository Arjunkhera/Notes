## Lets React : Part 2

Build your entities as obeservable, so that we can see all the changes taking place in the state

Where do you maintain state(data) ?
1. Component
2. Model

### The problems of data storage
1. When the data that you wish to use in multiple components, then keeping it in a component is a problem
2. All the data in the application are related to one another most of the times. 
3. Reflecting changes in component across other components is very hard if data is maintained in the component state
4. Storing data in the model allows for easier sharing 
5. Maintaining the application state in models is suitable for a single component
6. But in case of more complex applications consisting of multiple views, we need separate models and components for each
7. This makes is very hard to share the data amongst them
8. This is where a State Manager comes in 

---

### State Manager
A state manager is made of the following components
   
#### Components of a State Manager   
   
**Store**
- An application can have multiple views
- For every view, the application state is maintained in the store
- There is a *single* store for the whole application
- The values in the store can be a string, array, object, array of objects etc depending on your requirements
- But always a single store
- store data in component iff the data is to be only accessed by the particular component
- dont use multiple models to store the data

**State API**

1. getState() : gives the underlying state
2. subscribe() : informs whenever the state undergoes any changes 
3. dispatch(action) : we call the store for anything, which passes on this request to the reducer 

**Reducer**
- Every view in the store has atleast one reducer
- The parameters of a reducer is constant, that is ```reducer(currentApplicationState, action)```
- Every change that can happen to the state is termed as an action
- The changes to the state can only be done by the reducer
- If an action modifies the state, then the reducer returns the modified application state
- Else it returns the original state
- Actions usually are of the following format, ```action{type,payload}```
- However there is no hard and fast rule
- Reducers should not contain any business logic
- Their sole purpose is to apply the given action on the state
- We need to give a default state initially
- This default state is unique for every reducer
- So the current state has to be initially set by the reducer when it is created

*Flow of control between state and reducer*

1. Store calls the reducer with (currentState, action)
2. Action dictates what we want to do with the data
3. If the state is being changed, return the new state
4. And if unable to process, return the current state as is
5. If a new state is returned, the store changes its state and call subscribe() informing state has changed


**Action, Action Creators and Action Dispatchers**
- As explained before, every change in application state is seen as an *action*
- But manually creating action payloads and then dispatching them to the reducer is troublesome

- To make life easier, we have **Action Creators**
- The action creators are responsible for creating the actions that are supposed to be sent to the reducer
- So now the dispatcher does not need concern itself with action creation

- And then comes the **Action Dispatchers** themselves
- Instead of making the user responsible for dispatching the actions to the reducer we have action dispatchers
- The action dispatchers simply take in the data arguments, call the appropriate action creator, obtain the correct action
- And the send the final call to the reducer for modification of the application state

#### State Managers and Redux  

1. This way, one has to only be concerned with action dispatchers during calls from components
2. All the data and appropriate state changes are handled by the **state manager**
3. **Redux** is one such state manager
4. Redux was intially developed for React workflow
5. But since has now been adapted by other frameworks as well



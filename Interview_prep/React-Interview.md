# What is React?

- React is a JavaScript library, developed by Facebook, for building user interfaces

# What are React’s Key Features?

- Virtual DOM
- JSX
- Unidirectional Data Flow
- Server-Side Rendering

# What is JSX?

- JSX is a Javascript syntax extension that allows us to write HTML in our JavaScript to create React Elements
- Babel compiles JSX into `React.createElement()` calls

# What is the Virtual DOM?

- Manipulating the actual DOM is expensive
- Virtual DOM: React makes a virtual representation of the actual DOM in memory
- Expected changes are first reflected in an updated version of the Virtual DOM. The updated virtual DOM is compared with its previous version using React’s ‘diffing’ algorithm to determine how to best update the real DOM

You tell React what state you want the UI to be in, and it makes sure the DOM matches that state. This abstracts out the attribute manipulation, event handling, and manual DOM updating that you would otherwise have to use to build your app.

# Fundamentals

## What is a Component in React and what are the two main ways to define them?

- Component: an independent reusable piece of the UI
- Class Component: Component implemented using ES6 Classes extending React.Component
- Function Component: Component implemented by a JS function that takes a props argument and returns a React element

## How do Class components compare with Function components?

### Function Component Disadvantages
- There are no Hook equivalents yet for the uncommon life cycles: getSnapshotBeforeUpdate and componentDidCatch
- Older third-party libraries might not be compatible with hooks yet

### Class Components Disadvantages
- Classes add unnecessary confusion for the sake of syntactic sugar²
- Classes lead to a bulky hierarchy tree, especially during code reuse, which results in performance decreases and difficulty testing³
- Class lifecycle methods split up related pieces of code⁴
Further reading: How Are Function Components Different from Classes?

- With React Hooks, class components are replaceable with function components for the majority of use cases¹
- In the past, stateful and life cycle logic could only be incorporated in class components

## What are props and state in React?

- props is the JavaScript object, passed into a Component, that holds the configuration properties
- props is immutable by the receiving Component
- state is the JavaScript object, managed within the Component, that holds its internal state.
- Updates to either trigger a re-render

## What causes a component to update?
- A re-render of the parent which may entail new Props
- `setState()`

## What does setState() do and how does it work?
- `setState()` schedules an update to a component’s state object. When state changes, the component responds by re-rendering.
- Calls to `setState()` are asynchronous and may be batched
- Updates to this.state do not reflect the new value immediately after calling `setState()`
- Because of its asynchronous nature, Calling `setState()` by passing an object containing the current state value can result in unexpected behaviour
- Passing `setState()` a function rather than an object allows you to access the current state value, avoiding potential unexpected behaviour caused asynchronicity

## Walk me through the main phases of the React Lifecycle

- 3 phases: Mounting, Updating, Unmounting
- Mounting: constructor → render → DOM update → componentDidMount
- Updating: render → DOM update → componentDidUpdate
- Unmounting: componentWillUnmount
- (B) inclusion of getDerivedStateFromPropsand shouldComponentUpdate

## How can I prevent unnecessary re-rendering?

- React.PureComponent : Components created off of this class do a shallow comparison with the upcoming props and state and re-render if there are changes
- React.Memo: Higher-order component that works like React.PureComponent but used for function components
- shouldComponentUpdate : Lifecycle method that takes in the next props and state and returns a boolean indicating if the component should rerender

## My React app is slow, how do I improve its performance?

- Identify bottlenecks: Profiling components in Chrome via Chrome Performance Tab or DevTools Profiler
- Virtualize long lists — only render list nodes as you need them
- Avoiding unnecessary re-renders (See the previous question)
- Using a Production Build

## What are refs and what are they used for?

- Refs provide access to DOM nodes or React elements created in the `render()` method
- In the past, refs were limited only to class components but now can be accessed in function components via the `useRef` hook

Uses include:
- Managing focus, text selection, or media playback.
- Triggering imperative animations.
- Integration with third-party DOM libraries.

## When rendering lists, what are keys and why do you need them?

- Keys are constant strings values that uniquely identifies a list item among its siblings
- Keys help React identify which items have changed, are added, or are removed.
- Keys are necessary because reconciling list elements differences without them is highly inefficient

## What are Controlled and Uncontrolled components in React?

- Both are ways to implement form controls in React
- Controlled: form data is handled by a React component
- Uncontrolled: form data is handled by the DOM itself
- Controlled components are the recommended way to implement forms
- Uncontrolled components are an option when converting legacy code bases to React, or integration with a non-React library

## What is props.children?
- The content between the opening and closing tags of a component is passed as the children attribute of props: props.children
- props.children can be string literals, HTML syntax, JS expressions, and JS functions

## What are Error Boundaries?
- Error Boundaries are React components that catch JavaScript errors anywhere in their child component tree, log those errors, and display a fallback UI
- Components become Error Boundaries if they define either: getDerivedStateFromError() or componentDidCatch()
- Error Boundaries are usually defined once and used throughout the application by wrapping around other components like catch blocks

## Talk to me about handling events in React. Where does SyntheticEvent fit into the picture?
- Handling events on React elements is similar to that of regular DOM elements except React sports several syntactic differences
- Syntax Difference 1: React events are named using camelCase, rather than lowercase.
- Syntax Difference 2: With JSX you pass a function as the event handler, rather than a string.
- React elements receive synthetic events on handling
- SyntheticEvent : A React cross-browser wrapper object around the browser’s native event
- SyntheticEvent allow events to function identically across browsers

## Why would you bind a function in a class component?
- The problem stems from Javascript rather than React
- In JavaScript, this is the context of a function and takes on dynamic values depending on how the function is invoked
- When the function used as an event handler as part of a class, this is not bound and as a result is undefined, causing an exception to be thrown if this.state or this.props is accessed
- Resolution 1: this can be explicitly bound using the bind() method
- Resolution 2: Because arrow functions take the thisvalue of their enclosing lexical scope, this can be bound with the use of arrow functions

## What are the common approaches to reusing code in React?
Higher-Order Component:
- Higher-order component: A function that takes a React component and transforms it into another component by enriching it with reusable functionality
- Common in third-party libraries, a prevalent example is React Redux’s connect
- Easily compose a component by chaining multiple HoC’s
- Disadvantage: Poor readability when chaining many HoC’s resulting in Wrapper Hell
- Disadvantage: Wrapper hell can result in a nested tree and difficulty debugging

Render Props:
- Render Props: A pattern where a component uses a prop (a function) that dictates its render logic rather than implementing its own.
- Prevalent example is React-Router
- Disadvantage: Can potentially be verbose as render logic needs to be passed into JSX
- Disadvantage: Incorrect implementation can lead to memory issues¹

Custom Hooks:
- A custom hook is a Javascript function whose name starts with ‘use’ and calls other hooks
- Part of React 16.8 hook update, and allows you to reuse stateful logic without restructuring your component hierarchy
- In most cases, custom hooks are sufficient in replacing render props and HoCs and reduce the amount of nesting needed²
- Allow you to avoid wrapper hell/multiple layers of abstraction that can come with 

Render Props and HoCs:
- Disadvantage: Hooks cannot be used inside classes

Misc:
- All 3 are ways of tackling Cross-Cutting Concerns:
- Common follow up is to implement a simple HoC, Render Prop, or custom hook
- Further Readings 1: Higher-order components vs Render Props
- Further Reading 2: Comparison: HOCs vs Render Props vs Hooks

## Why should async calls be made in componentDidMount and not the constructor?
- A common misconception is that fetching data in the constructor avoids an additional rendering step compared to componentDidMount
- Reality: Fetching data in the constructor offers no performance improvements over componentDidMount
- Data won’t be loaded if the async request in constructor completes after the component mounts
- Best practices are to avoid side effects in constructor
- In the constructor, the state should be initialized andsetState() should not be called²
- (B) Data fetching via async calls can be managed using the useEffect hook
- (B) React Suspense is a potential alternative to fetch data in the future

# React Hooks
## What are React Hooks?
- New feature in React 16.8
- Allows function components to use state and other previous class-only features
- Backwards compatible and optional

## Why should I use hooks?
- Hooks allow for simply reuse of stateful logic without layering abstractions like HoCs and Render Props (See the question about code reuse)
- Fully opt-in and backward compatible
- Hooks make complicated components easier to understand by grouping related code together into functions
- Hooks allow you to avoid Class components which introduce unnecessary complications

## What is the useState hook?
- useState is a Hook that lets you add React state to function components
- useState like all Hooks is a function
- Argument: the initial state
- Returns: Pair containing the current state and a function to update it.

## What is the useEffect hook?
- useEffect lets you perform side effects in function components
- useEffect is triggered after a render
- useEffect is like the combination of componentDidMount, componentDidUpdateand componentWillUnmount
- Arguments: function to be called, and an array for React to check for changes in order to render

## What is theuseReducer hook?
- useReducer is an alternative to useState that is used when there is complex state logic that that involves multiple sub-values or when the next state depends on the previous one
- 3 Arguments: Reducer function, initial State Object, and a function to initialize the state lazily
- Reducer function takes the current state and action variable and returns the next state
- Returns: a pair containing the current state, and a dispatch function for dispatching an action.
- Works similarly to Redux

## How do does the performance of using hooks compare to that of classes?
- Hooks avoid a lot of the overhead that is present with classes such as the creation of instances and binding of events
- Hooks result in smaller component trees because it avoids the nesting present in HoCs and render props resulting in less work for React to do.

# State Management
## What is Redux?
- Redux is a library for managing application state
- Redux is a solution for global state management, allowing you to pass data without the need to pass props through every level (aka props drilling)
-- Inspired by Facebook’s flux architecture

## What are the main constituents of Redux?
Actions:
- Actions are plain Javascript objects with type property to indicate what type of action is being performed
- Actions are dispatched to the central store using store.dispatch()
- Actions are usually created by Action Creator functions, which given some input generates the corresponding action.

Reducers:
- Reducers are functions that take an Action and a current state and returns the resulting state
- Reducers must be pure functions and have no side effects

Store:
- The Store is the central object that maintains and updates the application state
- The Store also handles the registration and unregistering of listeners

## How does Redux work?
- Redux revolves around strict unidirectional data flow
- First: an Action is dispatched to the store via store.dispatch(action)
- Second: Redux determine the resultant state by calling a Reducer function
- Third: The root reducer combines the output of multiple reducers into a single state tree
- Fourth: The Store saves the new state tree and notifies listeners that are registered

## What are Redux Selectors?
- A Selector is a function that takes in the Redux store state and returns the derived desired data from that state.
- Selectors allow the Redux store state to be as minimal as possible by computing data off of the state
- Selectors allow for better separation of concern by keeping components free from state transformation logic
- Selector computations can be memoized to prevent additional computation
- Selectors can also be composed and reused across an application

## What is Redux Toolkit?
- Redux Toolkit: an official opinionated Redux toolset to get you up and running quickly with Redux without having the worry about the boilerplate. Comes with premade functions and utilities that help easily configure the store and create actions and reducers.
- Redux Toolkit comes baked with widely used Redux Addons:
- Redux Thunk — Middleware for async logic
- Reselect — Easily create memoized selectors

## What is Context API?
- Like Redux, Context API is a solution for state management
- Context is an official feature as part of React 16.3

Context has 3 main parts:
- A Context object is created using React.createContext(defaultValue)
- A Provider is a component that triggers all descendant consumers of itself to rerender when there is a change to its value
- A Consumer is a component that subscribes to context changes

## How do I solve global state management with Hooks?
- By passing the useContext hook a context object, function components can hook onto changes to the nearest corresponding Provider and will rerender when there is an update
- Function components can alternatively still use Consumers to subscribe to Context updates, although useContext is arguably more readable¹

## How does Context API compare to Redux and when would you use one over the other?
- Set up for Redux requires more additional work than Context as Context is built into React.
- For most smaller use cases simpler use cases, Context should be sufficient
- Redux allows access to middleware, which triggers a function after an action is dispatched
- Redux provides access to the robust debugging tool Redux DevTools, that allow you to time travel and see changes made to your store step by step

# Open-Ended Questions
- What made you choose to use React?
- What are some scenarios/reasons you wouldn’t choose React?
- What are some things you are looking forward to in the future of React?
- What are recent additions that you like about React?
- What don’t you like about React?
- What is something you’ve built in React?
- What are the challenges you faced building it?
- How did you overcome challenges?
- What is an interesting bug you encountered while working in React?
- Tell me about your testing process at your current project
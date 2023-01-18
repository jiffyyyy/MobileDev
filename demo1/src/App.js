import './App.css';
//import Post from "./Post";
//import { PostFunction } from "./PostFunction";
import StatelnClass from './StatelnClass';
function App() {
  return (
    <div className="root">
      <div className ="App">
        <h2>State in class component</h2>
        <StatelnClass name= "Napaporn Chaowangkhong" myId="1"/>
        <StatelnClass name = "Napaporn Chaowangkhong" myId = "2"/>
        
        </div>
    </div>
  );
}

export default App;

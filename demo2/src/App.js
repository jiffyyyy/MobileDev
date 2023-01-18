import Post from "./Post"
import Comment from "./Comment"
import Card from "./Card"
import Navbar from "./Navbar"

function App() {
  return (
    
      <div>
        <Navbar /> 
          <br></br>
        <Post userId = "Dek_SE"message="Yeah, I got a grade A in Mobile Programming">
          <Comment userId="Napaporn_SE" message="WOW, IT'S Wonderful"></Comment>
          <Comment userId="jiff_SE" message="Congrat"></Comment>
        </Post> 
        <Card />
      
        </div>
      );
    }

    export default App;

import logo from './logo.svg';
import './App.css';
import { useEffect, useState} from 'react'
import Navbar from './Navbar'
// import User from './User'
// import Game from './Game'
import Home from './Home'
import Games from './components/Games'
import Users from './components/Users'
import { NavLink } from "react-router-dom"


import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link
} from "react-router-dom";

function App() {
  console.log("In App")

  const[users, setUsers] = useState( [] )
  // console.log("User: ", users)
  const[games, setGames] = useState( [] )
  
  //console.log("LOZGame: ", games)
  useEffect( ()=> {
    fetch ("http://localhost:3001/users")
    .then(r=> r.json())
    .then(fetchedUsers => {
      console.log(fetchedUsers)
      setUsers(fetchedUsers)
    })

    fetch("http://localhost:3001/games")
    .then(r=> r.json())
    .then(fetchedLOZGames =>{
      console.log("fetchedLOZGames!!!123: ", fetchedLOZGames)
      setGames(fetchedLOZGames)  
    })

  }, [])

  return (
    <div className="App">
      <header className="App-header">            
      </header>
    {/* </div> */}
      // <div>
         <Navbar />
         <Router>
          <Switch>
            <Route path="/games" component = {Games}>
              <Games users={users} games={games} setGames={setGames} />
              <NavLink to="/">
                <h3>Home</h3>
            </NavLink>
            <NavLink to="/users">
                    <h4> Users</h4>
            </NavLink>
            <NavLink to="/games">
                    <h4>LOZ Games</h4>
            </NavLink>
            </Route>

            <Route path="/users" component = {Users}>
              <Users users={users} setUsers={setUsers} />
              <NavLink to="/">
                <h3>Home</h3>
            </NavLink>
            <NavLink to="/users">
                    <h4> Users</h4>
            </NavLink>
            <NavLink to="/games">
                    <h4>LOZ Games</h4>
            </NavLink>
            </Route>
              
            
           
            <Route exact path="/">
            <Home />
            <NavLink to="/">
                <h3>Home</h3>
            </NavLink>
            <NavLink to="/users">
                    <h4> Users</h4>
            </NavLink>
            <NavLink to="/games">
                    <h4>LOZ Games</h4>
            </NavLink>
              
            </Route>
           


                
            {/* <Route exact path="/">
              <User />
            </Route>

            <Route exact path="/">
              <Game />
            </Route>  */}
          </Switch>
         </Router>
      
      //  </div>
      </div>
  );
}



export default App;

{/* <React.Fragment></React.Fragment> */}
//new

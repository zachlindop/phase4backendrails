import logo from './logo.svg';
import './App.css';
import { useEffect, useState} from 'react'
import axios from 'axios'
import Navbar from './Navbar'
// import User from './User'
// import Game from './Game'
import Home from './Home'
import Games from './components/Games'
import Users from './components/Users'
import Login from './components/Login';
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

  const [isLoggedIn, setIsLoggedIn] = useState(false);
  const [currentUserName, setCurrentUserName] = useState('');
  const [currentUserId, setCurrentUserId] = useState('');

  const handleLogin = (data) => {
    setIsLoggedIn(true);
    console.log(`data.user: ${JSON.stringify(data.user)}`);
    setCurrentUserName(data.user.name);
    setCurrentUserId(data.user.id);    
    localStorage.setItem("currentUserName", data.user.name);
    localStorage.setItem("currentUserId", data.user.id);
  }

  const handleLogout = () => {
    setIsLoggedIn(false);
    setCurrentUserName('');
    setCurrentUserId('');
    localStorage.clear();
  }

  const loginStatus = () => {
    const loggedInUserName = localStorage.getItem("currentUserName");
    const loggedInUserId = localStorage.getItem("currentUserId");

    console.log(`loggedInUserName: ${loggedInUserName}`);

    if (loggedInUserName && loggedInUserId) {
      console.log('Not making API call. User found in local storage');
      setCurrentUserName(loggedInUserName);
      setCurrentUserId(loggedInUserId);
      setIsLoggedIn(true);
    }
    else {
      console.log('making API call: http://localhost:3001/logged_in');
      fetch ('http://localhost:3001/logged_in')
      .then(r=> r.json())
      .then(response => {
        console.log(`loginStatus response: ${JSON.stringify(response)}`)
        if (response.logged_in) {
          handleLogin(response)
        } else {
          handleLogout()
        }
      })
    }
  };
  
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
    loginStatus();   
  }, [])

  return (
    <div className="App">
      <header className="App-header">     
        { isLoggedIn && currentUserName && currentUserId && <p> Logged In as {currentUserName} </p>}
        { isLoggedIn && <button onClick={handleLogout}>Log Out</button>}
      </header>    
      <div>
         <Navbar />
         <Router>
          <Switch>
            {!isLoggedIn && <Login handleLogin={handleLogin} />}

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

            <Route exact path='/login' component={Login}/>                        

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
          </Switch>
         </Router>      
       </div>
      </div>
  );
}



export default App;

{/* <React.Fragment></React.Fragment> */}
//new

import React, {useState, useEffect}  from 'react';
// import { Button } from 'react-bootstrap'

const Games = ({games, users, setGames}) => {
    const[userId, setUserId] = useState('')



    function getFilteredGames() {
        console.log(`getting filtered game for user: ${userId}`);        
    
        fetch(`http://localhost:3001/games?user_id=${userId}`, {
          method: "GET",
          headers: {
            'Content-Type': 'application/json'
          }          
        })
          .then(response => response.json())
          .then(filteredGames => {              
              setGames([...filteredGames]);
          }) 
    }

return (
<div>     <div className="gameLibrary">
        
    <form
        onSubmit={e => {
          e.preventDefault();
          getFilteredGames();
        }}
      >
        <h1>Favorite Games Gallery</h1>
        <label htmlFor="location">
          Select User
          <select
            value={userId}
            onChange={e => setUserId(e.target.value)}
            onBlur={e => setUserId(e.target.value)}
          >
        {users.map((user, index) => {
            return <option value={user.id}>{user.name}</option>;
        })}         
          </select>
        </label>
        
        <button>Submit</button>
      </form>

        {games.map((game, index) => {
            return (
                
                <div className = "game">
                <h2 className = "gameName">{game.name}</h2>
                <h2 className = "gameYear">Released:{game.year}</h2>
                <img src={game.image} class="image" />
                {/* <h3> One of {game.users_name}'s favorite game!!!</h3> */}
                </div>
            )
        })}
    </div>           
    </div>
    )
}

export default Games;
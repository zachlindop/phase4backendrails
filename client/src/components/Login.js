import React, { Component } from 'react';
import axios from 'axios'
import {Link} from 'react-router-dom'

class Login extends Component {
  constructor(props) {
    super(props);
    this.state = { 
      username: '',
      email: '',
      password: '',
      errors: ''
     };
  }

handleChange = (event) => {
    const {name, value} = event.target
    this.setState({
      [name]: value
    })
  };

  redirect = () => {
    // this.props.history.push('/')
  }

    handleErrors = () => {
        return (
        <div>
            <ul>
            {this.state.errors.map(error => {
            return <li key={error}>{error}</li>
            })}
            </ul>
        </div>
        )
    };

  handleSubmit = (event) => {
    event.preventDefault()
    const {username, email, password} = this.state;

    const data = {
        "user": {
            username: username,
            email: email,
            password: password
        }
    }

    fetch("http://localhost:3001/login", {
      method: "POST",
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(data)
    })
      .then(response => response.json())
      .then(response => {
          console.log(`Logged In: ${JSON.stringify(response)}`);          

          if (response.logged_in) {
            this.props.handleLogin(response)
            this.redirect()
          } else {
            this.setState({
              errors: response.errors
            })
          }
      })
  };

  render() {
    // const {username, email, password} = 
    return (
      <div>
        <h1>Log In</h1>        
<form onSubmit={this.handleSubmit}>
          <input
            placeholder="username"
            type="text"
            name="username"
            value={this.state.username}
            onChange={this.handleChange}
          />
          <input
            placeholder="email"
            type="text"
            name="email"
            value={this.state.email}
            onChange={this.handleChange}
          />
          <input
            placeholder="password"
            type="password"
            name="password"
            value={this.state.password}
            onChange={this.handleChange}
          />         
<button placeholder="submit" type="submit">
            Log In
          </button>          
          <div>
            or <Link to='/signup'>sign up</Link>
          </div>
          
         </form>
      </div>
    );
  }
}
export default Login;
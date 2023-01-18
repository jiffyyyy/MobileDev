import React, { Component } from 'react'

export default class StatelnClass extends Component {
    constructor(props){
        super(props);
        this.state = {
            Id: props.myId,
            name: props.name,
            counter: 0
        };

    }
    clickPlus = () =>{
        this.setState({
            counter: this.state.counter + 1,
        });
    }
    clickMinus = () => {
                this.setState({
                    counter: this.state.counter - 1,
                });


    };
    render() {
        return (
        <div>
           <p><strong>Name: </strong>{this.state.name}</p>
            <p><strong>Counter:</strong>{this.state.counter}</p>

            <button onClick={this.clickPlus}>+</button>
            <button onClick ={this.clickMinus}>-</button>
        </div>
        );
    }
}


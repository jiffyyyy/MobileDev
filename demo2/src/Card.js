import React from 'react'
import "bootstrap/dist/css/bootstrap.min.css"

const Card = () => {
    return (
        <div className ="card" style ={{ width: "18rem"}}>
        <div className = "card-body">
            <h5 className = "card-title"> Card title</h5>
            <p className = "card-text"> Some quick example text on the Card title and make up the bulh of the card 's content.</p>
            <a href="#" className="btn btn-primary">
                {" "}
                Go somewhere{" "}
            </a>
        </div>
            
        </div>
    )
}

export default Card

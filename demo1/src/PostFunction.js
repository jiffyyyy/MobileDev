import React from 'react'

export const PostFunction = (props) =>  {
    const myName = "Napaporn Chaowangkhong";
    let score = 4+5;
    return (
        < div >
            <p>
                <b>Text: </b> <i>{props.content}</i >
            </p> 
            <p>
                <b> Post by: </b><i>{props.name}</i >
            </p> 
            </div>
    );
};

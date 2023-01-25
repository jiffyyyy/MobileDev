import React from 'react'
import { useDispatch } from 'react-redux'; //เรียกใช้ dispatch
const Activity = ({id, name, duration}) =>{
    const dispatch = useDispatch(); //สร้างฟังก์ชัน dispatch
    const deleteActivity = () =>{   //สร้างฟังก์ชันลบ dispatch
        dispatch(    //ส่ง object 
            {
                type:"DELETE_ACTIVITY",  
                payload:{   //พารามิเตอร์ที่ส่งไป
                    id: id, 
                },
            });
    };


return (
    <div className="section">
        <p>
            <b>Activity: </b> {name}, {" "}
            <b>Duration: </b> {duration}
            <button onClick={deleteActivity}>Delete</button>   
        </p>

    </div>
  );}


export default Activity

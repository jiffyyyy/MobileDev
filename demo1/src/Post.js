import React, { Component } from 'react'

export default class Post extends Component {
    render() {//เปลี่ยนหน้าโค้ดให้เป็นเว็บ
        return (
            <div>
                <p>
                    <b>Text:</b> <i>{this.props.content}</i>
                </p>
                <p>
                    <b>Post by :</b><i>{this.props.name}</i>
                    </p>
            </div>
        );
    };
}

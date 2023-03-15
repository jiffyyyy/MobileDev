import React from 'react'
import NavBar from '../component/Navbar'
import Header from "../component/Header"
import MailList  from '../component/MailList'
import Footer from '../component/Footer'

const Hotel = () => {
  return (
    <div>
      <NavBar/>
      <Header/>
      <div className='hotelContainer'>
      <MailList/>
      <Footer/>
      </div>
    </div>
  )
}

export default Hotel
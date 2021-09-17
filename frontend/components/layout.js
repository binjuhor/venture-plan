import React, { useState, useEffect } from 'react'
import Header from './common/header'
import Footer from './common/footer'
import {fetchAPI} from '../lib/api'
import {useSelector} from 'react-redux'

const Layout = ({ children, headerWhite = true }) => {
  const [leftMenu, setLeftMenu] = useState(null)
  const [headerNavigation, setHeaderNavigation] = useState(null)
  const [isMenuActive, setIsMenuActive] = useState(false)
  const [globalData, setGlobalData] = useState({
    Address: "",
    Email: "",
    PhoneNumber: "",
    FacebookURL: "",
    LinkedInURL: "",
    TwitterURL: "",
    YoutubeURL: "",
    InstagramURL: ""
  })

  const overlay = useSelector(state => state.layout.overlay)

  useEffect(() => {
    _fetchLeftMenu()
    _fetchHeaderNavigation()
    _fetchGlobalData()
  }, [])

  const _fetchGlobalData = async () => {
    try {
      const data = await fetchAPI('/global')

      if(data) setGlobalData(data)
    } catch (err) {
    }
  }

  const _fetchLeftMenu = async () => {
    try {
      const data = await fetchAPI('/menus?Slug=left-menu')

      if(data.length > 0) setLeftMenu(data[0])
    } catch (err) {
      console.log(err)
    }
  }

  const _fetchHeaderNavigation = async () => {
    try {
      const data = await fetchAPI('/menus?Slug=header-navigation')

      if(data.length > 0) setHeaderNavigation(data[0])
    } catch (err) {
      console.log(err)
    }
  }

  return (
      <div className={`${isMenuActive ? 'hamburger-open' : ''} ${overlay ? 'overlay': ''}`}>
        <Header
            leftMenu={leftMenu}
            headerNavigation={headerNavigation}
            headerWhite={headerWhite}
            isMenuActive={isMenuActive}
            setIsMenuActive={setIsMenuActive}
            {...globalData}
        />
          {React.cloneElement(children)}
        <Footer {...globalData}/>
      </div>
  )
}

export default Layout
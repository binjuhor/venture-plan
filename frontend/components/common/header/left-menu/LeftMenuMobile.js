import React, { useState, useEffect, useRef } from 'react'
import Fade from 'react-reveal/Fade'
import {useSelector} from 'react-redux'
import MenuItemMobile from './MenuItemMobile'
import SubMenuItem from './SubMenuItem'
import LanguageMenuItem from './LanguageMenuItem'

const LeftMenuMobile = ({
  isMenuActive,
  setIsMenuActive,
  menuItems,
  subMenus,
  languages
}) => {
  const [subMenuItems, setSubMenuItems] = useState(null)
  const [menuLadder, setMenuLadder] = useState([{ items: menuItems, header: "" }])
  const [menuHeaderTitle, setMenuHeaderTitle] = useState("")
  const [currentIndex, setCurrentIndex] = useState(0)
  const [showLanguageSubmenu, setShowLanguageSubmenu] = useState(false)
  const [inputFocused, setInputFocused] = useState(false)
  const [searchInput, setSearchInput] = useState("")
  const [showSearchMoreData, setShowSearchMoreData] = useState(false)
  const triggerLeftMenuLanguageMobile = useSelector(state => state.layout.triggerLeftMenuLanguageMobile)
  const wrapperRef = useRef()
  const bottomLanguageRef = useRef()

  useEffect(() => {
    const _handleClickOutside = (event) => {
      if (wrapperRef.current && !wrapperRef.current.contains(event.target)) {
        setIsMenuActive(false)
      }
    }

    document.addEventListener("mousedown", _handleClickOutside);
    return () => document.removeEventListener("mousedown", _handleClickOutside);
  }, [wrapperRef]);

  useEffect(() => {
    if(triggerLeftMenuLanguageMobile) _openLeftMenuLanguageMobile()
  }, [triggerLeftMenuLanguageMobile])

  const _openLeftMenuLanguageMobile = () => {
    setIsMenuActive(true)
    setShowLanguageSubmenu(true)

    if(bottomLanguageRef.current) {
      setTimeout(() => {
        bottomLanguageRef.current.scrollIntoView({ behavior: "smooth" })
      }, 500)
    }
  }

  const _navigateToSubMenu = (title, subItems) => {
    const newIndex = currentIndex + 1

    setSubMenuItems(subItems)
    setMenuHeaderTitle(title)
    setCurrentIndex(newIndex)
    setMenuLadder([...menuLadder, { items: subItems, header: title }])
  }

  useEffect(() => {
    setShowSearchMoreData(!!searchInput || !!inputFocused)
  }, [inputFocused, searchInput])

  const _onGoBack = () => {
    const newIndex = currentIndex - 1

    if(newIndex === 0) {
      setMenuHeaderTitle("")
      setSubMenuItems(null)
      setMenuLadder([menuItems])
    } else {
      setMenuHeaderTitle(menuLadder[newIndex].header)
      setSubMenuItems(menuLadder[newIndex].items)
      setMenuLadder(menuLadder.filter((_, index) => index !== currentIndex))
    }

    setCurrentIndex(newIndex)
  }

  return (
    <div className={`left-menu mobile ${isMenuActive ? 'active' : ''}`} ref={wrapperRef}>
      {!subMenuItems
        ? (
        <>
          <a href="#" className="left-menu__close" onClick={() => setIsMenuActive(!isMenuActive)}/>
          <div className="left-menu__header" style={{ display: !showSearchMoreData ? "block" : "none"}}>
            <a href="/">
              <img src="/images/logo.svg" alt=""/>
            </a>
          </div>
          <div className="left-menu__search">
            <form action="#">
              <input
                  type="text"
                  value={searchInput}
                  onChange={(e) => setSearchInput(e.target.value)}
                  placeholder="Search services and experts"
                  onFocus={() => setInputFocused(true)}
                  onBlur={() => setInputFocused(false)}
              />
            </form>
            <div style={{ display: showSearchMoreData ? "block" : "none", padding: 0}}>
              <div style={{ display: (!!showSearchMoreData && !searchInput) ? "block" : "none", padding: 0}}>
                <Fade when={!!showSearchMoreData && !searchInput}>
                  <b>Popular Searches</b>
                  <ul>
                    <li><a href="#">Agile</a></li>
                    <li><a href="#">Digital</a></li>
                    <li><a href="#">Strategy</a></li>
                  </ul>
                  <b>Recently Visited Pages</b>
                  <ul>
                    <li><a href="#">Agile</a></li>
                    <li><a href="#">Digital</a></li>
                    <li><a href="#">Strategy</a></li>
                  </ul>
                </Fade>
              </div>
              <div style={{ display: searchInput ? "block" : "none", padding: 0}}>
                <Fade when={!!searchInput}>
                  <ul>
                    <li><a href="#">Agile</a></li>
                    <li><a href="#">Digital</a></li>
                    <li><a href="#">Strategy</a></li>
                  </ul>
                </Fade>
              </div>
            </div>
          </div>
        </>
        ) : (
          <div className="left-menu__header">
            <span onClick={_onGoBack}>back</span>
            <a href="#" className="left-menu__close" onClick={() => setIsMenuActive(!isMenuActive)}/>
          </div>
        )
      }
      {!subMenuItems && (
        <div className="left-menu__main">
          <ul>
            {menuItems.map((item) => (
                <MenuItemMobile {...item} key={item.id} showSubMenu={(title, subItems) => _navigateToSubMenu(title, subItems, menuItems)}/>
            ))}
          </ul>
        </div>
      )}
      {!!subMenuItems && (
        <div className="left-menu__main">
          <span className="left-menu-main-title" style={{ fontWeight: '700', fontSize: 20 }}>{menuHeaderTitle}</span>
          <ul>
            {subMenuItems.map((item) => (
                <MenuItemMobile
                    {...item}
                    itemClass="left-menu-subitem"
                    key={item.id}
                    showSubMenu={_navigateToSubMenu}
                />
            ))}
          </ul>
        </div>
      )}
      <div className="left-menu__sub">
        <ul>
          {subMenus.map((item, index) => <SubMenuItem {...item} key={index}/>)}
          <li className="language-item">
            <a
                href="#"
                className={`btn-select ${showLanguageSubmenu ? 'active' : ''}`}
                onClick={(e) => {
                  e.preventDefault()

                  setShowLanguageSubmenu(!showLanguageSubmenu)
                  if(bottomLanguageRef.current) {
                    setTimeout(() => {
                      bottomLanguageRef.current.scrollIntoView({ behavior: "smooth" })
                    }, 500)
                  }
                }}
            >Language English</a>
            {languages.map((language, index) =>
                <LanguageMenuItem {...language} key={index} visible={showLanguageSubmenu}/>
            )}
          </li>
        </ul>
      </div>
      <div style={{ float:"left", clear: "both" }} ref={bottomLanguageRef} />
    </div>
  )
}

export default LeftMenuMobile
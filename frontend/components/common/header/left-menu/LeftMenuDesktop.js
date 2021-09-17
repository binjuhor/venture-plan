import React, {useState, useRef, useEffect} from 'react'
import MenuItem from './MenuItem'
import SubMenuItem from './SubMenuItem'
import LanguageMenuItem from './LanguageMenuItem'

const LeftMenuDesktop = ({
  isMenuActive,
  setIsMenuActive,
  menuItems,
  subMenus,
  languages,
  term,
  searchKeyword
}) => {
  const [showLanguageSubmenu, setShowLanguageSubmenu] = useState(false)
  const wrapperRef = useRef()
  const bottomLanguageRef = useRef()
  const searchRef = useRef("")

  const getSearchTerm = () => {
    searchKeyword(searchRef.current.value)
  }

  useEffect(() => {
    const _handleClickOutside = (event) => {
      if (wrapperRef.current && !wrapperRef.current.contains(event.target)) {
        setIsMenuActive(false)
      }
    }

    document.addEventListener("mousedown", _handleClickOutside);
    return () => document.removeEventListener("mousedown", _handleClickOutside);
  }, [wrapperRef]);

  return (
      <div className={`left-menu desktop ${isMenuActive ? 'active' : ''}`} ref={wrapperRef}>
        <div className="left-menu__header">
          <a href="/">
            <img src="/images/logo.svg" alt=""/>
          </a>
          <a href="#" className="left-menu__close" onClick={() => setIsMenuActive(!isMenuActive)}/>
        </div>
        <div className="left-menu__search">
          <form action="#">
          <input ref={searchRef} type="text" placeholder="Search services and experts" value={term} onChange={getSearchTerm} />
          </form>
        </div>
        <div className="left-menu__main">
          <ul>
            {menuItems.map((item) => <MenuItem {...item} key={item.id}/>)}
          </ul>
        </div>
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

export default LeftMenuDesktop
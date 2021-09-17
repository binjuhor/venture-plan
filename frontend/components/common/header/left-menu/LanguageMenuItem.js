import React, { useState } from 'react'

const LanguageMenuItem = ({ label, sub_menus: subMenus = [], visible }) => {
  const [showSubmenu, setShowSubmenu] = useState(false)

  const _onToggleMenu = (e) => {
    e.preventDefault()

    setShowSubmenu(!showSubmenu)
  }

  return (
      <ul style={{ display: visible ? 'block' : 'none' }}>
        <li><a href="#" onClick={_onToggleMenu}>{label}</a>
          <ul style={{ display: showSubmenu ? 'block' : 'none' }}>
            {subMenus.map(({ label, image}, index) => (
                <li key={index}>
                  <img src={image} alt=""/>
                  <a href="#">{label}</a>
                </li>
            ))}
          </ul>
        </li>
      </ul>
  )
}

export default LanguageMenuItem
import React, { useState } from 'react'
import NavigationMenuItemRow from './NavigationMenuItemRow'

const DropdownNavigationMenuItem = ({ Label, Link, Rows, id, submenuVisible, setSubmenuVisible }) => {
  const _hideSubmenu = () => {
    setSubmenuVisible(null)
  }

  return (
      <li className="has-submenu">
        <a href={Link} onMouseOver={() => setSubmenuVisible(id)}>{Label}</a>
        <div className={`sub-menu ${submenuVisible === id ? 'active' : ''}`}>
          <a href="#" className="close" onClick={_hideSubmenu}>&times;</a>
          <div className="container">
            <div className="sub-menu__item">
              {Rows.map((row, index) => <NavigationMenuItemRow {...row} key={index}/>)}
            </div>
          </div>
        </div>
      </li>
  )
}

export default DropdownNavigationMenuItem
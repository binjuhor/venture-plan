import React, { useState } from 'react'

const SubMenuItem = ({ label, sub_menus: subMenus = [] }) => {
  const [showSubmenu, setShowSubmenu] = useState(false)

  const _onToggleMenu = (e) => {
    e.preventDefault()

    setShowSubmenu(!showSubmenu)
  }

  return subMenus.length > 0
      ? (
          <li><a href="#" onClick={_onToggleMenu}>{label}</a>
            <ul style={{ display: showSubmenu ? 'block' : 'none' }}>
              {subMenus.map((item, index) => <SubMenuItem {...item} key={`sub-item-${index}`}/>)}
            </ul>
          </li>
      ) : <li><a href="#">{label}</a></li>
}

export default SubMenuItem
import React from 'react'
import NavigationSubMenuItemColumn from './NavigationSubMenuItemColumn'

const NavigationMenuItemColumn = ({ Title, menu_items: menuItems }) => {
  return (
      <ul>
        {!!Title && <li className="list-title"><h3 style={{fontSize: '21px'}}>{Title}</h3></li>}
        {menuItems.map((item, index) => <NavigationSubMenuItemColumn {...item} key={index}/>)}
      </ul>
  )
}

export default NavigationMenuItemColumn
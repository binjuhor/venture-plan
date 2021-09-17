import React from 'react'
import SingleNavigationMenuItem from './SingleNavigationMenuItem'
import DropdownNavigationMenuItem from './DropdownNavigationMenuItem'

const NavigationMenuItem = (props) => {
  return props.Rows.length === 0
    ? <SingleNavigationMenuItem {...props}/>
    : <DropdownNavigationMenuItem {...props} />
}

export default NavigationMenuItem
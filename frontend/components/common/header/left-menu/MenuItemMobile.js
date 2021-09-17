import React, { useState, useEffect } from 'react'
import {fetchAPI} from '../../../../lib/api'

const MenuItemMobile = ({ Label, id, showSubMenu, itemClass = "" }) => {
  const [subItems, setSubItems] = useState([])

  useEffect(() => {
    _fetchSubMenus()
  }, [])

  const _fetchSubMenus = async () => {
    try {
      const data = await fetchAPI('/sub-menus?id='+id)

      if(data.length > 0) setSubItems(data[0].sub_items)
    } catch (err) {
      console.log(err)
    }
  }

  const _onToggleMenu = (e) => {
    e.preventDefault()

    showSubMenu(Label, subItems)
  }

  return subItems.length > 0
    ? <li className={itemClass}><a href="#" onClick={_onToggleMenu}>{Label}</a></li>
    : <li className={itemClass}><a href="#">{Label}</a></li>
}

export default MenuItemMobile
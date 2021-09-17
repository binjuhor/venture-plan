import React, { useState, useEffect } from 'react'
import {fetchAPI} from '../../../../lib/api'

const MenuItem = ({ Label, id }) => {
  const [subItems, setSubItems] = useState([])
  const [showSubmenu, setShowSubmenu] = useState(false)

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

    setShowSubmenu(!showSubmenu)
  }

  return subItems.length > 0
    ? (
      <li><a href="#" onClick={_onToggleMenu}>{Label}</a>
        <ul style={{ display: showSubmenu ? 'block' : 'none' }}>
          {subItems.map(item => <MenuItem {...item} key={item.id}/>)}
        </ul>
      </li>
    ) : <li><a href="#">{Label}</a></li>
}

export default MenuItem
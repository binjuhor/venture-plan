import React, { useEffect, useState } from 'react'
import {fetchAPI} from '../../../../lib/api'

const NavigationSubMenuItemColumn = ({ Link, Label, id }) => {
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

  return subItems.length === 0
    ? (
      <li>
        <a style={{fontSize: '14px', fontWeight: '200'}} href={Link}>{Label}</a>
      </li>
    ) : (
      <li><a style={{fontSize: '14px', fontWeight: '200'}} href={Link}>{Label}</a>
        <ul>
          {subItems.map(({ Label, Link, id }) => <li key={id}><a style={{fontSize: '14px', fontWeight: '200'}} href={Link}>{Label}</a></li>)}
        </ul>
      </li>
    )
}

export default NavigationSubMenuItemColumn
import React, { useState, useEffect } from 'react'
import _ from 'lodash'
import NavigationMenuItemColumn from './NavigationMenuItemColumn'

const NavigationMenuItemRow = ({ Title, Columns }) => {
  const [hasTitle, setHasTitle] = useState(false)

  useEffect(() => {
    if(Columns.length === 0) {
      setHasTitle(false)
    } else {
      setHasTitle(_.some(Columns, (col) => !!col.Title))
    }
  }, [Columns])

  return (
      <>
        {!!Title && <h3 style={{fontSize: '21px'}} className="menu-name">{Title}</h3>}
        <div className={`sub-menu__list ${!!hasTitle ? 'has-title' : ''}`}>
          {Columns.map((column, index) => <NavigationMenuItemColumn {...column} key={index}/>)}
        </div>
      </>
  )
}

export default NavigationMenuItemRow
import React from 'react'

const SingleNavigationMenuItem = ({ Label, Link, setSubmenuVisible }) => {
  return (
    <li><a href={Link} onMouseOver={() => setSubmenuVisible(null)}>{Label}</a></li>
  )
}

export default SingleNavigationMenuItem
import React from 'react'
import HeaderNavigation from './HeaderNavigation'
import LeftMenu from './LeftMenu'

const Header = ({
  leftMenu,
  headerNavigation,
  headerWhite,
  isMenuActive,
  setIsMenuActive
}) => {
  return (
    <>
      <HeaderNavigation isMenuActive={isMenuActive} setIsMenuActive={setIsMenuActive} data={headerNavigation} headerWhite={headerWhite}/>
      <LeftMenu isMenuActive={isMenuActive} setIsMenuActive={setIsMenuActive} data={leftMenu} />
    </>
  )
}

export default Header;

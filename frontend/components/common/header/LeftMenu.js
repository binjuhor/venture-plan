import React, { useState, useEffect } from 'react'
import { isMobile } from "react-device-detect"
import LeftMenuDesktop from './left-menu/LeftMenuDesktop'
import LeftMenuMobile from './left-menu/LeftMenuMobile'

const subMenus = [
  { label: 'Insights' },
  { label: 'FAQ' },
  { label: 'Contact'},
  { label: 'Offices', sub_menus: [
      {label: 'United States', sub_menus: [
        { label: 'Los Angeles' },
        { label: 'New York'},
        { label: 'Manhattan'},
        { label: 'Chicago'},
        { label: 'Boston'},
        { label: 'Miami'},
        { label: 'Washington DC'}
      ]},
      {label: 'Canada', sub_menus: [
        { label: 'Vancouver'},
        { label: 'Toronto'},
        { label: 'Calgary'},
        { label: 'Montreal'},
      ]},
      {label: 'Germany', sub_menus: [
        { label: 'Berlin'},
        { label: 'Hamburg'},
        { label: 'Munich'},
        { label: 'Frankfurt'},
        { label: 'Stuttgart'},
      ]},
      {label: 'China', sub_menus: [
        { label: 'Beijing'},
        { label: 'Shanghai'},
        { label: 'Guangzhou'},
        { label: 'Shenzhen'},
        { label: 'X’ian'},
        { label: 'Hong Kong'},
      ]},
      {label: 'Britain England', sub_menus: [
        { label: 'London'},
        { label: 'Manchester'},
        { label: 'Birmingham'},
        { label: 'Liverpool'},
        { label: 'Oxford'},
      ]},
      {label: 'Italy', sub_menus: [
        { label: 'Milan'},
        { label: 'Rome'},
        { label: 'Venice'},
      ]},
      {label: 'Spain', sub_menus: [
        { label: 'Madrid'},
        { label: 'Barcelona'},
      ]},
      {label: 'Russia', sub_menus: [
        { label: 'Moscow'},
        { label: 'St. Petersburg'},
        { label: ''},
        { label: ''},
      ]},
      {label: 'Turkey', sub_menus: [
        { label: 'Istanbul'},
      ]},
      {label: 'South Korea', sub_menus: [
        { label: 'Seoul'},
      ]},
      {label: 'Japan', sub_menus: [
        { label: 'Tokyo'},
      ]},
  ]},
]
const languages = [
  {label: 'Global', sub_menus: [
    {label: 'English', image: '/images/country/English.png'},
  ]},
  {label: 'North & South America', sub_menus: [
    {label: 'Brazil (Português)', image: '/images/country/Brazil.png'},
    {label: 'Argentina (Español)', image: '/images/country/Argentina.png'},
    {label: 'Chile (Español)', image: '/images/country/Chile.png'},
    {label: 'Colombia (Español)', image: '/images/country/Colombia.png'}
  ]},
  {label: 'Europe', sub_menus: [
    {label: 'France (Français)', image: '/images/country/France.png'},
    {label: 'Germany / Switzerland (Deutsch)', image: '/images/country/Germany.png'},
    {label: 'Spain (Español)', image: '/images/country/Spain.png'},
    {label: 'Russia (Русский)', image: '/images/country/Russia.png'}
  ]},
  {label: 'Asia & Australia', sub_menus: [
    {label: 'China (中文版)', image: '/images/country/China.png'},
    {label: 'Korea (한국어)', image: '/images/country/Korea.png'},
    {label: 'Japan (日本語)', image: '/images/country/Japan.png'}
  ]}
]

const LeftMenu = ({ isMenuActive, setIsMenuActive, data }) => {
  const [menuItems, setMenuItems] = useState([])
  const [searchTerm, setSearchTerm] = useState('')
  const [searchResult, setSearchResult] = useState([])

  const searchHandler = (searchTerm) => {
    setSearchTerm(searchTerm)
    if (searchTerm !== "") {
      const newMenuItems = menuItems.filter(item => item.Label.toLowerCase().indexOf(searchTerm.toLowerCase()) > -1)
      setSearchResult(newMenuItems)
    } else {
      setSearchResult(menuItems)
    }
  }

  useEffect(() => {
    if(data) setMenuItems(data.menu_items)
  }, [data])

  return (
      <>
        {!!isMobile
        ? (
          <LeftMenuMobile
              isMenuActive={isMenuActive}
              setIsMenuActive={setIsMenuActive}
              menuItems={searchTerm.length < 1 ? menuItems : searchResult }
              subMenus={subMenus}
              languages={languages}              
          />
        ) : (
          <LeftMenuDesktop
            isMenuActive={isMenuActive}
            setIsMenuActive={setIsMenuActive}
            menuItems={searchTerm.length < 1 ? menuItems : searchResult }
            subMenus={subMenus}
            languages={languages}
            term={searchTerm}
            searchKeyword={searchHandler}
          />
        )}
      </>
  )
}

export default LeftMenu
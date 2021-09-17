import React, { useState, useEffect } from 'react'
import { withLocalize } from 'react-localize-redux'
import { useRouter } from 'next/router'
import _ from "lodash"
import { useDispatch, useSelector } from 'react-redux'
import useScrollPosition from '../../custom-hooks/useScrollPosition'
import NavigationMenuItem from './navigation/NavigationMenuItem'
import {toggleOverlay} from '../../../redux/actions/layout'
import {updateRecentSearches} from '../../../redux/actions/search'
import { triggerLeftMenuLanguageMobile } from '../../../redux/actions/layout'
import Link from 'next/link'
import {fetchAPI} from '../../../lib/api'

const HeaderNavigation = ({ isMenuActive, setIsMenuActive, data, headerWhite, setActiveLanguage, activeLanguage }) => {
  const [isSticky, setIsSticky] = useState(false)
  const [isCenterHeader, setIsCenterHeader] = useState(false)
  const [submenuVisible, setSubmenuVisible] = useState(null)
  const [menuItems, setMenuItems] = useState([])
  const [searchVisible, setSearchVisible] = useState(false)
  const [searchInput, setSearchInput] = useState("")
  const [showSearchComplete, setShowSearchComplete] = useState(false)
  const [popularSearches, setPopularSearches] = useState([])
  const recentSearches = useSelector(state => state.search.recentSearches)
  const recentlyVisitedPages = useSelector(state => state.search.recentlyVisitedPages)

  const dispatch = useDispatch()
  const router = useRouter()

  useEffect(() => {
    if(data) setMenuItems(data.menu_items)
  }, [data])

  useEffect(() => {
    _fetchPopularSearches()
  }, [])

  const _fetchPopularSearches = async () => {
    try {
      const data = await fetchAPI('/search-entries?_sort=Count:DESC&_limit=3')

      if(data) setPopularSearches(data)
    } catch (err) {
    }
  }

  const _hideSubmenu = (e) => {
    e.preventDefault()

    setSubmenuVisible(null)
  }

  const _onSearch = (e) => {
    if(searchInput) {
      e.preventDefault()

      dispatch(updateRecentSearches(searchInput))
      dispatch(toggleOverlay(false))
      router.push(`/search?search=${searchInput}`)
    }
  }

  useScrollPosition(({ currPos }) => {
    setIsSticky(currPos.y < -20)
    setIsCenterHeader(currPos.y < -50)
  }, [])

  return (
      <header className={`header home-page 
        ${isSticky ? 'sticky' : ''} 
        ${headerWhite ? 'header-white' : ''} 
        ${searchVisible ? 'show-search' : ''}
        ${showSearchComplete ? 'show-search-complete' : ''}
      `}>
        <div className="header__top " style={{display: isCenterHeader ? 'none' : ''}} >
          <div className="header__container">
            <div className="header__nav-top">
              <ul>
                <li><a href="./insights.html">Insights</a></li>
                <li><a href="#">Reviews</a></li>
                <li><a href="./contact.html">Contact</a></li>
              </ul>
            </div>
            <div className="header__language">
              <ul>
                <li><a href="#" className={`btn-select ${submenuVisible === 'office' ? 'active' : ''}`} data-toggle="office" onClick={(e) => {
                  e.preventDefault()

                  setSubmenuVisible(submenuVisible === 'office' ? null : 'office')
                }}>Offices</a></li>
                <li><a href="#" className={`btn-select ${submenuVisible === 'language' ? 'active' : ''}`} data-toggle="language" onClick={(e) => {
                  e.preventDefault()

                  setSubmenuVisible(submenuVisible === 'language' ? null : 'language')
                }}><span>Language</span> {_.get(activeLanguage, 'name')}</a>
                </li>
              </ul>
            </div>
          </div>
        </div>

        <div className="header__container">
          <div style={{width: isCenterHeader ? '100%' : '', justifyContent: 'space-between'}} className="header__left">
            <a href="#" className={`hamburger ${isMenuActive ? 'active' : ''}`} onClick={() => setIsMenuActive(!isMenuActive)}>
              <span className="hamburger__line" />
            </a>

            <a href="/">
              <figure className="header__logo">
                <img className="logo-white" src="/images/logo-white.svg" alt="Adventure Plan" />
                <img style={{}} className="logo" src="/images/logo.svg" alt="Adventure Plan" />
              </figure>
            </a>

            <div style={{display: isCenterHeader ? 'none' : ''}} >
              <nav className="navigation">
                <ul className="navigation__list">
                  {menuItems.map(item => <NavigationMenuItem {...item} key={item.id} submenuVisible={submenuVisible} setSubmenuVisible={setSubmenuVisible}/>)}
                </ul>

                <div className={`language sub-menu ${submenuVisible === 'language' ? 'active' : ''}`}>
                  <a href="#" className="close" onClick={_hideSubmenu}>&times;</a>
                  <div className="container">
                    <div className="sub-menu__item">
                      <h3 className="menu-name">LANGUAGES</h3>
                      <div className="sub-menu__list">
                        <ul>
                          <li><a href="#">Global</a>
                            <ul>
                              <li>
                                <img src="/images/country/English.png"
                                     alt="" />
                                  <a href="#" onClick={() => setActiveLanguage('en')}>English</a>
                              </li>
                            </ul>
                          </li>

                        </ul>

                        <ul>
                          <li><a href="#">North & South America</a>
                            <ul>
                              <li>
                                <img src="/images/country/Brazil.png"
                                     alt="" />
                                  <a href="#">Brazil (Português)</a>
                              </li>
                              <li>
                                <img src="/images/country/Argentina.png"
                                     alt="" />
                                  <a href="#">Argentina (Español)</a>
                              </li>
                              <li>
                                <img src="/images/country/Chile.png"
                                     alt="" />
                                  <a href="#">Chile (Español)</a>
                              </li>
                              <li>
                                <img src="/images/country/Colombia.png"
                                     alt="" />
                                  <a href="#">Colombia (Español)</a>
                              </li>
                            </ul>
                          </li>

                        </ul>
                        <ul>
                          <li><a href="#">Europe</a>
                            <ul>
                              <li>
                                <img src="/images/country/France.png"
                                     alt="" />
                                  <a href="#" onClick={() => setActiveLanguage('fr')}>France (Français)</a>
                              </li>
                              <li>
                                <img src="/images/country/Germany.png"
                                     alt="" />
                                  <a href="#">Germany / Switzerland
                                    (Deutsch)</a>
                              </li>
                              <li>
                                <img src="/images/country/Italy.png"
                                     alt="" />
                                  <a href="#">Italy (Italiano)</a>
                              </li>
                              <li>
                                <img src="/images/country/Spain.png"
                                     alt="" />
                                  <a href="#">Spain (Español)</a>
                              </li>
                              <li>
                                <img src="/images/country/Russia.png"
                                     alt="" />
                                  <a href="#">Russia (Русский)</a>
                              </li>
                            </ul>
                          </li>
                        </ul>

                        <ul>
                          <li><a href="#">Asia & Australia</a>
                            <ul>
                              <li>
                                <img src="/images/country/China.png" alt="" />
                                <a href="#">China (中文版)</a>
                              </li>
                              <li>
                                <img src="/images/country/Korea.png" alt="" />
                                  <a href="#">Korea (한국어)</a>
                              </li>
                              <li>
                                <img src="/images/country/Japan.png" alt="" />
                                  <a href="#">Japan (日本語)</a>
                              </li>
                            </ul>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>

                <div className={`office sub-menu ${submenuVisible === 'office' ? 'active' : ''}`}>
                  <a href="#" className="close" onClick={_hideSubmenu}>&times;</a>
                  <div className="container">
                    <div className="sub-menu__item">
                      <h3 className="menu-name">Offices</h3>
                      <div className="sub-menu__list">
                        <ul>
                          <li><strong>United States</strong></li>
                          <li><a href="#">Los Angeles</a></li>
                          <li><a href="#">New York</a></li>
                          <li><a href="#">Manhattan</a></li>
                          <li><a href="#">Chicago</a></li>
                          <li><a href="#">Boston</a></li>
                          <li><a href="#">Miami</a></li>
                          <li><a href="#">Washington DC</a></li>
                        </ul>

                        <ul>
                          <li><strong>Canada</strong></li>
                          <li><a href="#">Vancouver</a></li>
                          <li><a href="#">Toronto</a></li>
                          <li><a href="#">Calgary</a></li>
                          <li><a href="#">Montreal</a></li>
                        </ul>

                        <ul>
                          <li><strong>Germany</strong></li>
                          <li><a href="#">Berlin</a></li>
                          <li><a href="#">Hamburg</a></li>
                          <li><a href="#">Munich</a></li>
                          <li><a href="#">Frankfurt</a></li>
                          <li><a href="#">Stuttgart</a></li>
                        </ul>

                        <ul>
                          <li><strong>China</strong></li>
                          <li><a href="#">Beijing</a></li>
                          <li><a href="#">Shangai</a></li>
                          <li><a href="#">Guangzhou</a></li>
                          <li><a href="#">Shenzhen</a></li>
                          <li><a href="#">X’ian</a></li>
                          <li><a href="#">Hong Kong</a></li>
                        </ul>

                        <ul>
                          <li><strong>Britain England</strong></li>
                          <li><a href="#">London</a></li>
                          <li><a href="#">Manchester</a></li>
                          <li><a href="#">Birmingham</a></li>
                          <li><a href="#">Liverpool</a></li>
                          <li><a href="#">OXford</a></li>
                        </ul>

                        <ul>
                          <li><strong>Italy</strong></li>
                          <li><a href="#">Milan</a></li>
                          <li><a href="#">Rome</a></li>
                          <li><a href="#">Venice</a></li>
                        </ul>

                        <ul>
                          <li><strong>Spain</strong></li>
                          <li><a href="#">Madrid</a></li>
                          <li><a href="#">Barcelona</a></li>
                        </ul>

                        <ul>
                          <li><strong>Russia</strong></li>
                          <li><a href="#">Moscow</a></li>
                          <li><a href="#">St. Petersburg</a></li>
                          <li><a href="#">Birmingham</a></li>
                          <li><a href="#">Liverpool</a></li>
                          <li><a href="#">OXford</a></li>
                        </ul>

                        <ul>
                          <li><strong>Turkey</strong></li>
                          <li><a href="#">Istanbul</a></li>
                        </ul>

                        <ul>
                          <li><strong>South Korea</strong></li>
                          <li><a href="#">Seoul</a></li>
                        </ul>

                        <ul>
                          <li><strong>Japan</strong></li>
                          <li><a href="#">Tokyo</a></li>
                        </ul>

                        <ul>
                          <li><strong>Brazil</strong></li>
                          <li><a href="#">Tokyo</a></li>
                        </ul>

                        <ul>
                          <li><strong>Australia</strong></li>
                          <li><a href="#">Tokyo</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </nav>
            </div>

            <div className="mobileLanguage">
              <span>Language</span>
              <span href="#" className="btn-select" onClick={(e) => {
                e.preventDefault()

                dispatch(triggerLeftMenuLanguageMobile())
              }}>English</span>
            </div>

          </div>
          <div className="header__right">
            <a style={{display: isCenterHeader ? 'none' : '' }}  className="btn btn-schedule" href="#">
              <svg xmlns="http://www.w3.org/2000/svg" id="Group_9211"
                   data-name="Group 92" width="19.484"
                   height="22.23"
                   viewBox="0 0 19.484 22.23">
                <defs>
                  <clipPath id="clip-path">
                    <rect id="Rectangle_54" data-name="Rectangle 54"
                          width="19.484" height="22.23" fill="#fff"/>
                  </clipPath>
                </defs>
                <g id="Group_91" data-name="Group 91"
                   clipPath="url(#clip-path)">
                  <path id="Path_128" data-name="Path 128"
                        d="M16.8,2.695h-.672V1.684a1.68,1.68,0,1,0-3.359,0v1.01H6.719V1.684a1.68,1.68,0,1,0-3.359,0v1.01H2.688A2.694,2.694,0,0,0,0,5.389V19.536A2.7,2.7,0,0,0,2.688,22.23H16.8a2.694,2.694,0,0,0,2.688-2.695V5.389A2.693,2.693,0,0,0,16.8,2.695M2.352,7.073H17.133v12.8H2.352Z"
                        transform="translate(0 0)" fill="#fff"/>
                  <rect id="Rectangle_48" data-name="Rectangle 48" width="2.688"
                        height="2.696"
                        transform="translate(8.398 14.482)" fill="#fff"/>
                  <rect id="Rectangle_49" data-name="Rectangle 49" width="2.688"
                        height="2.695"
                        transform="translate(4.031 9.768)" fill="#fff"/>
                  <rect id="Rectangle_50" data-name="Rectangle 50" width="2.688"
                        height="2.696"
                        transform="translate(4.031 14.482)" fill="#fff"/>
                  <rect id="Rectangle_51" data-name="Rectangle 51" width="2.687"
                        height="2.695"
                        transform="translate(12.766 9.768)" fill="#fff"/>
                  <rect id="Rectangle_52" data-name="Rectangle 52" width="2.688"
                        height="2.695"
                        transform="translate(8.398 9.768)" fill="#fff"/>
                  <rect id="Rectangle_53" data-name="Rectangle 53" width="2.687"
                        height="2.696"
                        transform="translate(12.766 14.482)" fill="#fff"/>
                </g>
              </svg>
              <span>Schedule a consultation</span>
            </a>
            <a style={{ display: isCenterHeader ? 'none' : ''}} className="btn btn-hotline" href="tel:18000000000">
              <svg xmlns="http://www.w3.org/2000/svg" width="19.07"
                   height="19.116" viewBox="0 0 19.07 19.116">
                <path id="phone"
                      d="M1.282.707c.763-.765,3.07-.893,3.087-.488s2.077,4.891,2.1,5.3S5.107,7.3,4.7,7.7s2.692,3.9,2.75,3.967,3.559,3.157,3.958,2.757,1.779-1.782,2.181-1.764,4.88,2.082,5.284,2.1.276,2.329-.487,3.094c-.653.654-4.032,3.028-9.907-1.212A18.631,18.631,0,0,1,5.271,13.87l0,0,0,0,0,0,0,0a18.7,18.7,0,0,1-2.768-3.22C-1.739,4.748.63,1.361,1.282.707Z"
                      transform="translate(-0.032 0.006)" fill="#fff"/>
              </svg>
              <span>1-800-000-0000</span>
            </a>
            <div className="search-wrapper">
              <a href="#" onClick={(e) => {
                e.preventDefault()

                dispatch(toggleOverlay(true))
                setSearchVisible(true)
                setTimeout(() => {
                  setShowSearchComplete(true)
                }, 500)
              }}>
                <svg xmlns="http://www.w3.org/2000/svg" width="21.237"
                     height="21.889" viewBox="0 0 21.237 21.889">
                  <path id="Path_111" data-name="Path 111"
                        d="M21.941,14.289a8.4,8.4,0,1,0-1.143,1.04l6.329,6.329a.76.76,0,0,0,.539.231.739.739,0,0,0,.539-.231.783.783,0,0,0,0-1.091ZM8.731,8.512A6.971,6.971,0,1,1,15.7,15.483,6.977,6.977,0,0,1,8.731,8.512Z"
                        transform="translate(-7.19)" fill="#fff"/>
                </svg>
              </a>
            </div>
            <div className="search-content" />
            <div className="header__search" style={{maxWidth: "100%"}} >
              <form action="#" className="search-form" onSubmit={_onSearch}>
                <input
                    className="input-search"
                    type="text"
                    placeholder="Search something"
                    value={searchInput}
                    onChange={(e) => setSearchInput(e.target.value)}
                />
                <button className="search">
                  <svg xmlns="http://www.w3.org/2000/svg" width="21.237"
                       height="21.889" viewBox="0 0 21.237 21.889">
                    <path id="Path_111" data-name="Path 111"
                          d="M21.941,14.289a8.4,8.4,0,1,0-1.143,1.04l6.329,6.329a.76.76,0,0,0,.539.231.739.739,0,0,0,.539-.231.783.783,0,0,0,0-1.091ZM8.731,8.512A6.971,6.971,0,1,1,15.7,15.483,6.977,6.977,0,0,1,8.731,8.512Z"
                          transform="translate(-7.19)" fill="#000" />
                  </svg>
                </button>
                <button className="close-search" onClick={(e) => {
                  e.preventDefault()

                  setShowSearchComplete(false)
                  setTimeout(() => {
                    dispatch(toggleOverlay(false))
                    setSearchVisible(false)
                  }, 500)
                }}>
                  <svg xmlns="http://www.w3.org/2000/svg" width="37"
                       height="37" viewBox="0 0 37 37">
                    <g id="noun_X_2222031" transform="translate(-23 -23)">
                      <path id="Path_7408" data-name="Path 7408"
                            d="M23,26.464,26.464,23,41.477,38.012,56.536,23,60,26.464,44.941,41.477,60,56.536,56.536,60,41.477,44.941,26.464,60,23,56.536,38.012,41.477Z"
                            fillRule="evenodd" />
                    </g>
                  </svg>
                </button>
              </form>
              <div className="search-panel">
                <div className="search-results">
                      <div className="popular-search">
                        <p>Popular Searches</p>
                        <ul>
                          {popularSearches.map(search => (
                              <Link href={`/search?search=${search.Keyword}`} key={search.id}>
                                <li>
                                  <a onClick={() => dispatch(toggleOverlay(false))}>{search.Keyword}</a>
                                </li>
                              </Link>
                          ))}
                        </ul>
                      </div>
                      <div className="previous-search">
                        <p>Your Previous Searches</p>
                        <ul>
                          {recentSearches.map((search, index) => (
                              <li key={index}>
                                <Link href={`/search?search=${search}`}>
                                  <a onClick={() => dispatch(toggleOverlay(false))}>{search}</a>
                                </Link>
                              </li>
                          ))}
                        </ul>
                      </div>
                </div>
                <div className="recent-visisted">
                  <p>Recently Visited Pages</p>
                  <ul>
                    {recentlyVisitedPages.map((page, index) => (
                        <li key={index}>
                          <figure>
                            <img src="/images/history.png" alt="" />
                          </figure>
                          <Link href={page.link}>
                            <a onClick={() => dispatch(toggleOverlay(false))}>{page.name}</a>
                          </Link>
                        </li>
                    ))}
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>
  )
}

export default withLocalize(HeaderNavigation)
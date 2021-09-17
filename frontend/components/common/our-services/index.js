import React, {useState, useEffect} from 'react'
import _ from 'lodash'
import { withLocalize } from 'react-localize-redux'
import {fetchAPI} from '../../../lib/api'
import SelectedService from './SelectedService'

const OurServices = ({ translate, includeHeading = true }) => {
  const [services, setServices] = useState([])
  const [selectedService, setSelectedService] = useState(null)
  const [filteredData, setFilteredData] = useState([])
  const [input, setInput] = useState("")
  const [close, setClose] = useState(false)

  useEffect(() => {
    _fetchServices()
  }, [])

  const _fetchServices = async () => {
    try {
      const data = await fetchAPI('/our-services')

      if(data.length > 0) {
        setServices(data)
        setSelectedService(data[0])
      }
    } catch (err) {
      setServices([])
    }
  }

  const resetInput = () => {
    setClose(false)
    setInput('')
  }

  useEffect(() => {
    if(input) {
      setFilteredData(
          services.filter(({ Name }) =>
              Name.toLowerCase().includes(input.toLowerCase())
          )
      )
    } else {
      setFilteredData(services)
    }
  }, [input, services])

  return services.length > 0
    ? (
      <section className="video search-padding">
         <div className="anchorSection" id={'grant-types'}></div>
        {!!includeHeading && (
            <div className="section__heading">
              <h3><u>{translate("t.our")} <span>{translate("t.services")}</span></u></h3>
            </div>
        )}

        <div className="container">
          <div className="video__inner">
            <div className="video__search">
              <div className="search-group ">
                <div className="searchInput">
                  <input
                      type="text"
                      id="search"
                      placeholder="Search"
                      value={input}
                      onChange={(e) => {
                        const value = e.target.value
                        setInput(value)
                        value.length?setClose(true):setClose(false)
                      }}
                  />
                  {close && <span onClick={resetInput}>
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14">
                      <g id="Group_1683" data-name="Group 1683" transform="translate(-368.513 -359.513)">
                        <g id="Group_1664" data-name="Group 1664">
                          <circle id="Ellipse_3982" data-name="Ellipse 3982" cx="7" cy="7" r="7" transform="translate(368.513 359.513)"/>
                          <g id="Group_1662" data-name="Group 1662" transform="translate(371.873 363.892)">
                            <path id="Path_8036" data-name="Path 8036" d="M0,0,1.595.095,2.134,9.18.539,9.085Z" transform="translate(-0.361 0.13) rotate(-45)" fill="#fff"/>
                            <path id="Path_8037" data-name="Path 8037" d="M0,0,1.595-.095,1.056,8.991l-1.595.095Z" transform="translate(6.445 -0.931) rotate(45)" fill="#fff"/>
                          </g>
                        </g>
                      </g>
                    </svg>
                  </span>}
                </div>
                <div className="search-group__list">
                  <ul id="search-list">
                    {filteredData.map((service, index) => (
                        <li
                            key={index}
                            className={_.get(selectedService, 'Name') === service.Name ? 'active' : ''}
                        >
                          <a href="#" onClick={(e) => {
                            e.preventDefault()

                            setSelectedService(service)
                          }}>{service.Name}</a>
                        </li>
                    ))}
                  </ul>
                </div>
              </div>
            </div>

            {!!selectedService && <SelectedService {...selectedService}/>}
          </div>

          {!!includeHeading && (
             <div className="video__bottom">
             <a href="#" className="btn btn-primary">{translate("t.book_a_consultation")}</a>
           </div>
        )}
        </div>
      </section>
  ) : null
}

export default withLocalize(OurServices)

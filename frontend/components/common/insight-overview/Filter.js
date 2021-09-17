import React, {Fragment} from 'react'
import { withLocalize } from 'react-localize-redux'

const Filter = ({ onCloseFilter, translate, filterOptions, selectedFilterOptions, setSelectedFilterOptions }) => {
  return (
      <section className="filter">
        <div className="filter__inner">
          <img className="filter__logo" src="/images/logo.svg" alt="Adventure Plan"/>
          <a href="#" className="filter__close" onClick={(e) => {
            e.preventDefault()

            onCloseFilter()
          }}>
            <svg xmlns="http://www.w3.org/2000/svg" width="9.428"
                 height="9.393" viewBox="0 0 9.428 9.393">
              <path id="icons8_multiply"
                    d="M13.331,12.281l-1.05,1.05,3.669,3.646-3.669,3.646,1.05,1.05L17,18.028l3.669,3.646,1.039-1.05-3.658-3.646,3.658-3.646-1.039-1.05L17,15.928Z"
                    transform="translate(-12.281 -12.281)" fill="#888"/>
            </svg>
          </a>

          <div className="filter__content">
            <h3>{translate("t.filter_insights")}</h3>
            {Object.keys(filterOptions).map(type => (
                <Fragment key={type}>
                  <h4>{type}</h4>
                  <div className="checkbox-list">
                    {filterOptions[type].map(({ id, Name }) => (
                        <div className="checkbox-group" key={id}>
                          <input
                              type="checkbox"
                              id={id}
                              name={`${type}[]`}
                              value={Name}
                              onClick={() => {
                                const isSelected = selectedFilterOptions.indexOf(id) !== -1

                                setSelectedFilterOptions(
                                    isSelected
                                    ? selectedFilterOptions.filter(option => option !== id)
                                    : [...selectedFilterOptions, id]
                                )
                              }}
                          />
                          <label htmlFor={id}>{Name}</label>
                        </div>
                    ))}
                  </div>
                </Fragment>
            ))}
          </div>
        </div>
      </section>
  )
}

export default withLocalize(Filter)
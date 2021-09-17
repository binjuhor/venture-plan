import React from 'react'

const Value = ({ Title, Content, index }) => {

  return (
    <div className="core-value__item">
      <div className="core-value__title">
        <div className="core-value__title--text">{Title}</div>
        <span>{index + 1}</span>
      </div>
      <div className="core-value__description">
        <p>{Content}</p>
      </div>
    </div>
  )
}

export default Value
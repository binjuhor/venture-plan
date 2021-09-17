import React from 'react'

const Value = ({ Title, Content }) => {

  return (
    <article className="culture__item">
      <div className="culture__item--inner">
        <h3>{Title}</h3>
        <p>{Content}</p>
      </div>
    </article>
  )
}

export default Value
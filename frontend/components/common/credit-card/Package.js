import React from 'react'
import {getFileSource} from '../../../utils/functions'

const Package = ({ Name, Description, Image, Price, isSelected, onSelectPackage }) => {

  return (
      <div
          className="credit-card__box"
          style={{ backgroundColor: isSelected ? 'black' : 'transparent'}}
          onClick={onSelectPackage}
      >
        <h3>{Name}</h3>
        <div className="credit-card__box--info">
          <img src={getFileSource(Image)} alt={""} width="51.887" height="66.416"/>

          <p>{Description}</p>
          <div className="credit-card__box--price">
            <p><sup>$</sup>{Price}<br /></p>
          </div>
        </div>
      </div>
  )
}

export default Package
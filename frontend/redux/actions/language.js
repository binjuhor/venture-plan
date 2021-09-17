import * as types from '../types'

export const changeLanguage = (language) => dispatch => {
  dispatch({
    type: types.CHANGE_LANGUAGE,
    language: language,
  })
}
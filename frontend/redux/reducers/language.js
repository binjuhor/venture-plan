import * as types from '../types'

const initializeState = 'en'

const language = (state = initializeState, action) => {
  switch (action.type) {
    case types.CHANGE_LANGUAGE:
      return action.language
    default:
      return state
  }
}

export default language
import * as types from '../types'

const initializeState = {
  overlay: false,
  scrollPopup: false,
  alreadyShownScrollPopup: false,
  triggerLeftMenuLanguageMobile: null
}

const language = (state = initializeState, action) => {
  switch (action.type) {
    case types.TOGGLE_OVERLAY:
      return {
        ...state,
        overlay: action.status
      }
    case types.TOGGLE_SCROLL_POPUP:
      return {
        ...state,
        scrollPopup: action.status
      }
    case types.ALREADY_SHOWN_SCROLL_POPUP:
      return {
        ...state,
        alreadyShownScrollPopup: true
      }
    case types.TRIGGER_LEFT_MENU_LANGUAGE_MOBILE:
      return {
        ...state,
        triggerLeftMenuLanguageMobile: new Date()
      }
    default:
      return state
  }
}

export default language
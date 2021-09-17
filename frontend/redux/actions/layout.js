import * as types from '../types'

export const toggleOverlay = (status) => dispatch => {
  dispatch({
    type: types.TOGGLE_OVERLAY,
    status
  })
}

export const toggleScrollPopup = (status) => dispatch => {
  dispatch({
    type: types.TOGGLE_SCROLL_POPUP,
    status
  })
}

export const alreadyShownScrollPopup = () => dispatch => {
  dispatch({ type: types.ALREADY_SHOWN_SCROLL_POPUP })
}

export const triggerLeftMenuLanguageMobile = () => dispatch => {
  dispatch({ type: types.TRIGGER_LEFT_MENU_LANGUAGE_MOBILE })
}
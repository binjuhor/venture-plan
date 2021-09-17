import {combineReducers} from 'redux'
import storage from 'redux-persist/lib/storage'
import language from './language'
import layout from './layout'
import search from './search'
import { persistReducer } from 'redux-persist'

const layoutConfig = {
  key: 'layout',
  storage,
  blacklist: ['overlay', 'scrollPopup', 'triggerLeftMenuLanguageMobile']
}

const rootReducer = combineReducers({
  language: language,
  layout: persistReducer(layoutConfig, layout),
  search: search
})

export default rootReducer
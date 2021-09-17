import {useEffect} from 'react'
import { useSelector, useDispatch } from 'react-redux'
import {toggleScrollPopup, alreadyShownScrollPopup as shownScrollPopup } from '../../redux/actions/layout'

const useScrollPopup = () => {
  const dispatch = useDispatch()
  const alreadyShownScrollPopup = useSelector(state => state.layout.alreadyShownScrollPopup)
  const scrollPopup = useSelector(state => state.layout.scrollPopup)

  useEffect(() => {
    if(!scrollPopup) {
      window.onscroll = () => {
        if(!alreadyShownScrollPopup) {
          if(window.pageYOffset > 1000) {
            dispatch(toggleScrollPopup(true))
            dispatch(shownScrollPopup())
          }
        }
      }
    }

    return () => (window.onscroll = null);
  }, [scrollPopup])
}

export default useScrollPopup
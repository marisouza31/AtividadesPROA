import {BrowserRouter as Router, Routes, Route} from 'react-router-dom'
import Header from './components/Header'
import Home from './components/Home'
import Footer from './components/Footer'
import Escocia from './components/Escocia'
import Aruba from './components/Aruba'
import GrandCanyon from './components/GrandCanyon'
import MuralhaDaChina from './components/MuralhaDaChina'


import './App.css'

function App() {
  

  return (
    <main>
      <Router>
        <Header/>
        <Routes>
          <Route path='/' element={<Home/>} />
           <Route path='/Escocia' element={<Escocia/>} />
            <Route path='/GrandCanyon' element={<GrandCanyon/>} />
            <Route path='/MuralhaDaChina' element={<MuralhaDaChina/>} />
            <Route path='/Aruba' element={<Aruba/>} />
        </Routes>
        <Footer/>
      </Router>
    </main>
  )
}

export default App

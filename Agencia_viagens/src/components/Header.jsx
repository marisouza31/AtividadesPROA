import {Link} from 'react-router-dom'
import Style from './css/Header.module.css'
import logo from '../assets/Img/viagens.jpg'
import lupa from '../assets/Img/lupa.png'

function Header (){
    return(
     <header>
        <img src={logo} className={Style.logo} alt="Logo_viagens" />
        <nav className={Style.navegacao}>
            <Link to='/'>Home</Link>
            <Link to='/Escocia'>Escocia</Link>
            <Link to='/GrandCanyon'>Grand Canyon</Link>
             <Link to='/MuralhaDaChina'>Muralha Da China</Link>
              <Link to='/Aruba'>Aruba</Link>
           
        </nav>
        <div className={Style.busca}>
            <input type="text" />
        </div>

        <img src={lupa} className={Style.lupa} alt="lupa" />

        
     </header> 
    )
}


export default Header
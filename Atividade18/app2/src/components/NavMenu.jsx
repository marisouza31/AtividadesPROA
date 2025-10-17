import React from 'react';
import styles from '../styles/NavMenu.module.css';

const NavMenu = () => {
  return (
    <nav className={styles.menu}>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Quem Somos</a></li>
        <li><a href="#">Instrumentos</a></li>
        <li><a href="#">Endereço</a></li>
        <li><a href="#">Contato</a></li>
      </ul>
    </nav>
  );
};

export default NavMenu;

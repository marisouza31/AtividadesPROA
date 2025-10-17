import React from 'react';
import styles from '../styles/Header.module.css';
import NavMenu from './NavMenu';
import guitarras from '../assets/guitarras_header.jpg'

const Header = () => {
  return (
    <header className={styles.cabecalho}>
      <NavMenu />
      <img src={guitarras} alt="guitarras header" />
    </header>
  );
};

export default Header;

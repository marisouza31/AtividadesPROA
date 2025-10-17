import React from 'react';
import styles from './App.module.css';

import Header from '../src/components/Header';
import SectionProdutos from '../src/components/SectionProdutos';
import SectionMaps from '../src/components/SectionMaps';
import SectionContato from '../src/components/SectionContato';
import Footer from '../src/components/Footer';

function App() {
  return (
    <main className={styles.main}>
      <Header />
      <SectionProdutos />
      <SectionMaps />
      <SectionContato />
      <Footer />
    </main>
  );
}

export default App;

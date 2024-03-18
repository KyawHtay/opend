import React from "react";
import Header from "./Header";
import Footer from "./Footer";
import "bootstrap/dist/css/bootstrap.min.css";

import Item from "../components/Item"
import Minter from "./Minter";

function App() {

  //const NFTID="rrkah-fqaaa-aaaaa-aaaaq-cai";
  return (
    <div className="App">
      <Header />

      {/*<Item id={NFTID}/>*/}
      <Minter />
      <Footer />
    </div>
  );
}

export default App;

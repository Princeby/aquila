import logo from './logo.svg';
import './App.css';
import { useContext } from 'react';
import { TransactionContext } from './context/TransferFundContext';

function App() {
  const { connectWallet, currentAccount } = useContext(TransactionContext);
  
  return (
    <>
      <div>
        <input value={currentAccount}/>
        <input placeholder='Account Number' type='text'/>
        <input placeholder='Bank' type='text'/>
        <input placeholder='Password' type='password'/>
      </div>

      

    
    
    </>
  );
}

export default App;

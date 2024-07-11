import { FiservTransaction } from 'fiserv-transaction';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    FiservTransaction.echo({ value: inputValue })
}

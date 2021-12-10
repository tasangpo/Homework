import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {num1: "", num2: "", result: 0 };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
  }

  render(){
    return (
      <div> 
        <h1>{this.state.result}</h1>
        <input onChange={this.setNum1} value={this.num1}/>
        <input onChange={this.setNum2} value={this.num2} />
      </div> 
      
    );
  }

  setNum1(e) {
    const num1 = parseInt(e.value)
    this.setState({ num1 });
  }
  setNum2(e) {
    const num2 = parseInt(e.value)
    this.setState({ num2 });
  }


}

export default Calculator;

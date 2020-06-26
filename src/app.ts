// Create a function that will return the datatype parameter.
const typeOfParamameter = (p) => {
    return typeof(p)
}
console.log("1. Create a function that will return the datatype parameter")
console.log(typeOfParamameter("hello"))

//Create a function that will take in a variable number of arguments and return their product
const variableNumberArgs = (...arguments) => {
    let product = 1
    arguments.forEach(a => {
        //product*=a
        console.log(product*=a)
    })
    //OR
    //for(let i =1; i <arguments.length;i++) {
    //    console.log(product*=arguments[i])
    //}

    console.log("returning product from variableNumberArgs")
    return product
}
console.log("2. Create a function that will take in a variable number of arguments and return their product")
console.log(variableNumberArgs(2,2,3,1,4))

//Create a function that iterates over an integer array and returns their sum
const returnIntArraySum = () => {
    const intArr = [2,2,3,1,4]
    let total =0
    intArr.forEach(a => {
        console.log(a)
        total+=a
    })
    console.log("returning integer array sum")
    return total
}
console.log("3. Create a function that iterates over an integer array and returns their sum")
console.log(returnIntArraySum())

/*Create a function that, given an integer, can raise each digit to the power of 
the overall length and return whether the sum of the powers is equal to the original integer*/
const raiseLengthPower = (integer) => {
    let splitInteger = integer.toString().split('')
    let intArray = []
    let powers = []
    let sumPowers = 0
    //Split original integer into char array
    console.log(splitInteger)
    //Parse char array to int
    splitInteger.forEach(i => {
        intArray.push(parseInt(i))
    })
    console.log("integer array: "+ intArray)
    intArray.forEach(i => {
        powers.push(i**=integer.toString().length)
    })
    console.log("raise each digit to the power of overall length")
    powers.forEach(i => {
        sumPowers += i
    })
    console.log(powers)
    console.log("sum of the powers")
    console.log(sumPowers)
    console.log(sumPowers +" is equal to " + integer)
    console.log("returning wether the sum of the powers equal the original integer")
    return sumPowers===integer
}
console.log(raiseLengthPower(333))
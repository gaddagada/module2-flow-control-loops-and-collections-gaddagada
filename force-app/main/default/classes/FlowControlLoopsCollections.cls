/**
* This is the FlowControlLoopsCollections class, part of the Developer Kickstart Module 2 curriculum
* at Cloud Code Academy. This class focuses on flow control, loops, and collections in Apex programming.
* The class provides a comprehensive understanding of various flow control structures, including if statements,
* jump statements, and loops like for loops. It also covers working with collections such as lists and maps.
*
* Topics covered in this class include:
* - Understanding and using if statements to make conditional decisions in code execution.
* - Using jump statements like break and continue to control the flow of execution in loops and switch statements.
* - Working with for loops to iterate over a set of elements in Apex.
* - Understanding collections and using lists and maps to store and manipulate data.
*
* This class is designed for developers who have a basic understanding of Apex and want to deepen their knowledge
* in flow control, loops, and collections. By mastering these concepts, developers will be able to write more
* efficient and effective code in their Salesforce projects.
*
* @author Gayathri Addagada 
*/

public with sharing class FlowControlLoopsCollections {
    
    /**
     * Question 1
     * Compares two numbers and return "Hello World!" if x is greater than the y.
     * If either of the numbers is null or x is less than y, return null.
     * Example: helloWorld(40, 10) should return "Hello World!"
     * @param x The first number.
     * @param y The second number.
     * @return "Hello World!" if x greater than y, otherwise return null.
     */
    public static String helloWorld(Integer x, Integer y) {
        // Check if either of the numbers is null.  If so, return null.  Otherwise, compare the two numbers and return "Hello World!" if the first number is greater than the second,
        if(x > y){
            return 'Hello World!';
        }else {
            return null;
        }
    }

    /**
     * Question 2
     * Checks if a person is eligible to vote based on their age.
     * A person is eligible to vote if they are 18 years old or older.
     * If the age is less than 18, the method will return false.
     * Example: votingEligibility(18) should return true
     * @param age The age of the person.
     * @return true if the person is eligible to vote, false otherwise.
     */
    public static Boolean votingEligibility(Integer age) {
        // Check if the age is null.  If so, return null.  Otherwise, compare the age to 18 and return true if the age is 18 or older, otherwise return
        if(age >= 18){
            return true;
        }else{
            return false;
        }   
    }

    /**
     * Question 3
     * Finds the maximum of two numbers.
     * If both numbers are equal, it returns that number.
     * Example: findMax(58, 200) should return 200
     * @param num1 The first number.
     * @param num2 The second number.
     * @return The maximum of the two numbers, or null if either number is null.
     */
    public static Integer findMax(Integer num1, Integer num2) {
        // if both numbers are equal
        Integer largestNum = null;
        // Check if either number is null.  If so, set the largestNum to null.  Otherwise, compare the two numbers and assign the larger number to largestNum
        if(num1 == null || num2 == null){
            return null;
        }
        // Compare the two numbers and assign the larger number to largestNum
        if(num1 > num2){
            largestNum = num1;
        } else {
            largestNum = num2;
        }
        // Return the largest number
        return largestNum;
    }


    /**
     * Question 4
     * Checks if a number is positive, negative, or zero.
     * If the number is null, return null.
     * Example: checkNumber(5) should return "Positive"
     * @param a The number to check.
     * @return A string indicating whether the number is "Positive", "Negative", or "Zero", or null if the number is null.
     */
    public static String checkNumber(Integer a) {
        // Initialize grade variable  as an empty string  to store the grade  as a string  (not a number)  in Apex code.  This is necessary because Apex does not support
        String isNumPositiveNegativeZero = '';
        // Check if the input number is null.  If so, set the grade to null.  Otherwise, check if the number is positive, negative, or zero.  If the number is positive
        if(a == null){
            isNumPositiveNegativeZero =  null;
        }else if (a > 0){
            isNumPositiveNegativeZero = 'Positive';
        }else if(a < 0){
            isNumPositiveNegativeZero = 'Negative';
        }else if(a == 0){
            isNumPositiveNegativeZero = 'Zero';
        }
        return isNumPositiveNegativeZero;
    }

    /**
     * Question 5
     * Checks if a number is even or odd.
     * If the number is null, return null.
     * Example: checkEvenOdd(2) should return "Even"
     * @param a The number to check.
     * @return A string indicating whether the number is "Even" or "Odd", or null if the number is null.
     */
    public static String checkEvenOdd(Integer a) {
        // Initialize grade variable  as an empty string  to store the grade  as a string  (not a number)  in Apex code.  This is necessary because Apex does not support
        if(a == null){
            return null;
        }else if (math.mod(a, 2) == 0){
            return 'Even';
        }else{
            return 'Odd';
        }
    }

    /**
     * Question 6
     * Checks if a string is empty, null, or contains text.
     * Example: checkString("") should return "Empty"
     * @param a The string to check.
     * @return A string indicating whether the input is "Empty", "Null", or "Contains Text".
     */
    public static String checkString(String a) {
        // Initialize grade variable  as an empty string  to store the grade  as a string  (not a number)  in Apex code.  This is necessary because Apex does not support
        if(a == null){
            return 'Null';
        }else if(a == ''){
            return 'Empty';
        }else{
            return 'Contains Text';
        }
    }

    /**
     * Question 7
     * Determines the grade based on the score.
     * Grade A if score is greater than or equal to 90.
     * Grade B if score is greater than or equal to 80.
     * Grade C if score is greater than or equal to 70.
     * Grade D if score is greater than or equal to 60.
     * Grade F otherwise.
     * Example: determineGrade(85) should return "B"
     * @param score The score.
     * @return The grade for the given score.
     */
    public static String determineGrade(Integer score) {
        // Initialize grade variable  as an empty string  to store the grade  as a string  (not a number)  in Apex code.  This is necessary because Apex does not support
        String grade = '';
        // Use an if-else statement to determine the grade based on the score
        if(score > = 90){
            grade = 'A';
        }else if(score >= 80){
            grade = 'B';
        }else if(score >= 70){
            grade = 'C';
        } else if(score >= 60){
            grade = 'D';
        } else{
            grade = 'F';
        } 
        // Return the final grade as a string  (not a number)  after the if-else statement
        return grade;
    }


    /**
     * Question 8
     * Sum all the integers up to a given limit.
     * Example: sumUpToLimit(5) should return 15
     * @param intLimit The number up to which integers will be summed.
     * @return The sum of all integers up to the limit.
     */
    public static Integer sumUpToLimit(Integer intLimit) {
        // Initialize sum variable 
        Integer sum = 0;  
        // Use a for loop to add each integer from 0 to intLimit to the sum variable
        for (Integer i = 1; i <= intLimit; i++){
            // Add the current integer to the sum variable
            sum += i;
        }
        // Return the final sum variable
        return sum;
    }

    /**
     * Question 9
     * Generate String "Hello World!" three times, with each occurrence separated by a semicolon.
     * Example: returnHelloWorld() should return "Hello World!; Hello World!; Hello World!; "
     * @return The string "Hello World!; Hello World!; Hello World!; "
     */
    public static String returnHelloWorld() {
        // Initialize the result String
        String result = '';
        // Use a for loop to append 'Hello World!;' to the result string three times
        for (Integer i = 0; i < 3; i++) {
            result += String.valueOf('Hello World!') + '; ';
        }

        // Return the final result string
        return result;
    }

    /**
     * Question 10
     * Generate a string where the input string is repeated the given number of times, with each
	 * repetition separated by a semicolon. 
     * Do not add a semicolon after the last repetition.
	 * Example: repeatString("Hello World!", 3) should return "Hello World!; Hello World!; Hello World!"
     * @param inputString The string to be repeated.
     * @param repeatCount The number of times the string should be repeated.
     * @return The new string with the inputString repeated repeatCount times.
     */
    public static String repeatString(String inputString, Integer repeatCount) {
        // Initialize the result String
        String result = '';
    
        // Use a for loop to append the inputString to the result string repeatCount times
        for (Integer i = 0; i < repeatCount; i++) {
            result += inputString;
    
            // Only add a semicolon if it's not the last repetition
            if(i != repeatCount - 1) {
                result += '; ';  // No space before the semicolon
            }
        }
    
        // Return the final result string
        return result;
    }

    /**
     * Question 11
     * Creates a List of integers and adds the integers 1, 2, and 3 to it.
     * Example: createAndPopulateList() should return [1, 2, 3]
     * @return A List of integers containing the numbers 1, 2, and 3.
     */
    public static List<Integer> createAndPopulateList() {
        // Create a new list of integers
        List<Integer> populateNumberList = new List<Integer>();
        // Add the integers 1, 2, and 3 to the list
        // add 1
        populateNumberList.add(1);
        // add 2
        populateNumberList.add(2);
        // add 3
        populateNumberList.add(3);


        // Return the populated list
        return populateNumberList; // Replace null with the variable you used to store the result
    }

    /**
     * Question 12
     * Creates a List of integers and adds the integers from 1 to 5. Then it removes the number 3 from the list.
     * Example: createAndRemoveFromList() should return [1, 2, 4, 5]
     * @return A List of integers from 1 to 5, excluding the number 3.
     */
    public static List<Integer> createAndRemoveFromList() {
        // Create a new list of integers and add numbers 1 to 5
        List<Integer> numberList = new List<Integer>{1, 2, 3, 4, 5}; //DO NOT CHANGE

        // Remove the 3rd element (number 3) from the list
        numberList.remove(2);

        // Return the modified list
        return numberList;
    }

    /**
     * Question 13
     * Create a list filled with integers based on the input parameter.
     * Example: createIntegerList(5) should return [1, 2, 3, 4, 5] 
     * @param n The last integer in the List.
     * @return A List of integers from 1 to 'n'.
     */
    public static List<Integer> createIntegerList(Integer n) {
        // Create a new list of integers 
            List<Integer> integerList = new List<Integer>();
        
        for(Integer i = 0 ; i < n; i++) {
            //add integer to the list
            integerList.add(i + 1);
        }

        // Return the list of integers
        return integerList; // Replace null with the variable you used to store the result
    }

    /**
     * Question 14
     * Remove duplicate values from the list of Strings.
     * The returned Set contains the unique strings from the input List.
     * Example: createStringSet(['a', 'b', 'a', 'c']) should return ['a', 'b', 'c']
     * @param inputList The List of strings.
     * @return A Set of unique strings.
     */
    public static Set<String> createStringSet(List<String> inputList) {
        // Create a new Set of strings
        Set<String> stringSet = new Set<String>();

        //add strings to the set
        for(String str : inputList){
            stringSet.add(str);
        }

        // Return the set of unique strings  (replace null with the variable you used to store the result)
        return stringSet; 
    }

    /**
     * Question 15
     * Iterates over a list of integers and sums only the positive integers.
     * Example: sumPositiveIntegers() should return 12
     * @return The sum of positive integers from the list.
     */
    public static Integer sumPositiveIntegers() {
        List<Integer> numbers = new List<Integer>{-1, 2, -3, 4, -5, 6}; //DO NOT CHANGE

        Integer sumOfPositiveIntegers = 0;
        // Loop through the list of integers
            for(Integer i = 0; i < numbers.size(); i++){
                // if the number is negative skip this iteration of the loop
                if(numbers[i] < 0){
                    continue;
                // if the number is positive add it to the sum of positive integers
                }else if(numbers[i] > 0){
                    sumOfPositiveIntegers += numbers[i];
                }
            }
            return sumOfPositiveIntegers;
    }   
    

    /**
     * Question 16
     * Iterates over a list of strings and searches for a specific word. Once found, it breaks the loop.
     *  Example: findWordInList("World", ['Hello', 'World', 'Goodbye']) should return 1
     * @param wordToFind The word to find in the list.
     * @param words The list of words to search.
     * @return The position of the word in the list as a string or -1 if the word was not found.
     */
    public static Integer findWordInList(String wordToFind, List<String> words) {
        // The variable to store the index of the word
        Integer indexOfWord = 0;

        // Loop through the list of words
        for(String currentWord : words){
            // If the current word is the word to find, exit the loop
            if(currentWord.equals(wordToFind)){
                return indexOfWord;
            }
            // Increment the index 
            indexOfWord++;
        }

        // If word is not found in list 
        return -1; 
    }

    /**
     * Question 17
     * Loop through the list of money and adds them up until it accumulates more than 40 and then stops counting.
     * The change values are in cents and the total is to be calculated in dollars.
     * Example: countMoney() should return 48.02
     * @return The total value in dollars, stopped at the point when it exceeds 40 dollars.
     */
    public static Decimal countMoney() {
        // The list of money in the wallet, represented in dollars and cents
        List<Decimal> moneyInWallet = new List<Decimal>{0.50, 10, 3.84, 24.60, 9.08, 50, 4.90}; //DO NOT CHANGE

        // The total amount of money in the wallet
        Decimal totalMoney = 0;

        for(Integer i = 0; i < moneyInWallet.size(); i++){
            // Add the money to the total
            totalMoney += moneyInWallet[i];
            // If the total is greater than 40 dollars, stop counting
            if(totalMoney > 40){
                break;
            }
        }
        return totalMoney; 
    }

    /**
     * Question 18
     * Create a map that has five key-value pairs to the map, where the keys are the names of fruits and the values are their quantities.
     * Example: addItemsToMap() should return "Apples => 5, Oranges => 10, Bananas => 15, Pears => 20, Grapes => 25"
     * @return The Map of fruits and their quantities.
     */
    public static Map<String, Integer> addItemsToMap() {
        // Initialize an empty Map
        Map<String, Integer> fruitMap = new Map<String, Integer>();
        // Add key-value pairs to the Map
        // add Apples => 5
        fruitMap.put('Apples', 5);
        // add Oranges => 10
        fruitMap.put('Oranges', 10);
        // add Bananas => 15
        fruitMap.put('Bananas', 15);
        // add Pears => 20
        fruitMap.put('Pears', 20);
        // add Grapes => 25
        fruitMap.put('Grapes',25);

        return fruitMap; 
    }

    /**
     * Question 19
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then returns the salary of the employee whose name is specified.
     * Example: getSalary("John Doe") should return 50000
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_map.htm#apex_System_Map_get
     * @param employeeName The name of the employee.
     * @return The salary of the employee, or null if the employee is not found in the Map.
     */
    public static Integer getSalary(String employeeName) {
        // Initialize a Map where employee names are keys and their salaries are values
        Map<String, Double> employeeNameSalaryMap = new Map<String, Double>();

        // Add key-value pairs to the Map
        // add John Doe => 50000
        employeeNameSalaryMap.put('John Doe', 50000);
        // add Jane Smith => 60000
        employeeNameSalaryMap.put('Jane Smith', 60000);
        // add Sam Brown => 55000
        employeeNameSalaryMap.put('Sam Brown', 55000);
        // add Alice Johnson => 65000
        employeeNameSalaryMap.put('Alice Johnson', 65000);

        // Get the salary of the employee
        Double employeeSalary = employeeNameSalaryMap.get(employeeName);

        // Return the salary as an Integer, or null if employee is not found
        return (employeeSalary != null) ? employeeSalary.intValue() : null;
    }

    /**
     * Question 20
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then, iterates over the map and checks if an employee's salary is more than 55000.
     * If it is, add the employee's name to a list of employees that is returned by the method.
     * Remember that a Map is a collection of key-value pairs. Key are a set of unique values, so you can't have duplicate keys. Values are a list of values, so you can have duplicate values.
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_for_lists.htm
     * Example: getHighPaidEmployees() should return ['Jane Smith', 'Alice Johnson']
     * @return A list of employee names who have a salary more than 55000.
     */
    public static List<String> getHighPaidEmployees() {
        // Initialize a Map
        Map<String, Integer> employeeSalaries = new Map<String, Integer>();

        // Add key-value pairs to the Map
        // add John Doe => 50000
        employeeSalaries.put('John Doe', 50000);
        // add Jane Smith => 60000
        employeeSalaries.put('Jane Smith', 60000);
        // add Sam Brown => 55000
        employeeSalaries.put('Sam Brown', 55000);
        // add Alice Johnson => 65000
        employeeSalaries.put('Alice Johnson', 65000);

        // Initialize a list to store the names of high paid employees
        List<String> highPaidEmployees = new List<String>(); 

        // Iterate over the Map using a for loop
        for(String employeeName : employeeSalaries.keySet()) {
            // Check if the salary of the employee is more than 55000
                // Add the employee to the list of high paid employees
            if(employeeSalaries.get(employeeName) > 55000) {
                highPaidEmployees.add(employeeName);
            }
        }
        
        // Return the list of high paid employees
        return highPaidEmployees; 
    }

}
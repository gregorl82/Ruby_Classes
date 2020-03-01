<h1>Ruby Classes</h1>
<h2>Learning Objectives</h2>
<ul>
<li>Create your own class</li>
<li>Create multiple objects</li>
<li>Add some properties</li>
<li>Use accessors</li>
<li>Add some methods and behaviours</li>
<li>Get methods and behaviours to interact with properties</li>
</ul>
<h3>Part A</h3>
<p>Make a class that represents a CodeClan student.</p>
<ul>
<li>Create a class called Student that takes in a name (String) and a cohort (string - e.g “E18”, “G6”, etc) when an new instance is created.</li>
<li>Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.</li>
<li>Add in Setter methods to update the students name and what cohort they are in.</li>
<li>Create a method that gets the student to talk (eg. Returns “I can talk!).</li>
<li>Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> “I love Ruby”).</li>
</ul>
<h3>Part B</h3>
<p>Make a class that represents a sports team.</p>
<ul>
<li>Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).</li>
<li>For each property in the class make a getter method than can return them.</li>
<li>Create a setter method to allow the coach’s name to be updated.</li>
<li>Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.</li>
<li>Create a method that adds a new player to the players array.</li>
<li>Add a method that takes in a string of a player’s name and checks to see if they are in the players array.</li>
<li>Add a points property into your class that starts at 0.</li>
<li>Create a method that takes in whether the team has won or lost and updates the points property for a win.</li>
</ul>
<h3>Extensions</h3>
<p>Model a Library as a class.</p>
<ul>
<li>Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.</li>
<li>Create a getter for the books</li>
<li>Create a method that takes in a book title and returns all of the information about that book.</li>
<li>Create a method that takes in a book title and returns only the rental details for that book.</li>
<li>Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)</li>
<li>Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it’s due to be returned.</li>
</ul>

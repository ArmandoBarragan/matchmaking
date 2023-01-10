# Matchmaking backend API
<p>This application is meant to manage player's levels and divisions and to 
use an algorithm to have a party of one or more players matched versus 
another party of the same amount of people based on their division.
This project is currently not meant to be deployed.</p>

<h2>Installation</h2>

<h2>Design</h2>

<h3>Architecture</h3>
This project will need three servers: One for the database, one for the
waiting_room service, and one for the users service.

<h3>Use cases</h3>

<b>User</b>
<ul>
<li>The user wants to create an account.</li>
<li>The user wants to log in.</li>
<li>The user wants to log out.</li>
<li>The user wants to change their profile.</li>
<li>The user wants to delete their account.</li>
</ul>

<b>Player</b>
<ul>
<li>The player wants to create a room.</li>
<li>The player wants to invite someone to the room.</li>
<li>The player wants to accept an invitation to a room.</li>
<li>The player wants to exit a room.</li>
<li>The player wants their party to be matched against another party.</li>
<li>The player wants to cancel the match making.</li>
</ul>

<b>System</b>
<ul>
<li>The player ends a match and gets XP.</li>
<li>The player ends a ranked game and gets or loses MMR.</li>
</ul>

<h3>Algorithms needed.</h3>
<ul>
<li>Get party's average division: Calculate party's average division to compare it later on with another party's avg_division so that they can be matched.</li>
<li>Match party: Find a party that is on the waiting room and has a similar</li>
<li>Calculate gained XP: This method is called whenever a game ends. It calculates how much XP a player gained from a game.</li>
<li>Check if level up: Checks the XP required table to know if the player can level up.</li>
</ul>

<h3>Models</h3>
<b>Player</b>
<ul>
<li>Id: Primary Key.</li>
<li>Username: String.</li>
<li>Email: String.</li>
<li>Email verified: Boolean</li>
<li>Password: String.</li>
<li>Level: Integer.</li>
<li>Division: String ('Bronze', 'Silver', 'Gold').</li>
<li>MMR: Integer.</li>
</ul>

<b>Friendship</b>
<ul>
<li>Player 1: Foreign Key (Player), Primary Key</li>
<li>Player 2: Foreign Key (Player), Primary Key</li>
</ul>

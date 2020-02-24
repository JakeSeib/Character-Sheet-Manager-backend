# Character Sheet Manager

### About

This is a full-stack web application, with which users can create, edit, and update character sheets for the [Fate Core](https://www.evilhat.com/home/fate-core-downloads/) tabletop roleplaying system, whose rulebook is available via a pay-what-you-like system.

Sign in via the [client](https://jakeseib.github.io/Character-Sheet-Manager-client/) and use the options on the navbar at the top to see your existing characters, or create a new character. While viewing existing characters, you can select an individual character to view more details about them, or edit their information. No fields are required for characters, since Fate is a very flexible system with regard to character creation, particularly for NPCs (Non-Player Characters).

Currently, only aspects for characters are implemented, and characters have a maximum of 5 aspects.

### Further documentation

For more details on the app, as well as documentation on planning, see also the [client repository](https://github.com/JakeSeib/Character-Sheet-Manager-client), the [deployed API](https://floating-gorge-61213.herokuapp.com/) (not very interesting to view in the browser), and the [planning directory](https://github.com/JakeSeib/Character-Sheet-Manager-backend/tree/master/planning), which includes wireframes, an ERD, and user stories used in planning.

### Technologies Used

- **Ruby on Rails**: Backend RESTful API
- **Javascript**: Frontend
- **PostgreSQL**: Database
- **Handlebars**: View rendering
- **jQuery**: Event handling and DOM manipulation
- **AJAX**: API calls for user authentication as well as CRUDing characters
- **Heroku**: API deployment/hosting
- **Grunt**: Frontend deployment to Github pages
- **GitHub**: Version control

### Development Process

Work on the app took place over the course of 4 days. The MVP for the app involved a very simple version of characters (only name and aspects, all strings) and was achieved in approximately 2 days. Basic templates for both the client and rails API were provided by General Assembly.

Most notably, the rails API template provided pre-constructed routes for user authentication and pre-constructed controller classes to prevent user actions on resources not belonging to them. While read access to resources not belonging to a user was permitted within the project's requirements, this app only allows users to view resources that they own.

### How could this be improved?

- The user message for a successful character deletion remains on the screen until the page is reloaded, the user signs out, or an unsuccessful character deletion occurs. Feedback to the user could be better when deleting multiple characters- currently, the same message remains statically on the screen.
- Error messages for the user do not always contain relevant information on what caused the error. For example, the same stock message is displayed whenever signing up fails, though it would be possible to check whether password and password confirmation match or not and inform the user of the specific problem if they do not.
- Characters are currently very simple, and not usable in a game of Fate without more complexity. At a minimum, they would need a way to store skills and stunts. Other parts of a character (stress, consequences, extras) usually reset at the end of a play session and could be tracked outside of the app, though ideally would be included as well.
- An excellent additional feature for an app like this would be automatic, semi-random character creation. This feature would be very useful to GMs (Game Masters) running a session of Fate who need quick access to a basic character template for an NPC who is unlikely to stick around for very long, but still needs a skill array and a way to track stress/consequences.
  - Optionally, this feature could also allow a user to declare some basic information about an NPC (what sorts of skills they have, and how powerful they are) to make a randomized NPC that better fits the GM's needs

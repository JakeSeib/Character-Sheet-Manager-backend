# Character Sheet Manager

### About

This is a full-stack web application, with which users can create, edit, and update character sheets for the [Fate Core](https://www.evilhat.com/home/fate-core-downloads/) tabletop roleplaying system, whose rulebook is available via a pay-what-you-like system.

Sign in via the [client](https://jakeseib.github.io/Character-Sheet-Manager-client/) and use the options on the navbar at the top to see your existing characters, or create a new character. While viewing existing characters, you can select an individual character to view more details about them, or edit their information. No fields are required for characters, since Fate is a very flexible system with regard to character creation, particularly for NPCs (Non-Player Characters).

Currently, only aspects and skills for characters are implemented, and characters have a maximum of 5 aspects. Skills are selected from a pre-defined set (slightly different than the base rulebook's).

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

### API End Points

| Verb   | URI Pattern       | Controller#Action   |
|--------|-------------------|---------------------|
| POST   | `/sign-up`        | `users#signup`      |
| POST   | `/sign-in`        | `users#signin`      |
| DELETE | `/sign-out`       | `users#signout`     |
| PATCH  | `/change-password`| `users#changepw`    |
| GET    | `/characters`     | `characters#index`  |
| GET    | `/characters/:id` | `characters#show`   |
| POST   | `/characters`     | `characters#create` |
| PATCH  | `/characters/:id` | `characters#update` |
| DELETE | `/characters/:id` | `characters#destroy`|
| GET    | `/skills`         | `skills#index`      |
| GET    | `/skills/:id`     | `skills#show`       |
| POST   | `/skills`         | `skills#create`     |
| PATCH  | `/skills/:id`     | `skills#update`     |
| DELETE | `/skills/:id`     | `skills#destroy`    |
| GET    | `/character_skills`     | `character_skills#index`  |
| GET    | `/character_skills/:id` | `character_skills#show`   |
| POST   | `/character_skills`     | `character_skills#create` |
| PATCH  | `/character_skills/:id` | `character_skills#update` |
| DELETE | `/character_skills/:id` | `character_skills#destroy`|

Production url: 'https://floating-gorge-61213.herokuapp.com/'

Routes for characters and character_skills require a token, and only work for characters owned by the associated user. All data returned from API actions is formatted as JSON.

## Set Up
### Dependencies
-   [rails-api-template](https://git.generalassemb.ly/ga-wdi-boston/rails-api-template)

### Local Environment
1. Install dependencies (`bundle install`)
2. Create a .env for sensitive settings (`touch .env`)
3. Generate new development and test secrets (`bundle exec rails secret`)
4. Store secrets in .env with keys as `SECRET_KEY_BASE_<DEVELOPMENT|TEST>` respectively (development only if intending to deploy your own API)

### Local Database
```
- bin/rails db:drop (if it already exists)
- bin/rails db:create
- bin/rails db:migrate
- bin/rails db:seed
- bin/rails db:examples
```

### Launch Local Server
Run `bin/rails server` or `bundle exec rails server`

### Further documentation

For more details on the app, as well as documentation on planning, see also the [client repository](https://github.com/JakeSeib/Character-Sheet-Manager-client), and the [planning directory](https://github.com/JakeSeib/Character-Sheet-Manager-backend/tree/master/planning), which includes wireframes, an ERD, and user stories used in planning.

### Development Process

Work on the app took place over the course of 4 days. The MVP for the app involved a very simple version of characters (only name and aspects, all strings) and was achieved in approximately 2 days. The latter 2 days were primarily spent on skills and character_skills, as well as UX improvements, such as asking for confirmation to delete a character.

Most notably, the rails API template provided pre-constructed routes for user authentication and pre-constructed controller classes to prevent user actions on resources not belonging to them. While read access to resources not belonging to a user was permitted within the project's requirements, the only resource this app allows users to view that they do not own are skills (which cannot be owned by users).

Basic templates for both the client and express API were provided by General Assembly. See LICENSE for legal information on use of this template.

### How could this be improved?

- The user message for a successful character deletion remains on the screen until the page is reloaded, the user signs out, or an unsuccessful character deletion occurs. Feedback to the user could be better when deleting multiple characters- currently, the same message remains statically on the screen.
- Error messages for the user do not always contain relevant information on what caused the error. For example, the same stock message is displayed whenever signing up fails, though it would be possible to check whether password and password confirmation match or not and inform the user of the specific problem if they do not.
- A full character sheet in Fate Core includes a few additional features that would be helpful to include: stunts, consequences, stress, and extras. None of these would be particularly difficult to add: stunts and consequences are simply text, and stress does not need to be stored in the database, since it resets at the end of a scene.
- If users are anticipated to have many character sheets, pagination for displaying them would be a good idea, as would being able to filter the results (by character name, for instance).
- The UI for the skills table could be improved; currently it is simple, but manageable. If more skills were added, it would become very cumbersome.
- There is no way to edit the skills stored in the database via the app. Skills are mostly static in Fate, but some users may want to customize the skills their characters use.
- An excellent additional feature for an app like this would be automatic, semi-random character creation. This feature would be very useful to GMs (Game Masters) running a session of Fate who need quick access to a basic character template for an NPC who is unlikely to stick around for very long, but still needs a skill array and a way to track stress/consequences.
  - Optionally, this feature could also allow a user to declare some basic information about an NPC (what sorts of skills they have, and how powerful they are) to make a randomized NPC that better fits the GM's needs.

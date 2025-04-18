# Number Guessing Game

## 📌 Project Overview
This is a Bash script-based number guessing game built for FreeCodeCamp's Relational Databases project. Users try to guess a randomly generated number while their game statistics (total games played and best score) are stored in a PostgreSQL database.

## ⚡ Features
- Generates a random number between **1 and 1000** for users to guess.
- Tracks user statistics, including **games played** and **best score**.
- Stores returning users' information in a **PostgreSQL database**.
- Provides instant feedback on guesses and ensures input is a **valid integer**.
- Fully compliant with **FreeCodeCamp project requirements**.

## 🛠 Setup Instructions
### 1️⃣ Clone the Repository
```bash
git clone <your-repository-url>
cd number_guessing_game
```

### 2️⃣ Clone the Repository
```bash
sudo apt update
sudo apt install postgresql postgresql-contrib
```

### 3️⃣ Create the Database
Run:
```bash
psql --username=freecodecamp --dbname=postgres -f number_guess.sql
```

### 4️⃣ Give Execution Permission
```bash
chmod +x number_guess.sh
```

### 5️⃣ Run the Game
```bash
./number_guess.sh
```

### 📂 Project Structure
```
├── number_guessing_game/
│   ├── number_guess.sh    # Main script file
│   ├── number_guess.sql   # Database schema + seed data
│   ├── README.md          # Project documentation
```

## 💡 How It Works
- **User Input:** The script prompts users for a **username**.
- **Database Check:** If the user exists, their stats are **retrieved**.
- **Game Logic:** Users attempt to **guess the secret number**.
- **Results Storage:** The database is updated with the latest **game results**.
- **Victory Message:** Once guessed, a message shows the total **number of attempts**.

## ✅ FreeCodeCamp Project Requirements Met
- ✔ **Username prompt**  
- ✔ **Stored returning user data**  
- ✔ **Random number generation**  
- ✔ **Integer validation**  
- ✔ **User-friendly experience**  

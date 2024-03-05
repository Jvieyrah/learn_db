import sqlite3

def main():
    # Connect to SQLite database (or create it if it doesn't exist)
    conn = sqlite3.connect('example.db')

    # Create a cursor object using the cursor() method
    cursor = conn.cursor()

    # Create table
    cursor.execute('''CREATE TABLE IF NOT EXISTS person
                      (id INTEGER PRIMARY KEY, name TEXT, age INTEGER)''')

    # Insert sample data
    cursor.execute("INSERT INTO person (name, age) VALUES ('Alice', 30)")
    cursor.execute("INSERT INTO person (name, age) VALUES ('Bob', 25)")

    # Commit the changes
    conn.commit()

    # Selecting all persons
    cursor.execute("SELECT * FROM person")
    print("All persons:")
    for row in cursor.fetchall():
        print(row)

    # Close the connection
    conn.close()

if __name__ == "__main__":
    main()



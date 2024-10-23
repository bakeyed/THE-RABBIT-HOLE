#!/bin/bash

sleep 2
cmatrix -C green &
CMATRIX_PID=$!
sleep 5
kill $CMATRIX_PID

clear

# Display the main text
echo "  _____ _   _ _____      ____      _    ____  ____ ___ _____"
echo " |_   _| | | | ____|   |  _ \\   / \\  | __ )| __ )_ _|_   _|"
echo "   | | | |_| |  _|     | |_) |  / _ \\ |  _ \\|  _ \\| |  | |"
echo "   | | |  _  | |___    |  _ <  / ___ \\| |_) | |_) | |  | |"
echo "   |_| |_| |_|_____|   |_| \\_\\/_/   \\_\\____/|____/___| |_|"
echo ""
echo " _   _  ___  _     _____"
echo "| | | |/ _ \\| |   | ____|"
echo "| |_| | | | | |   |  _|"
echo "|  _  | |_| | |___| |___"
echo "|_| |_|\\___/|_____|_____|"
echo ""
echo "THE RABBIT HOLE"

sleep 1

echo "Welcome to the System, Neo

Greetings. I've been expecting you. I am Morpheus, and you've just taken your first step into a larger world. The system you've accessed is unlike anything you've 
encountered before. Here, you'll need to master the fundamental tools of hackers and cybersecurity specialists to uncover the truth.

Your Mission

You've always known something wasn't quite right with the world around you. Now it's time to see how deep the rabbit hole goes. Throughout this challenge, you'll need 
to navigate through various systems, discover hidden flags, and unveil the truth piece by piece 

Rules of Engagement

1. Each level contains a hidden flag in the format: FLAG{xxxxxxxx}
2. Document your progress - knowledge is power
3. If you get stuck, remember: "Free your mind"

Remember, Neo: The truth is out there, hidden in plain sight waiting for you to glance over

Ready to begin? Show me how deep the rabbit hole goes.

Type ssh level1@localhost -p 2222 to begin the challenge!"

# Sleep for a moment before displaying the rabbit
sleep 1

# ASCII drawing of a rabbit
echo "      \\   "
echo "       \\\ _   "
echo "        ( _\    "
echo "        / \\__    "
echo "       / _/      "
echo "      {\\  )_     "
echo "trh    \"\"\"\"      "


#!/bin/bash
# Prompt the user for the name of the HTML file
read -p "Enter the name of the HTML file (e.g., index.html): " html_file

# Generate the HTML content using a here document
cat <<EOF > "$html_file"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple HTML Page</title>
</head>
<body>
    <h1>Welcome to My Simple HTML Page</h1>
    <p>This is a paragraph of text generated using a Bash script.</p>
    <ul>
        <li>Item 1</li>
        <li>Item 2</li>
        <li>Item 3</li>
    </ul>
</body>
</html>
EOF

# Confirm that the file has been created
echo "HTML file '$html_file' has been created successfully."

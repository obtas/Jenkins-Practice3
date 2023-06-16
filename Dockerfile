# Use Python 3.6 or later as a base image
FROM nodejs:latest

# Copy contents into image
COPY . .

# # Install the requirements.txt
# RUN pip install -r requirements.txt

# Install npm
RUN npm install

# Expose the correct port
EXPOSE 5000

# Open app
ENTRYPOINT [ "npm", "start" ]
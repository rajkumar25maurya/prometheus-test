FROM ubuntu:latest

RUN sudo apt update -y
RUN sudo apt install curl wget net-tools -y
RUN sudo apt install python3-pip -y
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install -r requirements.txt
# Run app.py when the container launches
CMD ["python3", "counter.py", "--host=0.0.0.0", "--port=8000"]
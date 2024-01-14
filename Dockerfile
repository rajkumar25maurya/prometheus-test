FROM ubuntu:latest

RUN apt update -y
RUN apt install  apt-utils curl wget net-tools -y
RUN apt install python3-pip -y
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install -r requirements.txt
# Run app.py when the container launches
CMD ["python3", "counter.py", "--host=0.0.0.0", "--port=8000"]
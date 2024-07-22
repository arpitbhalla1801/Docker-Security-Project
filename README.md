# Docker-Security-Project


This project evaluates the effectiveness of Docker in enhancing the security of web applications by simulating cyber-attacks on a baseline (non-Dockerized) and a Dockerized website. Below are the key components, setup instructions, and testing methods used in the project.

## 1. Project Setup

### 1.1. Software and Tools

- **Docker**: Container platform
  - Install: [Docker Install Guide](https://docs.docker.com/get-docker/)
- **WSL (Windows Subsystem for Linux)**: Linux environment on Windows
  - Install: [WSL Install Guide](https://docs.microsoft.com/en-us/windows/wsl/install)
- **Python**: Hosting web server
  - Install: `sudo apt-get install python3`
- **hping3**: DDoS attack simulation
  - Install: `sudo apt-get install hping3`
- **Task Manager**: Resource monitoring on Windows

### 1.2. Project Structure
/my-docker-project
│
├── app/
│ ├── index.html
│ ├── styles.css
│ └── script.js
├── Dockerfile
└── README.md

### 1.3. Hosting the Website
- Non-Dockerized: python3 -m http.server 8000
- Dockerized:
`docker build -t my-web-app .`
`docker run -d -p 80:80 my-web-app`

2. Testing and Attack Simulation
2.1. Baseline Testing (Non-Dockerized)
2.1.1. Performance and Availability
Open browser: http://localhost:8000
Monitor using Task Manager for CPU and network usage
2.1.2. DDoS Attack Simulation (hping3)
`sudo hping3 -S --flood -V http://localhost:8000`
2.1.3. Ping Flood Attack
`ping -f http://localhost:8000`
2.2. Dockerized Testing
2.2.1. Performance and Availability
Open browser: http://localhost:8080
Monitor using Task Manager for CPU and network usage
2.2.2. DDoS Attack Simulation (hping3)
`sudo hping3 -S --flood -V http://localhost:8080`
2.2.3. Ping Flood Attack
`ping -f http://localhost`
3. Results
3.1. Baseline (Non-Dockerized)
CPU Usage: Observed high CPU spikes under attack
Network Usage: Significant network traffic, leading to service disruption
3.2. Dockerized
CPU Usage: Improved CPU management and lower spikes
Network Usage: Better handling of network traffic, maintaining service availability
4. Conclusion
Docker provides enhanced security and resource management for web applications, effectively mitigating the impact of DDoS and ping flood attacks by isolating the application environment and optimizing resource allocation.

# Usage
Clone the repository:
`git clone https://github.com/yourusername/my-docker-project.git`
Navigate to the project directory:
`cd my-docker-project`
Build and run the Docker container:
`docker build -t my-web-app .`
`docker run -d -p 80:80 my-web-app`
Test and monitor performance as described above.


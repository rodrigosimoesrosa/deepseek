# DeepSeek r1:7b & phi3:mini – Web UI with Docker

This project provides a Dockerized environment to run the **DeepSeek R1** language model using **Ollama** and a clean, responsive **Web UI** interface.

---

## 🚀 Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

---

## 🛠 Getting Started

1. **Clone the repository**:
   ```bash
   git clone https://github.com/rodrigosimoesrosa/deepseek.git
   cd deepseek
   ```

2. **Build and launch the services**:
   ```bash
   docker-compose up --build
   ```

3. **Access the Web UI**:  
   Open your browser and navigate to [http://localhost:3000](http://localhost:3000)

---

## 📁 Project Structure

- `entrypoint.sh`: Initializes Ollama and downloads the DeepSeek model.
- `Dockerfile`: Sets up the environment for Ollama.
- `compose.yaml`: Defines the multi-container setup using Docker Compose.

---

## 🧩 Services

- **Ollama**: Hosts the DeepSeek model for inference.
- **Web UI**: Provides a user-friendly interface for interacting with the model.

---

## 💾 Volumes

- `ollama`: Persists model and runtime data for Ollama.
- `open-webui`: Persists state and configuration for the Web UI.

---

## 🌐 Models

- [deepseek-r1:7b](https://ollama.com/library/deepseek-r1:7b)
- [phi3:mini](https://ollama.com/library/phi3:mini)

---

## ⚙️ Environment Variables

| Variable           | Description                                    |
|--------------------|------------------------------------------------|
| `OLLAMA_KEEP_ALIVE` | Keeps the Ollama service alive for 24 hours.  |
| `OLLAMA_HOST`       | Defines the host address for Ollama service.  |

---

## 🔌 Ports

| Port  | Service    |
|-------|------------|
| 11434 | Ollama     |
| 3000  | Web UI     |

---

## 📦 Deployment Notes

The `compose.yaml` includes configurations for:
- Resource limits
- Persistent volumes
- Service orchestration

---

## 🙏 Acknowledgements

- [Ollama](https://ollama.com/)
- [Open Web UI](https://github.com/open-webui/open-webui)
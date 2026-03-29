# 🛡️ Secure Nginx GitOps Pipeline

A production-ready **DevSecOps CI/CD pipeline** designed to build, scan, and deploy a secure Nginx-based portfolio website. This project demonstrates the "Shift Left" security approach by integrating automated vulnerability scanning and linting directly into the deployment workflow.

## 🚀 Key Features

* **Automated CI/CD:** Powered by GitHub Actions for seamless delivery.
* **Security Scanning (SAST):** Uses **Semgrep** to find patterns that lead to security bugs.
* **Container Security:** Integrated **Trivy** to scan Docker images for CVEs (Common Vulnerabilities and Exposures).
* **Dockerfile Linting:** Uses **Hadolint** to ensure best practices and "pinned" image versions.
* **Containerization:** Optimized **Nginx Alpine** images for a small, secure attack surface.
* **Automated Registry Push:** Securely pushes verified images to **Docker Hub**.

## 🏗️ The Pipeline Architecture

The pipeline follows a strict "Gatekeeper" logic on every `push` to the `Dev` branch and `pull_request` to `main`:

1.  **Lint:** Checks Dockerfile for syntax and best practices.
2.  **SAST:** Scans the repository for potential security leaks.
3.  **Build:** Generates a local Docker image.
4.  **Vulnerability Scan:** Trivy checks the image layers for vulnerabilities (e.g., `zlib`, `openssl`).
5.  **Push:** Upon success, the image is tagged and pushed to Docker Hub.

## 🛠️ Tech Stack

| Tool | Purpose |
| :--- | :--- |
| **Docker** | Containerization & Nginx Hosting |
| **GitHub Actions** | CI/CD Automation |
| **Trivy** | Container Vulnerability Scanning |
| **Hadolint** | Dockerfile Best Practices |
| **Semgrep** | Static Application Security Testing |
| **Nginx** | High-performance Web Server |

Maintained by: Ramu

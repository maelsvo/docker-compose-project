# Docker Compose Project Guide

This guide explains how to run and manage Docker Compose services in this project.

## Prerequisites

- Docker Engine installed (version 20.10.0 or higher)
- Docker Compose V2 installed
- Git (for cloning the repository)

## Installation & Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/maelsvo/docker-compose-project.git
   ```

## Usage

### Basic Docker Compose Commands

1. Start all services:
   ```bash
   docker compose up
   ```

3. Stop all services:
   ```bash
   docker compose down
   ```

4. View running services:
   ```bash
   docker compose ps
   ```


## Notes

- The compose.yaml files contain all services definitions
- Environment variables are set in a ".env" file
<div align="center">

# 🤖 Airbnb AI Customer Support Assistant

### An intelligent customer support chatbot powered by Google's Gemini 1.5 Pro

[![Node.js](https://img.shields.io/badge/Node.js-18+-green.svg)](https://nodejs.org/)
[![React](https://img.shields.io/badge/React-18.3-blue.svg)](https://reactjs.org/)
[![Gemini](https://img.shields.io/badge/Gemini-1.5%20Pro-orange.svg)](https://ai.google.dev/)
[![License](https://img.shields.io/badge/License-ISC-blue.svg)](LICENSE)

[Features](#-features) • [Installation](#-installation) • [Configuration](#-configuration) • [Usage](#-usage) • [Tech Stack](#-tech-stack)

</div>

---

## 📋 Overview

The **Airbnb AI Customer Support Assistant** is an advanced AI-powered chatbot designed to revolutionize customer support experiences. Built with Google's Gemini 1.5 Pro, it provides intelligent, personalized assistance for Airbnb-related inquiries, delivering instant responses with professional accuracy.

## ✨ Features

- 🤖 **AI-Powered Assistance** - Powered by Google Gemini 1.5 Pro for intelligent, context-aware responses
- 🌍 **Multi-Language Support** - Global accessibility with support for multiple languages
- 💬 **Markdown Formatting** - Clear, engaging, and well-formatted replies for better readability
- 📝 **Feedback Mechanism** - Continuous improvement through user feedback collection
- 🎯 **Comprehensive FAQ Handling** - Addresses common concerns and frequently asked questions
- ⚡ **Real-time Responses** - Fast and efficient customer support interactions
- 🔒 **Secure Authentication** - Firebase-based user authentication system

## 🖼️ Preview

<div align="center">

<img src="assets/1.png" alt="Preview 1" width="280" style="margin: 10px; border-radius: 8px;">
<img src="assets/2.png" alt="Preview 2" width="280" style="margin: 10px; border-radius: 8px;">
<img src="assets/3.png" alt="Preview 3" width="280" style="margin: 10px; border-radius: 8px;">

<img src="assets/4.png" alt="Preview 4" width="280" style="margin: 10px; border-radius: 8px;">
<img src="assets/5.png" alt="Preview 5" width="280" style="margin: 10px; border-radius: 8px;">
<img src="assets/6.png" alt="Preview 6" width="280" style="margin: 10px; border-radius: 8px;">

</div>

---

## 🚀 Installation

### Prerequisites

Before you begin, ensure you have the following installed:

- [Node.js](https://nodejs.org/en) (version 18 or higher)
- npm (comes with Node.js)
- Google API Key (for Gemini 1.5 Pro)
- Firebase API Key

### Step 1: Clone the Repository

```bash
git clone https://github.com/ZaynAliShan/Airbnb-AI-Customer-Support.git
cd Airbnb-AI-Customer-Support
```

### Step 2: Install Dependencies

Install dependencies for the root, backend, and frontend:

```bash
# Install root dependencies
npm install

# Install backend dependencies
cd backend
npm install
cd ..

# Install frontend dependencies
cd frontend
npm install
cd ..
```

---

## ⚙️ Configuration

### Environment Variables Setup

1. **Create `.env` file in the root directory:**

```env
API_KEY=your_google_api_key_here
```

2. **Create `.env.local` file in the `frontend` directory:**

```env
REACT_APP_FIREBASE_API_KEY=your_firebase_api_key_here
```

> ⚠️ **Note:** Replace `your_google_api_key_here` and `your_firebase_api_key_here` with your actual API keys.

### Getting API Keys

- **Google API Key:** Get your Gemini API key from [Google AI Studio](https://makersuite.google.com/app/apikey)
- **Firebase API Key:** Set up a Firebase project and get your API key from the [Firebase Console](https://console.firebase.google.com/)

---

## 💻 Usage

### Starting the Application

Once you've completed the installation and configuration steps, start the application:

```bash
npm start
```

This command will simultaneously start:
- 🎨 **Frontend** - React application (usually runs on `http://localhost:3000`)
- 🔧 **Backend** - Express server (usually runs on `http://localhost:5000`)

### Accessing the Application

Open your browser and navigate to:
```
http://localhost:3000
```

---

## 🛠️ Tech Stack

### Frontend
- **React** - UI library
- **React Router DOM** - Routing
- **Bootstrap** - Styling framework
- **Firebase** - Authentication

### Backend
- **Node.js** - Runtime environment
- **Express** - Web framework
- **Google Generative AI** - Gemini 1.5 Pro integration
- **Firebase** - Database and authentication

### AI & ML
- **Google Gemini 1.5 Pro** - Advanced AI language model

---

## 📁 Project Structure

```
Airbnb-AI-Customer-Support/
├── backend/
│   ├── server.js          # Express server and API routes
│   └── package.json       # Backend dependencies
├── frontend/
│   ├── public/            # Public assets
│   ├── src/
│   │   ├── components/    # React components
│   │   ├── css/           # Stylesheets
│   │   └── App.js         # Main app component
│   └── package.json       # Frontend dependencies
├── assets/                # Screenshots and images
└── package.json           # Root package configuration
```

---

## 👨‍💻 Developer

**Zain Ali**

- GitHub: [@ZaynAliShan](https://github.com/ZaynAliShan)
- Profile: https://github.com/ZaynAliShan

---

## 📄 License

This project is licensed under the ISC License.

---

<div align="center">

**Made with ❤️ by [Zain Ali](https://github.com/ZaynAliShan)**

⭐ Star this repo if you find it helpful!

</div>

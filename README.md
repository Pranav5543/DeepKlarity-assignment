# 🧠 AI Wiki Quiz Generator

<div align="center">

![AI-Powered](https://img.shields.io/badge/AI-Powered-blue?style=for-the-badge&logo=openai)
![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white)
![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)

**An intelligent quiz generation platform that transforms Wikipedia articles into engaging quizzes using AI.**

[🚀 Live Demo]()

</div>

---

## ✨ Features

### 🎯 Smart Quiz Generation
- **AI-Powered Questions** using **Google Gemini 2.5 Flash**
- **Multiple Difficulty Levels** — Easy, Medium, and Hard
- **Comprehensive Coverage** with 8 contextual questions per quiz

### 📚 Wikipedia Integration
- **Real-time Scraping** using BeautifulSoup
- **Smart Content Processing** to identify key entities and topics
- **URL Validation** ensuring only valid Wikipedia articles are accepted

### 🎮 Interactive Experience
- **Real-time Quiz Interface** with immediate feedback
- **Detailed Explanations** for each question
- **Progress Tracking** and scoring system

### 📊 Advanced Capabilities
- **Quiz History Management** — View, search, and filter past quizzes
- **Performance Statistics Dashboard**
- **Responsive Design** for all devices

---

## 🏗️ Architecture

### 🧩 Backend (FastAPI)
- **Framework**: FastAPI with async/await support  
- **Database**: PostgreSQL with SQLAlchemy ORM & Alembic migrations  
- **AI Integration**: Google Gemini 2.5 Flash via LangChain  
- **Web Scraping**: BeautifulSoup for Wikipedia content  
- **API Docs**: Auto-generated Swagger (`/docs`) and ReDoc (`/redoc`)

### ⚛️ Frontend (React)
- **Framework**: React 18 with modern hooks  
- **Styling**: Tailwind CSS with animations  
- **State Management**: React Context + Custom Hooks  
- **HTTP Client**: Axios with error handling  
- **Icons**: Lucide React icon library  

---

## 🚀 Quick Start

### 🧰 Prerequisites
- Python 3.8+
- Node.js 16+
- PostgreSQL (local or Neon)
- Gemini API key

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/yourusername/ai-wiki-quiz-generator.git
cd ai-wiki-quiz-generator
```

### 2️⃣ Backend Setup

cd backend
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
pip install -r requirements.txt
cp env.example .env  # then update with your configs
python main.py

### 3️⃣ Frontend Setup
cd frontend
npm install
npm start

### 4️⃣ Access

Frontend: http://localhost:3000

Backend API: http://localhost:8000

API Docs: http://localhost:8000/docs

## 🔧 Configuration

Create a .env file inside backend/:

# Database Configuration
```
DATABASE_URL=postgresql://username:password@localhost:5432/quiz_db
```
# Gemini API
```
GEMINI_API_KEY=your_gemini_api_key_here
```
# App Settings
```
DEBUG=True
LOG_LEVEL=INFO

```
### 📱 Usage
🔹 Generate a Quiz

🔹 Paste any Wikipedia article URL

🔹 Click Generate

🔹 Take the AI-generated quiz with instant feedback

🔹 Review your score and see detailed explanations

# Try these:

🔹 Artificial Intelligence

🔹 Machine Learning

🔹 Quantum Computing

🔹 Climate Change

### 📊 API Endpoints
## Quiz Endpoints
~~~
POST /api/quiz/generate – Generate quiz from Wikipedia URL

POST /api/quiz/validate-url – Validate Wikipedia URL

GET /api/quiz/{id} – Get specific quiz
~~~
## History Endpoints
~~~
GET /api/history/ – List past quizzes

GET /api/history/{id} – Get detailed quiz info

DELETE /api/history/{id} – Delete quiz

GET /api/history/stats/summary – Get user statistics
~~~
### 🧱 Project Structure
~~~
ai-wiki-quiz-generator/
├── backend/
│   ├── main.py
│   ├── database.py
│   ├── routers/
│   │   ├── quiz_router.py
│   │   └── history_router.py
│   └── services/
│       ├── llm_service.py
│       └── wikipedia_scraper.py
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   ├── services/
│   │   └── App.js
│   └── public/
└── sample_data/
~~~
### 🧪 Testing & Code Quality
# Backend
~~~cd backend
pytest
flake8 .
black .
~~~
# Frontend
~~~
cd frontend
npm test
npm run lint
npm run format
~~~
### 🐳 Deployment
Docker
~~~
docker-compose up --build -d
~~~
Vercel (Frontend)
~~~
vercel --prod
~~~
Manual Backend
~~~
gunicorn -w 4 -k uvicorn.workers.UvicornWorker main:app
~~~
### 🔒 Security

🔹Input validation & sanitization

🔹CORS protection

🔹Rate limiting

🔹Secure error handling

🔹HTTPS enforcement in production

🔹Environment-based secret management

### 📈 Performance
Metric	Average
Quiz Generation	3–5 seconds
API Response	< 200 ms
DB Queries	Indexed & optimized
Frontend Load	< 2 seconds

### 📜 License

This project is licensed under the MIT License.

<div align="center">

Built with ❤️ by Pranav

</div> 

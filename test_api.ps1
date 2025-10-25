# Test script for AI Wiki Quiz Generator API

Write-Host "Testing AI Wiki Quiz Generator API..." -ForegroundColor Green

# Test health endpoint
Write-Host "`n1. Testing health endpoint..." -ForegroundColor Yellow
try {
    $healthResponse = Invoke-RestMethod -Uri "http://localhost:8000/health" -Method GET
    Write-Host "✅ Health check: PASSED" -ForegroundColor Green
    Write-Host "   Response: $($healthResponse | ConvertTo-Json)" -ForegroundColor Cyan
} catch {
    Write-Host "❌ Health check: FAILED" -ForegroundColor Red
    Write-Host "   Error: $($_.Exception.Message)" -ForegroundColor Red
}

# Test URL validation
Write-Host "`n2. Testing URL validation..." -ForegroundColor Yellow
try {
    $validateBody = @{
        url = "https://en.wikipedia.org/wiki/Alan_Turing"
    } | ConvertTo-Json

    $validateResponse = Invoke-RestMethod -Uri "http://localhost:8000/api/quiz/validate-url" -Method POST -ContentType "application/json" -Body $validateBody
    Write-Host "✅ URL validation: PASSED" -ForegroundColor Green
    Write-Host "   Valid: $($validateResponse.valid)" -ForegroundColor Cyan
} catch {
    Write-Host "❌ URL validation: FAILED" -ForegroundColor Red
    Write-Host "   Error: $($_.Exception.Message)" -ForegroundColor Red
}

# Test quiz generation
Write-Host "`n3. Testing quiz generation..." -ForegroundColor Yellow
try {
    $generateBody = @{
        url = "https://en.wikipedia.org/wiki/Alan_Turing"
    } | ConvertTo-Json

    Write-Host "   Generating quiz (this may take a moment)..." -ForegroundColor Cyan
    $generateResponse = Invoke-RestMethod -Uri "http://localhost:8000/api/quiz/generate" -Method POST -ContentType "application/json" -Body $generateBody
    Write-Host "✅ Quiz generation: PASSED" -ForegroundColor Green
    Write-Host "   Title: $($generateResponse.title)" -ForegroundColor Cyan
    Write-Host "   Questions: $($generateResponse.quiz.Count)" -ForegroundColor Cyan
    Write-Host "   Related topics: $($generateResponse.related_topics.Count)" -ForegroundColor Cyan
} catch {
    Write-Host "❌ Quiz generation: FAILED" -ForegroundColor Red
    Write-Host "   Error: $($_.Exception.Message)" -ForegroundColor Red
}

# Test frontend
Write-Host "`n4. Testing frontend..." -ForegroundColor Yellow
try {
    $frontendResponse = Invoke-WebRequest -Uri "http://localhost:3000" -Method GET -TimeoutSec 5
    if ($frontendResponse.StatusCode -eq 200) {
        Write-Host "✅ Frontend: ACCESSIBLE" -ForegroundColor Green
    } else {
        Write-Host "❌ Frontend: NOT ACCESSIBLE (Status: $($frontendResponse.StatusCode))" -ForegroundColor Red
    }
} catch {
    Write-Host "❌ Frontend: NOT RUNNING" -ForegroundColor Red
    Write-Host "   Error: $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "`n" + "="*50 -ForegroundColor Blue
Write-Host "Test completed!" -ForegroundColor Green
Write-Host "`nAccess URLs:" -ForegroundColor Yellow
Write-Host "   Frontend: http://localhost:3000" -ForegroundColor Cyan
Write-Host "   Backend API: http://localhost:8000" -ForegroundColor Cyan
Write-Host "   API Documentation: http://localhost:8000/docs" -ForegroundColor Cyan

async function updateStatus() {
    try {
        const response = await fetch('http://localhost:5000/health/status');
        const data = await response.json();
        
        // Atualiza o card do Backend
        const backend = data['api-backend'] || {status: 'unhealthy', response_time: 'N/A'};
        document.getElementById('backend-uptime').innerText = backend.status === 'healthy' ? '99.9%' : '0%';
        document.getElementById('backend-response').innerText = backend.response_time;
        
    } catch (error) {
        console.error('Erro ao buscar métricas:', error);
    }
}

// Atualiza a cada 5 segundos
setInterval(updateStatus, 5000);
updateStatus();
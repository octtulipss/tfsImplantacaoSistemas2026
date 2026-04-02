from flask import Flask, jsonify
import yaml
import requests
import time

app = Flask(__name__)

def get_config():
    with open('config/healthchecks.yml', 'r') as f:
        return yaml.safe_load(f)

@app.route('/health/status')
def health_status():
    config = get_config()
    results = {}
    
    for service, info in config['healthchecks'].items():
        try:
            if info['type'] == 'http':
                start = time.time()
                r = requests.get(info['url'], timeout=info['timeout'])
                duration = (time.time() - start) * 1000
                results[service] = {
                    "status": "healthy" if r.status_code == info['expected_status'] else "unhealthy",
                    "response_time": f"{duration:.2f}ms"
                }
        except:
            results[service] = {"status": "unhealthy", "response_time": "N/A"}
            
    return jsonify(results)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
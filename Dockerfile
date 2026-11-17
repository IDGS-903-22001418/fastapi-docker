# Imagen base
FROM python:3.10-slim

# Directorio de trabajo
WORKDIR /app

# Copia e instalación de dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia del código fuente
COPY main.py .

# Exponer el puerto interno
EXPOSE 8000

# Comando de ejecución
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

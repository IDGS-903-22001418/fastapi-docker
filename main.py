from fastapi import FastAPI

app = FastAPI(title="API Demo - v2")

@app.get("/")
def read_root():
    return {
        "version": "v2.0.0",
        "status": "activo",
        "mensaje": "Bienvenido a la API v2 con nuevas optimizaciones",
        "entorno": "producción"
    }

@app.get("/items/{item_id}")
def read_item(item_id: int):
    return {"item_id": item_id, "version": "v2", "moneda": "USD"}

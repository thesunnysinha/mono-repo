from fastapi import FastAPI
import editdistance

app = FastAPI()

@app.get("/editdistance/")
async def calculate_edit_distance(s1: str, s2: str):
    distance = editdistance.eval(s1, s2)
    return {"edit_distance": distance}

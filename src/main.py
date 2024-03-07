from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.get("/input")
async def root(input_text: str):
    return {"message": f"Your text is {input_text}"}

@app.get("/input_num")
async def root(input_text: int):
    return {"message": f"Your text is {input_text}"}
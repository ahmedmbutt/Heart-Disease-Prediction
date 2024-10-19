from fastapi import FastAPI
from pydantic import BaseModel
import pandas as pd
from scipy.stats import boxcox
from joblib import load


app = FastAPI()


class HeartModel(BaseModel):
    age: int
    sex: int
    trestbps: int
    chol: int
    fbs: int
    thalach: int
    exang: int
    oldpeak: float
    slope: int
    ca: int
    cp_1: bool
    cp_2: bool
    cp_3: bool
    restecg_1: bool
    restecg_2: bool
    thal_1: bool
    thal_2: bool
    thal_3: bool


@app.get("/")
def read_root():
    return {"Heart": "Prediction"}


@app.post("/predict")
def read_item(data: HeartModel):
    lambdas = {
        "age": 1.1884623210915386,
        "trestbps": -0.566961719937906,
        "chol": -0.12552647234590764,
        "thalach": 2.4454557922261086,
        "oldpeak": 0.17759774936241574,
    }

    with open("svm.pkl", "rb") as f:
        clf = load(f)

    data = data.dict()
    data["oldpeak"] = data["oldpeak"] + 0.001
    for col in lambdas.keys():
        if data[col] > 0:
            data[col] = boxcox(data[col], lmbda=lambdas[col])

    data = pd.DataFrame([data])

    target = clf.predict(data)
    return {"target": target[0].item()}

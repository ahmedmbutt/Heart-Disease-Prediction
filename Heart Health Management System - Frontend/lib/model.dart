class HeartModel {
  int age;
  int sex;
  int trestbps;
  int chol;
  int fbs;
  int thalach;
  int exang;
  double oldpeak;
  int slope;
  int ca;
  bool cp1;
  bool cp2;
  bool cp3;
  bool restecg1;
  bool restecg2;
  bool thal1;
  bool thal2;
  bool thal3;

  HeartModel({
    required this.age,
    required this.sex,
    required this.trestbps,
    required this.chol,
    required this.fbs,
    required this.thalach,
    required this.exang,
    required this.oldpeak,
    required this.slope,
    required this.ca,
    required this.cp1,
    required this.cp2,
    required this.cp3,
    required this.restecg1,
    required this.restecg2,
    required this.thal1,
    required this.thal2,
    required this.thal3,
  });

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['age'] = age;
    data['sex'] = sex;
    data['trestbps'] = trestbps;
    data['chol'] = chol;
    data['fbs'] = fbs;
    data['thalach'] = thalach;
    data['exang'] = exang;
    data['oldpeak'] = oldpeak;
    data['slope'] = slope;
    data['ca'] = ca;
    data['cp_1'] = cp1;
    data['cp_2'] = cp2;
    data['cp_3'] = cp3;
    data['restecg_1'] = restecg1;
    data['restecg_2'] = restecg2;
    data['thal_1'] = thal1;
    data['thal_2'] = thal2;
    data['thal_3'] = thal3;
    return data;
  }
}

// this example shows how to enable and use third-party 
// modules.

import PythonKit
do {
    // set system directory to current path
     let os = try Python.attemptImport("os")
    let sys = try Python.attemptImport("sys")
    sys.path.append(os.getcwd())
    
    let ds = try Python.attemptImport("sklearn.datasets")
    let iris = ds.load_iris()
    let X = iris.data
    let y = iris.target
    let cv = try Python.attemptImport("sklearn.model_selection")
    // only now you can load any third party library
    
    print(X.shape)
    print(y.shape)
    let data = cv.train_test_split(X,y, test_size:0.2, random_state:0)
    let X_train = data[0]
    let X_test  = data[1]
    let y_train = data[2]
    let y_test  = data[3]

    let xgb = try Python.attemptImport("xgboost")
    //now create the XGBoost DMatrix datasets
    let dtrain = xgb.DMatrix(X_train, label:y_train)
    let dtest = xgb.DMatrix(X_test, label:y_test)


} catch 
 {
  print("some error : \(error)")  
}
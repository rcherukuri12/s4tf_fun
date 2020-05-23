// this example shows how to enable and use third-party 
// modules.

import PythonKit
do {
    // set system directory to current path
     let os =  Python.import("os")
    let sys =  Python.import("sys")
    sys.path.append(os.getcwd())
    
    let ds =  Python.import("sklearn.datasets")
    let iris = ds.load_iris()
    let X = iris.data
    let y = iris.target
    // only now you can load any third party library
    //let xgb =  Python.import("xgboost")
    print(X.shape)
    print(y.shape)

} catch 
 {
  print("some error : \(error)")  
}
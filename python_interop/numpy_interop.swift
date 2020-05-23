// example 1
// 
import PythonKit
do  {
        let np = try Python.attemptImport("numpy")
        let x = np.ones([3,3])
        print(x)
        print(type(of:x))

    }catch{
        print("some  : \(error)")
}
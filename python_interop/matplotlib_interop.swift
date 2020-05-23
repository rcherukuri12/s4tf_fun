// example 2:
// Uses both numpy and matplotlib

import PythonKit
do  {
        let np   = try Python.import("numpy")
        let plt  = try Python.import("matplotlib.pyplot")
        let time = np.arange(0,10,0.01)
        let amp  = np.exp(-0.5 *  time )
        plt.figure(figsize:[10,8])
        plt.plot(time,amp)
        plt.show()
    }catch{
        print("some  : \(error)")
}
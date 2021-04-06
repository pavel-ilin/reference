# Neural Networks reference

All reference expressed in python.

## Activation functions

### Sigmoid / Logistic + Derivative
```python
import numpy as np

def sigmoid(x):
    return 1/(1+np.exp(-x))

def sigmoid_der(x):
    return self.sigmoid(x) * (1-self.sigmoid(x))
```

### Softmax
```python
import numpy as np

def softmax(x):
    expx = np.exp(x)
    return expx / expx.sum(axis=index, keepdims=True)
```

### TanH / Hyperbolic Tangent
```python
import numpy as np

def tanh(x):
    t=(np.exp(x)-np.exp(-x))/(np.exp(x)+np.exp(-x))
    return t

def tanh_der(x):
    return 1-x**2
```

### ReLU (Rectified Linear Unit)
```python
import numpy as np

def relu(x):
	return np.maximum(0.0, x)
```

### Leaky ReLU

```python
import numpy as np

def leaky_relu(x):
  if x > 0:
    return x
  else:
    return 0.01 * x
```

## Loss functions

## Optimization functions


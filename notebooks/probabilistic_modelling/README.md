# Probabilistic Modelling

The following files contain simple examples for probabilistic modelling using different versions of keras.

### `pm_tfkeras.ipynb`: 
Probabilistic modelling using the intergated keras version backed in tensorflow. This is a very tight integration and your model outputs a tfp distribution object. 

#### Colab (runs out of the box)
Quite slow.

### `pm_keras_jax.ipynb`: 
Probabilistic modelling using the keras 3.0 version and JAX / numpyro as the backend. Here, a wrapper function is needed converting the output of the keras model into a numpyro distribution object. Needs 0.83 seconds for 1000 epochs on macbook pro 2023. 

#### Colab (needs numpyro installation)
Runs in 7.82 seconds for 1000 epochs on colab. Before running you need to install numpyro.
```python
%pip install numpyro #Needs about 10 seconds
```

### `pm_keras_pytorch.ipynb`: 
Probabilistic modelling using the keras 3.0 version and pytorch as the backend. Here, a wrapper function is needed converting the output of the keras model into a pytorch distribution object. 

#### Colab Should run 'out of the box' 
Takes about 15 seconds to run on colab for 1000 epochs.

##### Notes on local installation
Currenly not working on Oliver's local machine (MAC). 



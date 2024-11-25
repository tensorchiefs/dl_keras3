# Probabilistic Modelling

The following files contain simple examples for probabilistic modelling using different versions of keras.

* `pm_tfkeras.ipynb`: Probabilistic modelling using the intergated keras version backed in tensorflow. This is a very tight integration and your model outputs a tfp distribution object. Should run 'out of the box' in colab. 

* `pm_keras_jax.ipynb`: Probabilistic modelling using the keras 3.0 version and JAX / numpyro as the backend. Here, a wrapper function is needed converting the output of the keras model into a numpyro distribution object.





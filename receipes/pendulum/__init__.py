from pythonforandroid.recipe import RustCompiledComponentsRecipe

class PendulumRecipe(RustCompiledComponentsRecipe):
    version = "3.10.0"
    url = "https://github.com/python-pendulum/pendulum/archive/refs/tags/{version}.tar.gz"
    site_packages_name = "pendulum"

recipe = PendulumRecipe()

# Julia reproducible research template

This template is created to help people increase the consistency of their scientific projects, navigate them and share them faster and easier, manage scripts, existing simulations as well as project source code. [DrWatson](https://juliadynamics.github.io/DrWatson.jl/dev/) helps establishing reproducibility, and in general it makes managing a scientific project a simple job.

---

The setup approach is designed to work flawlessly with Julia standards, to be easy to share and to be fully reproducible. There are three reasons that true reproducibility is possible:

1. The project's used packages are embedded in the project because of `Manifest.toml`.
2. The navigation around the folders of the project uses local directories.
3. The project is a Git repository, which means that it has a detailed (and re-traceable) history of all changes and additions.

If you send your entire project folder to a colleague, they only need to do:

```julia
julia> cd("path/to/project")
pkg> activate .
pkg> instantiate
```

to use your project (assuming of course that you are both using the same Julia installation and version). All required packages and dependencies will be installed and then any script that was running in your computer will also be running in their computer **in the same way!**

In addition, with [DrWatson](https://juliadynamics.github.io/DrWatson.jl/dev/) you have the possibility of "tagging" each simulation created with the commit id, see the discussion around [`gitdescribe`](https://juliadynamics.github.io/DrWatson.jl/dev/save/#DrWatson.gitdescribe) and [`tag!`](https://juliadynamics.github.io/DrWatson.jl/dev/save/#DrWatson.tag!). This way, any data result obtained at any moment can be truly reproduced simply by resetting the Git tree to the appropriate commit and running the code.

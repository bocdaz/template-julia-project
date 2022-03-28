# {{cookiecutter.project_name}}

This code base is using the Julia Language and [DrWatson](https://juliadynamics.github.io/DrWatson.jl/stable/)
to make a reproducible scientific project named
> {{cookiecutter.project_name}}

It is authored by {{cookiecutter.full_name}}

To (locally) reproduce this project, do the following:

0. Download this code base. Notice that raw data are typically not included in the
   git-history and may need to be downloaded independently.
1. Open a Julia console and do:
   ```
   julia> using Pkg
   julia> Pkg.add("DrWatson") # install globally, for using `quickactivate`
   julia> Pkg.activate("path/to/this/project")
   julia> Pkg.instantiate()
   ```

This will install all necessary packages for you to be able to run the scripts and
everything should work out of the box, including correctly finding local paths.


## Project structure

```
│{{cookiecutter.project_name}}        <- Project's main folder. It is initialized as a Git
│                        repository with a reasonable .gitignore file.
│
├── _research         <- WIP scripts, code, notes, comments,
│   |                    to-dos and anything in an alpha state.
│   └── tmp           <- Temporary data folder.
│
├── data              <- **Immutable and add-only!**
│   ├── sims          <- Data resulting directly from simulations.
│   ├── exp_pro       <- Data from processing experiments.
│   └── exp_raw       <- Raw experimental data.
│
├── plots             <- Self-explanatory.
├── notebooks         <- Jupyter, Weave or any other mixed media notebooks.
│
├── papers            <- Scientific papers resulting from the project.
│
├── scripts           <- Various scripts, e.g. simulations, plotting, analysis,
│   │                    The scripts use the `src` folder for their base code.
│   └── intro.jl      <- Simple file that uses DrWatson and uses its greeting.
│
├── src               <- Source code for use in this project. Contains functions,
│                        structures and modules that are used throughout
│                        the project and in multiple scripts.
│
├── README.md         <- Top-level README for anyone using this project.
├── .gitignore        <- by default ignores _research, data, plots, videos,
│                        notebooks and latex-compilation related files.
│
├── Manifest.toml     <- Contains full list of exact package versions used currently.
├── Project.toml      <- Main project file, allows activation and installation.
│                        Includes DrWatson by default.
│
├── Dockerfile        <- Packages all dependencies into a portable container
├── devspace.yaml     <- Configures the containerized development environment
└── devspace_start.sh <- Displays helpful information when you access the
                         containerized development environment.             
```

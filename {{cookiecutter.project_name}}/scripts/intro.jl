using DrWatson
@quickactivate "{{cookiecutter.project_name}}"

println(
"""
Currently active project is: $(projectname())

Path of active project: $(projectdir())

Have fun with your new project!
"""
)

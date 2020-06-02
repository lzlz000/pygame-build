首次运行请执行 pipenv install 初始化项目
运行打包后的可执行文件，若出现错误 Failed to execute script pyi_rth_pkgres

请运行 build-debug.bat, 可在控制台打印的日志中看到类似以下错误部分
```
Traceback (most recent call last):
  File "lib\site-packages\PyInstaller\loader\rthooks\pyi_rth_pkgres.py", line 13, in <module>
  File "c:\users\lzlz0\.virtualenvs\dm2-rianhebg\lib\site-packages\PyInstaller\loader\pyimod03_importers.py", line 623, in exec_module
    exec(bytecode, module.__dict__)
  File "lib\site-packages\pkg_resources\__init__.py", line 86, in <module>
ModuleNotFoundError: No module named 'pkg_resources.py2_warn'
```
可以知道路径 ``` c:\users\lzlz0\.virtualenvs\[xxxxxx]\lib\``` 和报错文件 ```lib\site-packages\pkg_resources\__init__.py```
即绝对路径为 ``` c:\users\lzlz0\.virtualenvs\[xxxxxx]\lib\site-packages\pkg_resources\__init__.py```
编辑该文件，注释掉第86行代码 重新打包

```python
# __import__('pkg_resources.py2_warn')
```

改动项目内代码重新打包不再有影响，重新执行pipenv install 需要重复上述步骤
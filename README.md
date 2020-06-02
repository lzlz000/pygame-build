使用pipenv管理，pyinstaller打包pygame的例子，已经测试在win10 和 ubuntu18.04可以正常构件并运行。 
其中game.py和assets/imgs中的图片是我从网上随便复制来的一个例子，不是重点

首次运行请执行 pipenv install 初始化项目
执行build.bat/build.sh 即可打包成可执行文件

运行打包后的可执行文件，若出现错误 Failed to execute script pyi_rth_pkgres （linux/windows基本可能会出现问题）

请运行 build-debug.bat/build-debug.sh, 可在控制台打印的日志中看到类似以下错误部分
```
Traceback (most recent call last):
  File "lib\site-packages\PyInstaller\loader\rthooks\pyi_rth_pkgres.py", line 13, in <module>
  File "c:\users\lzlz0\.virtualenvs\dm2-rianhebg\lib\site-packages\PyInstaller\loader\pyimod03_importers.py", line 623, in exec_module
    exec(bytecode, module.__dict__)
  File "lib\site-packages\pkg_resources\__init__.py", line 86, in <module>
ModuleNotFoundError: No module named 'pkg_resources.py2_warn'
```
可知报错文件路径为 ``` c:\users\lzlz0\.virtualenvs\dm2-rianhebg\lib\site-packages\pkg_resources\__init__.py```
编辑该文件，注释掉第86行代码 重新打包

```python
# __import__('pkg_resources.py2_warn')
```
每次执行pipenv install 会生成一个新的路径，重新执行pipenv install 需要再次执行上述步骤
import setuptools
import sys
import io

mac_indicator = 'darwin'
linux_indicator = 'linux'
windows_indicator = 'win'
platform = sys.platform

long_description = io.open('README.pypi.md', encoding="utf-8").read()

extra_link_args = []
if platform.startswith(mac_indicator):
    extra_link_args.append('-Wl')  # pass the following options to linker

libraries=[]
if platform.startswith(windows_indicator):
    libraries.append('wsock32')
    libraries.append('ws2_32')

ndicapy = setuptools.Extension('ndicapy',
                    sources=[
                        'ndicapi.cxx',
                        'ndicapi_math.cxx',
                        'ndicapi_serial.cxx',
                        'ndicapi_thread.cxx',
                        'ndicapi_socket.cxx',
                        'ndicapimodule.cxx',
                    ],
                    extra_link_args=extra_link_args,
                    libraries=libraries,
                    )

setuptools.setup(name='ndicapi',
      version='3.7.1',
      url='https://github.com/SciKit-Surgery/ndicapi',
      license='MIT',
      description='This package allows interfacing with NDI tracking devices',
      long_description=long_description,
      long_description_content_type="text/markdown",
      maintainer="Stephen Thompson",
      maintainer_email="s.thompson@ucl.ac.uk",
      classifiers=[
          'Development Status :: 3 - Alpha',
          'Environment :: Console',
          'Intended Audience :: Developers',
          'Intended Audience :: Education',
          'Intended Audience :: Information Technology',
          'Intended Audience :: Science/Research',
          'License :: OSI Approved :: MIT License',
          'Operating System :: MacOS',
          'Operating System :: Microsoft :: Windows',
          'Operating System :: POSIX',
          'Operating System :: Unix',
          'Programming Language :: Python :: 2.7',
          'Programming Language :: Python :: 3.6',
          'Programming Language :: Python :: 3.7',
          'Programming Language :: Python :: 3.8',
          'Programming Language :: C',
          'Programming Language :: Python :: Implementation :: CPython',
          'Topic :: Scientific/Engineering',
          'Topic :: System :: Hardware',
        ],
      ext_modules=[ndicapy],
      )

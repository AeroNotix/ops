from pip.req import parse_requirements
from setuptools import setup


install_reqs = parse_requirements("requirements.txt")
reqs = [str(ir.req) for ir in install_reqs]

setup(
    include_package_data=True,
    name='aws-ops',
    author="Chris Maxwell",
    author_email="foo@bar.com",
    version='0.1',
    description="Building special snowflakes consistently",
    scripts=[
        "cloudcaster/cloudcaster.py",
        "ec2cleanlc/ec2cleanlc.py",
        "ec2cleanami/ec2cleanami.py"
    ],
    url="https://github.com/WrathOfChris/ops",
    install_requires=reqs,
    license="BSD 2-Clause"
)

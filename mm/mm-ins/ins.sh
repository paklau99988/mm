export TORCH_CUDA_ARCH_LIST="6.0 6.1 7.0+PTX"
export  TORCH_NVCC_FLAGS="-Xfatbin -compress-all"
export  CMAKE_PREFIX_PATH="$(dirname $(which conda))/../"


pip uninstall -y mmdet mmcv
conda install -y cython==0.28.5
#pip install mmcv==0.2.15
pip install mmcv==0.6.2 terminaltables Pillow==6.2.2

export FORCE_CUDA="1"

pip install "git+https://github.com/open-mmlab/cocoapi.git#subdirectory=pycocotools"
pip install "git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI"
#git clone https://github.com/open-mmlab/mmdetection.git mmdetection
#cd mmdetection
rm -rf build
pip install -r requirements/build.txt
python setup.py develop
pip install --no-cache-dir -e .
pip install mmcv==0.6.2 mmcv-full

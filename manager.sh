prj_dir=$PWD

domain='docker.kiuber.me'

image_name='ts-toolkit'
image_version='latest'
image="$domain/$image_name:$image_version"

source "$PWD/appupy/base-bash/_base.sh"
source "$PWD/appupy/base-bash/_docker.sh"

function build_image() {
    local cmd="docker build -t $image $prj_dir/alpine-docker"
    _run_cmd "$cmd"
}

function help() {
    cat <<-EOF

        Valid options are:
            build_image

            help                      show this help message and exit

EOF
}

action=${1:-help}
$action "$@"


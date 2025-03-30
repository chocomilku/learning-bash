#!/usr/bin/env bash

server_name=$(hostname)
echo "Server Name: ${server_name}"

function memory_check() {
    echo ""
    echo "Current Memory Usage: " 
    free -h
    echo ""
}

function cpu_check() {
    loadavg="$(cat /proc/loadavg)"
    echo "Current CPU load: "
    echo "${loadavg}"
    echo ""
}

function disk_check() {
    echo "Current Disk Usage: "
    df -Thi
    echo ""
}

function kernel_check() {
   echo "Current Kernel Version: "
   uname -r
   echo ""
}

memory_check
cpu_check
disk_check
kernel_check

#!/bin/bash

# Podstaw zmienne środowiskowe do config.alloy
sed -i "s|__TENANT_ID__|${TENANT_ID}|g" /etc/alloy/config.alloy
sed -i "s|__API_KEY__|${API_KEY}|g" /etc/alloy/config.alloy

exec /usr/bin/alloy --config.file=/etc/alloy/config.alloy
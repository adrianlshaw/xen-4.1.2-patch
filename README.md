git clone https://github.com/adrianlshaw/xen-4.1.2-patch.git --recursive && \
cd xen-4.1.2-patch/xen/ && patch -p1 < ../xen-4.1.2.patch && find . -type f -exec sed -i 's/-Werror//g' {} + && patch -p1 < ../extra.patch  -R

=begin
essa é a primeira parte do script
ele é escrito em ruby e python, ele automatiza a instalação da interface gráfica Cutefish, atualmente disponivel apenas para o Arch Linux.
esse script atualmente funciona no ubuntu/debian/pop_os e derivados sem problema algum.
=end

system "clear"
    puts()
    puts'Type: "start", to start the installation!'
    puts()
    print"Type: "
installation = gets.chomp
if installation == "start"
    system "clear"
    system "sudo apt update"
    system "sudo apt install -y git devscripts build-essential cmake ninja-build"
    system "sudo apt install -y qtbase5-dev qtquickcontrols2-5-dev libkf5networkmanagerqt-dev modemmanager-qt-dev debhelper extra-cmake-modules libkf5kio-dev libkf5screen-dev libqt5sensors5-dev qtdeclarative5-dev qttools5-dev qttools5-dev-tools libxcb-icccm4-dev qtbase5-private-dev kwin-dev libkdecorations2-dev libqt5xdg-dev libdbusmenu-qt5-dev libxcb-ewmh-dev libicu-dev libxcb-randr0-dev libsm-dev libxcb-xfixes0-dev libxcb-damage0-dev libxcb-composite0-dev libxcb-shm0-dev libxcb-util-dev libxcb-image0-dev libxtst-dev libpulse-dev libpolkit-qt5-1-dev libpolkit-agent-1-dev libqt5x11extras5-dev qml-module-qtquick2 qml-module-qtquick-controls2 libkf5bluezqt-dev libkf5bluezqt-dev libqt5opengl5-dev libxcursor-dev"
end
#folder creation
    system "mkdir ~/Downloads/cutefish"
    system "python comp.py"
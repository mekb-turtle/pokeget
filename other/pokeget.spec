
Name:           pokeget
Version:        1.4.3
Release:        1
Summary:        pokeget is a bash script you can use to display cool sprites of pokemon in your terminal.
BuildArch:      noarch
Requires:       curl, bash, coreutils

License:        MIT
URL:            https://github.com/talwat/pokeget
Source0:        %{name}-%{version}.tar

%description
pokeget has support for all pokemon up to gen 8 including gen 8 and is written in bash.
pokeget has only needs basic dependencies usually preinstalled in GNU/Linux systems.

%prep
%setup -q

%install
rm -rf $RPM_BUILD_ROOT
mkdir -p $RPM_BUILD_ROOT/usr/bin
cp %{name} $RPM_BUILD_ROOT/usr/bin

%files
/usr/bin/%{name}


# ${license-info}
# ${developer-info}
# ${author-info}


unique template components/profile/config-rpm;
include { 'components/profile/schema' };
include { 'components/profile/functions' };

# Package to install
"/software/packages" = pkg_repl("ncm-${project.artifactId}", "${no-snapshot-version}-${RELEASE}", "noarch");

'/software/components/profile/dependencies/pre' ?= list('spma');

'/software/components/profile/version' ?= '${project.version}';
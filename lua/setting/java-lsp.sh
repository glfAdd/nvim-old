#!/usr/bin/env bash

# JAR="$HOME/.local/share/lsp/jdtls-server/plugins/org.eclipse.equinox.launcher_*.jar"
JAR="/opt/neovim-dap/jdt-language-server-1.8.0-202201261434/plugins/org.eclipse.equinox.launcher_*.jar"

GRADLE_HOME='$HOME/.sdkman/candidates/gradle/current/bin/gradle' java \
  -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044 \
  -javaagent:$HOME/.local/jars/lombok.jar \
  -Xbootclasspath/a:$HOME/.local/jars/lombok.jar \
  -Declipse.application=org.eclipse.jdt.ls.core.id1 \
  -Dosgi.bundles.defaultStartLevel=4 \
  -Declipse.product=org.eclipse.jdt.ls.core.product \
  -Dlog.protocol=true \
  -Dlog.level=ALL \
  -Xms1g \
  -Xmx2G \
  -jar $(echo "$JAR") \
  -configuration "/opt/neovim-dap/jdt-language-server-1.8.0-202201261434/config_linux" \
  -data "$1" \
  --add-modules=ALL-SYSTEM \
  --add-opens java.base/java.util=ALL-UNNAMED \
  --add-opens java.base/java.lang=ALL-UNNAMED

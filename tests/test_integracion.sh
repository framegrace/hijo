#!/bin/bash
# Test de integración. Muy sencillo, por ahora.
sleep 10
echo "Test de integración"
curl --silent "http://localhost/MainServlet" | grep "This is a skreleton application"
RESULTAT=$?
[ $RESULTAT -eq 0 ] && echo "TODO BIEN" || echo "ALGO HA FALLADO"
exit $RESULTAT

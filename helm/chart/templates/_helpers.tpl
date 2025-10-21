{{/* Helper templates for naming and checksum */}}
{{- define "nginx-configmap.fullname" -}}
{{- if .Values.nameOverride }}
{{- printf "%s-%s" .Release.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- else }}
{{- printf "%s" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "nginx-configmap.indexHtmlChecksum" -}}
{{- printf "%s" .Values.indexHtml | sha256sum -}}
{{- end -}}

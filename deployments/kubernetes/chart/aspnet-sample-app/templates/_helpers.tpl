{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "aspnet-app.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "aspnet-app.labels.selector" -}}
app: {{ template "aspnet-app.name" . }}
group: {{ .Values.labels.group }}
provider: {{ .Values.labels.provider }}
{{- end -}}

{{- define "aspnet-app.labels.stakater" -}}
{{ template "aspnet-app.labels.selector" . }}
version: "{{ .Values.labels.version }}"
{{- end -}}

{{- define "aspnet-app.labels.chart" -}}
chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
release: {{ .Release.Name | quote }}
heritage: {{ .Release.Service | quote }}
{{- end -}}

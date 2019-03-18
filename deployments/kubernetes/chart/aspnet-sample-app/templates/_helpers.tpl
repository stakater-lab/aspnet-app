{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "aspnet-sample-app.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "aspnet-sample-app.labels.selector" -}}
app: {{ template "aspnet-sample-app.name" . }}
group: {{ .Values.labels.group }}
provider: {{ .Values.labels.provider }}
{{- end -}}

{{- define "aspnet-sample-app.labels.stakater" -}}
{{ template "aspnet-sample-app.labels.selector" . }}
version: "{{ .Values.labels.version }}"
{{- end -}}

{{- define "aspnet-sample-app.labels.chart" -}}
chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
release: {{ .Release.Name | quote }}
heritage: {{ .Release.Service | quote }}
{{- end -}}

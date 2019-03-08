{{/* vim: set filetype=mustache */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "gateway.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "gateway.fullname" -}}
{{- printf "%s-brigade-github-gw" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "gateway.legacyappname" -}}
{{- printf "%s-brigade" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "gateway.rbac.version" }}rbac.authorization.k8s.io/v1beta1{{ end -}}
{{- define "employee.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "employee.fullname" -}}
{{- printf "%s-%s" (include "employee.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

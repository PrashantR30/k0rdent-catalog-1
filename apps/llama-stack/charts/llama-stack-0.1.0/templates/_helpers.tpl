{{- define "llama-stack.name" -}}
llama-stack
{{- end -}}

{{- define "llama-stack.fullname" -}}
{{- printf "%s" (include "llama-stack.name" .) -}}
{{- end -}}

{{- define "llama-stack.labels" -}}
app.kubernetes.io/name: {{ include "llama-stack.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

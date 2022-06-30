{{- define "mysql.getdbservicename" -}}
{{- .Values.global.mysql_svc_name -}}
{{- end -}}

{{- define "mysql.getdbserviceurl" -}}
{{- list "jdbc:mysql://" .Values.global.mysql_svc_name "/" .Values.env.MYSQL_DATABASE | join "" | quote -}}
{{- end -}}

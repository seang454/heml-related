{{- define "deployment-spec" }}
      affinity:
      {{- toYaml .Values.affinity | nindent 8 }}
      containers:
      {{- with .Values.container }}
      - name: {{ .name }}
        image: {{ .image }}
        ports:
        - containerPort: {{ .port }}
        env:
      {{- range .env }}
        - name: {{ .name }}
          value: {{ .value }}
      {{- end }}
      {{- end }}
     # if resources are defined in values.yaml, add them to the container spec
      {{- if .Values.resources }}
        resources:
      {{- toYaml .Values.resources | nindent 10 }}
      {{- end }}

      {{- if .Values.livenessProbe }}
        livenessProbe:
      {{- toYaml .Values.livenessProbe | nindent 10 }}
      {{- end }}

      {{- if .Values.readinessProbe }}
        readinessProbe:
      {{- toYaml .Values.readinessProbe | nindent 10 }}
      {{- end }}
{{- end }}
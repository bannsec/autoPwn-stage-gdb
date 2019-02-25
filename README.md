Intended to be used as a stage builder for autoPwn.

```
COPY --from=bannsec/autopwn-stage-gdb /opt/gdb/. /usr/.
```

Be sure to have dependent libs:

```
apt-get install -y libbabeltrace1 libipt1
```

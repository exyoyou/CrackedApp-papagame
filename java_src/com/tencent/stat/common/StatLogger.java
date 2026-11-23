package com.tencent.stat.common;

import com.join.mgps.Util.v0;

/* JADX INFO: loaded from: classes2.dex */
public final class StatLogger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f83870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f83871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f83872c;

    public StatLogger() {
        this.f83870a = v0.f50057a;
        this.f83871b = true;
        this.f83872c = 2;
    }

    private String a() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace == null) {
            return null;
        }
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (!stackTraceElement.isNativeMethod() && !stackTraceElement.getClassName().equals(Thread.class.getName()) && !stackTraceElement.getClassName().equals(StatLogger.class.getName())) {
                return "[" + Thread.currentThread().getName() + "(" + Thread.currentThread().getId() + "): " + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + "]";
            }
        }
        return null;
    }

    public void d(Object obj) {
        if (isDebugEnable()) {
            debug(obj);
        }
    }

    public void debug(Object obj) {
        if (this.f83872c <= 3) {
            String strA = a();
            if (strA == null) {
                obj.toString();
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strA);
            sb2.append(" - ");
            sb2.append(obj);
        }
    }

    public void e(Exception exc) {
        if (isDebugEnable()) {
            error(exc);
        }
    }

    public void error(Exception exc) {
        if (this.f83872c <= 6) {
            StringBuffer stringBuffer = new StringBuffer();
            String strA = a();
            StackTraceElement[] stackTrace = exc.getStackTrace();
            stringBuffer.append(strA != null ? strA + " - " + exc + "\r\n" : exc + "\r\n");
            if (stackTrace == null || stackTrace.length <= 0) {
                return;
            }
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (stackTraceElement != null) {
                    stringBuffer.append("[ " + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + " ]\r\n");
                }
            }
        }
    }

    public int getLogLevel() {
        return this.f83872c;
    }

    public void i(Object obj) {
        if (isDebugEnable()) {
            info(obj);
        }
    }

    public void info(Object obj) {
        if (this.f83872c <= 4) {
            String strA = a();
            if (strA == null) {
                obj.toString();
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strA);
            sb2.append(" - ");
            sb2.append(obj);
        }
    }

    public boolean isDebugEnable() {
        return this.f83871b;
    }

    public void setDebugEnable(boolean z10) {
        this.f83871b = z10;
    }

    public void setLogLevel(int i10) {
        this.f83872c = i10;
    }

    public void setTag(String str) {
        this.f83870a = str;
    }

    public void v(Object obj) {
        if (isDebugEnable()) {
            verbose(obj);
        }
    }

    public void verbose(Object obj) {
        if (this.f83872c <= 2) {
            String strA = a();
            if (strA == null) {
                obj.toString();
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strA);
            sb2.append(" - ");
            sb2.append(obj);
        }
    }

    public void w(Object obj) {
        if (isDebugEnable()) {
            warn(obj);
        }
    }

    public void warn(Object obj) {
        if (this.f83872c <= 5) {
            String strA = a();
            if (strA == null) {
                obj.toString();
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strA);
            sb2.append(" - ");
            sb2.append(obj);
        }
    }

    public StatLogger(String str) {
        this.f83871b = true;
        this.f83872c = 2;
        this.f83870a = str;
    }

    public void e(Object obj) {
        if (isDebugEnable()) {
            error(obj);
        }
    }

    public void error(Object obj) {
        if (this.f83872c <= 6) {
            String strA = a();
            if (strA == null) {
                obj.toString();
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strA);
            sb2.append(" - ");
            sb2.append(obj);
        }
    }
}

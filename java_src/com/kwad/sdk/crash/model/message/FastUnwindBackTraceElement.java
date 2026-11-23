package com.kwad.sdk.crash.model.message;

import com.join.mgps.Util.o0;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public final class FastUnwindBackTraceElement implements Serializable {
    private static final long serialVersionUID = -6763898640806477065L;
    public String costInfo;
    public String formatString;
    public long lastUpdateTime;
    public String tag;
    public String threadInfo;
    public int unwindFailReason;
    public long updateTime;
    public String declaringClass = "";
    public String methodName = "";
    public String fileName = "";
    public int lineNumber = 0;
    public String artMethod = "";

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    public String f75326pc = "";
    public String buildId = "";
    public boolean isNative = false;
    public boolean isIgnore = false;
    public boolean hasUnwind = true;

    public FastUnwindBackTraceElement(String str) {
        this.formatString = str;
    }

    public static FastUnwindBackTraceElement obtainFastUnwindBackTraceElement(Object obj) {
        FastUnwindBackTraceElement fastUnwindBackTraceElement = new FastUnwindBackTraceElement("");
        if (obj instanceof FastUnwindBackTraceElement) {
            fastUnwindBackTraceElement.updateTraceInfo((FastUnwindBackTraceElement) obj);
        } else if (obj instanceof StackTraceElement) {
            fastUnwindBackTraceElement.updateTraceInfo((StackTraceElement) obj);
        }
        return fastUnwindBackTraceElement;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FastUnwindBackTraceElement)) {
            return false;
        }
        FastUnwindBackTraceElement fastUnwindBackTraceElement = (FastUnwindBackTraceElement) obj;
        if (this.isNative) {
            return fastUnwindBackTraceElement.f75326pc.equals(this.f75326pc);
        }
        String str = fastUnwindBackTraceElement.artMethod;
        return str != null && str.equals(this.artMethod) && fastUnwindBackTraceElement.f75326pc.equals(this.f75326pc);
    }

    public final int hashCode() {
        return this.isNative ? this.f75326pc.hashCode() : (this.artMethod.hashCode() * 31) + this.f75326pc.hashCode();
    }

    public final boolean isEmpty() {
        if (this.isNative) {
            String str = this.f75326pc;
            return str == null || str.isEmpty() || this.f75326pc.equals("0");
        }
        String str2 = this.artMethod;
        return str2 == null || str2.isEmpty() || this.artMethod.equals("0");
    }

    public final String toString() {
        StringBuilder sb2;
        StringBuilder sb3 = new StringBuilder();
        if (!this.hasUnwind) {
            if (this.isNative) {
                sb2 = new StringBuilder("native:");
            } else {
                sb2 = new StringBuilder();
                sb2.append(this.artMethod);
                sb2.append(":");
            }
            sb2.append(this.f75326pc);
            return sb2.toString();
        }
        String str = this.formatString;
        if (str != null && !str.isEmpty()) {
            return this.formatString;
        }
        sb3.append(this.declaringClass);
        sb3.append(o0.f49827a);
        sb3.append(this.methodName);
        int i10 = this.lineNumber;
        if (i10 == -2) {
            sb3.append("(Native Method)");
        } else if (this.fileName != null) {
            if (i10 >= 0) {
                sb3.append("(");
                sb3.append(this.fileName);
                sb3.append(":");
                sb3.append(this.lineNumber);
                sb3.append(")");
            } else {
                sb3.append("(");
                sb3.append(this.fileName);
                sb3.append(")");
            }
        } else if (i10 >= 0) {
            sb3.append("(Unknown Source:");
            sb3.append(this.lineNumber);
            sb3.append(")");
        } else {
            sb3.append("(Unknown Source)");
        }
        return sb3.toString();
    }

    public final String toTraceString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.updateTime);
        sb2.append(this.tag);
        String str = this.formatString;
        if (str != null && !str.isEmpty()) {
            sb2.append(this.formatString);
            sb2.append(this.threadInfo);
            sb2.append(this.costInfo);
            return sb2.toString();
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(this.declaringClass);
        sb3.append(o0.f49827a);
        sb3.append(this.methodName);
        int i10 = this.lineNumber;
        if (i10 == -2) {
            sb3.append("(Native Method)");
        } else if (this.fileName != null) {
            if (i10 >= 0) {
                sb3.append("(");
                sb3.append(this.fileName);
                sb3.append(":");
                sb3.append(this.lineNumber);
                sb3.append(")");
            } else {
                sb3.append("(");
                sb3.append(this.fileName);
                sb3.append(")");
            }
        } else if (i10 >= 0) {
            sb3.append("(Unknown Source:");
            sb3.append(this.lineNumber);
            sb3.append(")");
        } else {
            sb3.append("(Unknown Source)");
        }
        this.formatString = sb3.toString();
        sb2.append((CharSequence) sb3);
        sb2.append(this.threadInfo);
        sb2.append(this.costInfo);
        return sb2.toString();
    }

    public final void updateTraceInfo(FastUnwindBackTraceElement fastUnwindBackTraceElement) {
        this.artMethod = fastUnwindBackTraceElement.artMethod;
        this.f75326pc = fastUnwindBackTraceElement.f75326pc;
        this.declaringClass = fastUnwindBackTraceElement.declaringClass;
        this.methodName = fastUnwindBackTraceElement.methodName;
        this.fileName = fastUnwindBackTraceElement.fileName;
        this.lineNumber = fastUnwindBackTraceElement.lineNumber;
        this.formatString = fastUnwindBackTraceElement.formatString;
        this.buildId = fastUnwindBackTraceElement.buildId;
        this.isNative = fastUnwindBackTraceElement.isNative;
        this.hasUnwind = fastUnwindBackTraceElement.hasUnwind;
        this.isIgnore = fastUnwindBackTraceElement.isIgnore;
        this.unwindFailReason = fastUnwindBackTraceElement.unwindFailReason;
    }

    public final void updateTraceInfo(StackTraceElement stackTraceElement) {
        this.declaringClass = stackTraceElement.getClassName();
        this.methodName = stackTraceElement.getMethodName();
        this.fileName = stackTraceElement.getFileName();
        this.lineNumber = stackTraceElement.getLineNumber();
        this.hasUnwind = true;
    }
}

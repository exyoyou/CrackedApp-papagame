package cn.fly.commons.cc;

import java.io.PrintStream;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes7.dex */
public final class x extends RuntimeException {
    public x(String str, Throwable th) {
        super(str, th);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        printStream.println("" + getMessage());
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        printWriter.println("" + getMessage());
    }
}

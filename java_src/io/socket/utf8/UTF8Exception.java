package io.socket.utf8;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class UTF8Exception extends IOException {
    public UTF8Exception() {
    }

    public UTF8Exception(String str) {
        super(str);
    }

    public UTF8Exception(String str, Throwable th) {
        super(str, th);
    }

    public UTF8Exception(Throwable th) {
        super(th);
    }
}

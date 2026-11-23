package com.umeng.analytics.pro;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes9.dex */
public class bx extends ByteArrayOutputStream {
    public bx(int i10) {
        super(i10);
    }

    public byte[] a() {
        return ((ByteArrayOutputStream) this).buf;
    }

    public int b() {
        return ((ByteArrayOutputStream) this).count;
    }

    public bx() {
    }
}

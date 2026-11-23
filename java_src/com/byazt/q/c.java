package com.byazt.q;

import java.net.DatagramSocket;
import java.net.SocketException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 956, 20})
public abstract class c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final tt f18894n = new ve();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18895c;
    public DatagramSocket tt;
    public tt uj;
    public boolean ve;

    public void c() throws SocketException {
        DatagramSocket datagramSocketC = this.uj.c();
        this.tt = datagramSocketC;
        datagramSocketC.setSoTimeout(this.f18895c);
        this.ve = true;
    }

    public boolean tt() {
        return this.ve;
    }
}

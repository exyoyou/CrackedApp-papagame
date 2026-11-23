package com.facebook.soloader;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public class q implements r4.b {
    @Override // r4.b
    public boolean a(String str, int i10) {
        return SoLoader.u(str, ((i10 & 1) != 0 ? 16 : 0) | 0);
    }

    @Override // r4.b
    public int b() {
        return SoLoader.n();
    }

    @Override // r4.b
    public String c(String str) throws IOException {
        return SoLoader.l(str);
    }
}

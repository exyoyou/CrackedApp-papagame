package com.byazt.gu;

import com.byazt.eg.d;
import com.byazt.eg.rl;
import com.byazt.gqp.nu;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 17, 72})
public class da extends nu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d f14754c;

    public da(d dVar) {
        this.f14754c = dVar;
    }

    @Override // com.byazt.gqp.nu
    public long c() {
        d dVar = this.f14754c;
        if (dVar != null) {
            return dVar.tt();
        }
        return -1L;
    }

    @Override // com.byazt.gqp.nu, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        d dVar = this.f14754c;
        if (dVar != null) {
            dVar.close();
        }
    }

    @Override // com.byazt.gqp.nu
    public com.byazt.gqp.da n() {
        rl rlVarC;
        d dVar = this.f14754c;
        if (dVar == null || (rlVarC = dVar.c()) == null) {
            return null;
        }
        return new com.byazt.gqp.da(rlVarC.toString(), rlVarC.c(), rlVarC.tt(), rlVarC.ve() != null ? rlVarC.ve().name() : null);
    }

    @Override // com.byazt.gqp.nu
    public String tt() {
        try {
            return this.f14754c.a();
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.byazt.gqp.nu
    public byte[] uj() {
        try {
            return this.f14754c.n();
        } catch (Exception unused) {
            return new byte[0];
        }
    }

    @Override // com.byazt.gqp.nu
    public InputStream ve() {
        d dVar = this.f14754c;
        if (dVar != null) {
            return dVar.uj();
        }
        return null;
    }
}

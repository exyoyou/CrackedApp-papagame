package com.byazt.umr;

import com.byazt.mk.rh;
import com.byazt.mk.sp;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1046, 46})
public class n extends sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f20715c;

    public n(rh rhVar) {
        super(rhVar);
    }

    @Override // com.byazt.mk.sp, com.byazt.mk.rh
    public void a_(com.byazt.mk.ve veVar, long j10) throws IOException {
        if (this.f20715c) {
            veVar.x(j10);
            return;
        }
        try {
            super.a_(veVar, j10);
        } catch (IOException e10) {
            this.f20715c = true;
            c(e10);
        }
    }

    public void c(IOException iOException) {
    }

    @Override // com.byazt.mk.sp, com.byazt.mk.rh, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f20715c) {
            return;
        }
        try {
            super.close();
        } catch (IOException e10) {
            this.f20715c = true;
            c(e10);
        }
    }

    @Override // com.byazt.mk.sp, com.byazt.mk.rh, java.io.Flushable
    public void flush() throws IOException {
        if (this.f20715c) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e10) {
            this.f20715c = true;
            c(e10);
        }
    }
}

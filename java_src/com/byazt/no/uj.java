package com.byazt.no;

import com.byazt.hs.i;
import com.byazt.nr.m;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Y_VALUE, 15})
public class uj implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public InputStream f17542a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f17543c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f17544n;
    public final List<com.byazt.t.ve> tt;
    public boolean uj;
    public i ve;

    public List<com.byazt.t.ve> a() {
        return this.tt;
    }

    public boolean c(int i10) {
        return i10 >= 200 && i10 < 300;
    }

    public void n() throws InterruptedException {
        synchronized (this.f17543c) {
            if (this.uj && this.ve == null) {
                this.f17543c.wait();
            }
        }
    }

    public boolean sp() {
        try {
            i iVar = this.ve;
            return iVar != null && c(iVar.tt());
        } catch (IOException e10) {
            m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.hs.sp
    public int tt() throws IOException {
        i iVar = this.ve;
        if (iVar != null) {
            return iVar.tt();
        }
        return 0;
    }

    @Override // com.byazt.hs.i
    public void uj() {
        i iVar = this.ve;
        if (iVar != null) {
            iVar.uj();
        }
    }

    @Override // com.byazt.hs.sp
    public void ve() {
        i iVar = this.ve;
        if (iVar != null) {
            iVar.ve();
        }
    }

    public boolean x() {
        return System.currentTimeMillis() - this.f17544n < tt.f17540c;
    }

    @Override // com.byazt.hs.i
    public InputStream c() throws IOException {
        InputStream inputStream = this.f17542a;
        if (inputStream != null) {
            return inputStream;
        }
        return null;
    }

    @Override // com.byazt.hs.sp
    public String c(String str) {
        i iVar = this.ve;
        if (iVar != null) {
            return iVar.c(str);
        }
        return null;
    }
}

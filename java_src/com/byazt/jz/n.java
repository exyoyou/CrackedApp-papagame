package com.byazt.jz;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 232, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f16031c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte[] f16032n;
    public String tt;
    public boolean uj;
    public boolean ve;

    @com.byazt.zqa.c(c = {0, 1, 232, 151})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f16033c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public byte[] f16034n;
        public String tt;
        public boolean uj;
        public boolean ve;

        public c c(String str) {
            this.f16033c = str;
            return this;
        }

        public c c(boolean z10) {
            this.uj = z10;
            return this;
        }

        public c c(byte[] bArr) {
            this.f16034n = bArr;
            return this;
        }

        public n c() {
            n nVar = new n();
            nVar.f16031c = this.f16033c;
            nVar.tt = this.tt;
            nVar.ve = this.ve;
            nVar.uj = this.uj;
            nVar.f16032n = this.f16034n;
            return nVar;
        }
    }

    public byte[] ve() {
        return this.f16032n;
    }

    public boolean tt() {
        return this.uj;
    }

    public String c() {
        return this.f16031c;
    }
}

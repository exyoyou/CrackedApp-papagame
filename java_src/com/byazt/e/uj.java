package com.byazt.e;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 443, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13261c;
    public String tt;

    @com.byazt.zqa.c(c = {0, 1, 443, 123})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f13262c;
        public String tt;

        public c c(String str) {
            this.f13262c = str;
            return this;
        }

        public c tt(String str) {
            this.tt = str;
            return this;
        }

        public uj c() {
            return new uj(this);
        }
    }

    public uj(c cVar) {
        this.f13261c = cVar.f13262c;
        this.tt = cVar.tt;
    }

    public String c() {
        return this.f13261c;
    }
}

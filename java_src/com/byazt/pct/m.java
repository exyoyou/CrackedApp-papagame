package com.byazt.pct;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 124, 130})
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f18642a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f18643c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f18644n;
    public final String sp;
    public final String tt;
    public final String uj;
    public final String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final String f18645x;

    @com.byazt.zqa.c(c = {0, 1, 124, 600})
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f18646a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f18647c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f18648n;
        public String sp;
        public String tt;
        public String uj;
        public String ve;

        private c() {
        }

        public c a(String str) {
            this.f18646a = str;
            return this;
        }

        public c c(String str) {
            this.f18647c = str;
            return this;
        }

        public c n(String str) {
            this.f18648n = str;
            return this;
        }

        public c sp(String str) {
            this.sp = str;
            return this;
        }

        public c tt(String str) {
            this.tt = str;
            return this;
        }

        public c uj(String str) {
            this.uj = str;
            return this;
        }

        public c ve(String str) {
            this.ve = str;
            return this;
        }

        public m c() {
            return new m(this);
        }
    }

    public static c c() {
        return new c();
    }

    public String toString() {
        return "methodName: " + this.uj + ", params: " + this.f18644n + ", callbackId: " + this.f18642a + ", type: " + this.ve + ", version: " + this.tt + ", ";
    }

    private m(String str, int i10) {
        this.tt = null;
        this.ve = null;
        this.uj = null;
        this.f18644n = null;
        this.f18642a = str;
        this.sp = null;
        this.f18643c = i10;
        this.f18645x = null;
    }

    public static m c(String str, int i10) {
        return new m(str, i10);
    }

    public static boolean c(m mVar) {
        return mVar == null || mVar.f18643c != 1 || TextUtils.isEmpty(mVar.uj) || TextUtils.isEmpty(mVar.f18644n);
    }

    private m(c cVar) {
        this.tt = cVar.f18647c;
        this.ve = cVar.tt;
        this.uj = cVar.ve;
        this.f18644n = cVar.uj;
        this.f18642a = cVar.f18648n;
        this.sp = cVar.f18646a;
        this.f18643c = 1;
        this.f18645x = cVar.sp;
    }
}

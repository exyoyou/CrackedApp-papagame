package com.byazt.ete;

import android.util.SparseArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 196})
public class gr implements com.byazt.sr.ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f13647a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f13648c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final int f13649da;
    public JSONObject gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f13650i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final byte f13651m;
    public int my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f13652n;
    public SparseArray<com.byazt.hkv.uj.c> nu;
    public String rh;
    public final String sl;
    public final int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final String f13653t;
    public final float tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final String f13654u;
    public final float uj;
    public final float ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f13655x;
    public final String yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final boolean f13656z;

    @com.byazt.zqa.c(c = {0, 1, 8, 1489})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f13657a;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public int f13659da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f13660i;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f13661m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public float f13662n;
        public JSONObject nu;
        public String rh;
        public int sl;
        public float sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public String f13663t;
        public long tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public String f13664u;
        public float uj;
        public long ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f13665x;
        public String yp;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public String f13666z;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SparseArray<com.byazt.hkv.uj.c> f13658c = new SparseArray<>();
        public int my = -1;
        public byte gt = 0;

        public c c(byte b10) {
            this.gt = b10;
            return this;
        }

        public c n(String str) {
            this.rh = str;
            return this;
        }

        public c tt(long j10) {
            this.ve = j10;
            return this;
        }

        public c uj(float f10) {
            this.sp = f10;
            return this;
        }

        public c ve(float f10) {
            this.f13657a = f10;
            return this;
        }

        public c c(boolean z10) {
            this.f13661m = z10;
            return this;
        }

        public c n(int i10) {
            this.my = i10;
            return this;
        }

        public c tt(float f10) {
            this.f13662n = f10;
            return this;
        }

        public c uj(int i10) {
            this.sl = i10;
            return this;
        }

        public c ve(int i10) {
            this.f13659da = i10;
            return this;
        }

        public c c(long j10) {
            this.tt = j10;
            return this;
        }

        public c tt(int i10) {
            this.f13660i = i10;
            return this;
        }

        public c uj(String str) {
            this.f13666z = str;
            return this;
        }

        public c ve(String str) {
            this.yp = str;
            return this;
        }

        public c c(float f10) {
            this.uj = f10;
            return this;
        }

        public c tt(String str) {
            this.f13664u = str;
            return this;
        }

        public c c(int i10) {
            this.f13665x = i10;
            return this;
        }

        public c c(String str) {
            this.f13663t = str;
            return this;
        }

        public c c(SparseArray<com.byazt.hkv.uj.c> sparseArray) {
            this.f13658c = sparseArray;
            return this;
        }

        public c c(JSONObject jSONObject) {
            this.nu = jSONObject;
            return this;
        }

        public gr c() {
            return new gr(this);
        }
    }

    public JSONObject c() {
        if (this.gt == null) {
            this.gt = new JSONObject();
        }
        return this.gt;
    }

    private gr(c cVar) {
        this.my = -1;
        this.f13648c = cVar.sp;
        this.tt = cVar.f13657a;
        this.ve = cVar.f13662n;
        this.uj = cVar.uj;
        this.f13652n = cVar.ve;
        this.f13647a = cVar.tt;
        this.sp = cVar.f13665x;
        this.f13655x = cVar.f13660i;
        this.f13650i = cVar.f13659da;
        this.f13649da = cVar.sl;
        this.sl = cVar.f13663t;
        this.nu = cVar.f13658c;
        this.f13656z = cVar.f13661m;
        this.gt = cVar.nu;
        this.f13653t = cVar.f13664u;
        this.f13654u = cVar.yp;
        this.yp = cVar.f13666z;
        this.rh = cVar.rh;
        this.my = cVar.my;
        this.f13651m = cVar.gt;
    }
}

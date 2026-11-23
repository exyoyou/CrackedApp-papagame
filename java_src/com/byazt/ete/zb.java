package com.byazt.ete;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 184})
public class zb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f13992a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13993c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f13994n;
    public int tt;
    public double uj;
    public int ve;

    @com.byazt.zqa.c(c = {0, 1, 8, 2462})
    private static final class c extends com.byazt.nc.t {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f13995c;
        public int tt;
        public double uj;
        public String ve;

        public c(int i10, int i11, String str, double d10) {
            this.f13995c = i10;
            this.tt = i11;
            this.ve = str;
            this.uj = d10;
        }

        @Override // com.byazt.nc.t
        public double getDuration() {
            return this.uj;
        }

        @Override // com.byazt.nc.t
        public int getHeight() {
            return this.f13995c;
        }

        @Override // com.byazt.nc.t
        public String getImageUrl() {
            return this.ve;
        }

        @Override // com.byazt.nc.t
        public int getWidth() {
            return this.tt;
        }

        @Override // com.byazt.nc.t
        public boolean isValid() {
            String str;
            return this.f13995c > 0 && this.tt > 0 && (str = this.ve) != null && str.length() > 0;
        }
    }

    public boolean a() {
        return this.f13994n;
    }

    public String c() {
        return this.f13993c;
    }

    public boolean n() {
        return !TextUtils.isEmpty(this.f13993c) && this.tt > 0 && this.ve > 0;
    }

    public String sp() {
        return this.f13992a;
    }

    public int tt() {
        return this.tt;
    }

    public double uj() {
        return this.uj;
    }

    public int ve() {
        return this.ve;
    }

    public void c(String str) {
        this.f13993c = str;
    }

    public void tt(int i10) {
        this.ve = i10;
    }

    public void c(int i10) {
        this.tt = i10;
    }

    public void tt(String str) {
        this.f13992a = str;
    }

    public void c(double d10) {
        this.uj = d10;
    }

    public void c(boolean z10) {
        this.f13994n = z10;
    }

    public static com.byazt.nc.t c(zb zbVar) {
        if (zbVar == null || !zbVar.n()) {
            return null;
        }
        return new c(zbVar.ve(), zbVar.tt(), zbVar.c(), zbVar.uj());
    }

    public static final com.byazt.nc.t c(int i10, int i11, String str, double d10) {
        return new c(i10, i11, str, d10);
    }
}

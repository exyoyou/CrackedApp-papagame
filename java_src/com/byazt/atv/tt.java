package com.byazt.atv;

import com.byazt.sz.qy;
import com.byazt.xl.u;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 134, 13})
public class tt extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f11772a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f11773c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f11774n;
    public qy tt;
    public float uj;
    public float ve;

    @com.byazt.zqa.c(c = {0, 1, 134, 194})
    public static class c extends u.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f11775a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public JSONObject f11776c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f11777n;
        public qy tt;
        public float uj;
        public float ve;

        public c sl(int i10) {
            this.f11775a = i10;
            return this;
        }

        public c n(JSONObject jSONObject) {
            this.f11776c = jSONObject;
            return this;
        }

        public c tt(float f10) {
            this.uj = f10;
            return this;
        }

        public c c(qy qyVar) {
            this.tt = qyVar;
            return this;
        }

        public c n(boolean z10) {
            this.f11777n = z10;
            return this;
        }

        @Override // com.byazt.xl.u.c
        /* JADX INFO: renamed from: tt, reason: merged with bridge method [inline-methods] */
        public tt c() {
            return new tt(this);
        }

        public c c(float f10) {
            this.ve = f10;
            return this;
        }
    }

    public tt(c cVar) {
        super(cVar);
        this.f11772a = 3;
        this.f11773c = cVar.f11776c;
        this.tt = cVar.tt;
        this.ve = cVar.ve;
        this.uj = cVar.uj;
        this.f11774n = cVar.f11777n;
        this.f11772a = cVar.f11775a;
    }

    public boolean cu() {
        return this.f11774n;
    }

    public float d() {
        return this.ve;
    }

    public float eo() {
        return this.uj;
    }

    public qy or() {
        return this.tt;
    }

    public int qp() {
        return this.f11772a;
    }

    public JSONObject zb() {
        return this.f11773c;
    }
}

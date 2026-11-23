package com.byazt.ga;

import android.graphics.Bitmap;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 256, 42})
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f14375a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14376c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final String f14377da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<ve> f14378i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Bitmap f14379m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f14380n;
    public final int[][] sl;
    public final String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final JSONArray f14381t;
    public final int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final c f14382u;
    public final String uj;
    public final String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final String f14383x;
    public final tt yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final String f14384z;

    @com.byazt.zqa.c(c = {0, 1, 256, 64})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public C0316c f14385c = null;
        public boolean tt;

        /* JADX INFO: renamed from: com.byazt.ga.i$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, 256, 1402})
        public static class C0316c {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public float f14386c = 5.0f;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 256, 1937})
    public static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14387c;
        public int tt;
        public int ve;
    }

    @com.byazt.zqa.c(c = {0, 1, 256, 1943})
    public static class ve {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f14388a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14389c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public String f14390da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f14391i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f14392n;
        public c sl;
        public String sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public c f14393t;
        public int tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f14394u;
        public String uj;
        public String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f14395x;
        public int yp;

        @com.byazt.zqa.c(c = {0, 1, 256, 257})
        public static class c {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f14396c;
            public String tt;
        }
    }

    public i(int i10, int i11, String str, String str2, String str3, String str4, List<ve> list, String str5, int[][] iArr, JSONArray jSONArray, String str6, String str7, c cVar, tt ttVar, String str8) {
        this.f14376c = i10;
        this.tt = i11;
        this.ve = str;
        this.uj = str2;
        this.f14380n = str3;
        this.f14375a = str4;
        this.sp = str6;
        this.f14383x = str7;
        this.f14378i = list;
        this.f14377da = str5;
        this.sl = iArr;
        this.f14381t = jSONArray;
        this.f14382u = cVar;
        this.yp = ttVar;
        this.f14384z = str8;
    }

    public String a() {
        return this.f14383x;
    }

    public int c() {
        return this.f14376c;
    }

    public c da() {
        return this.f14382u;
    }

    public JSONArray i() {
        return this.f14381t;
    }

    public String m() {
        return this.f14384z;
    }

    public String n() {
        return this.sp;
    }

    public tt sl() {
        return this.yp;
    }

    public String sp() {
        return this.f14377da;
    }

    public String t() {
        return this.ve;
    }

    public int tt() {
        return this.tt;
    }

    public String u() {
        return this.uj;
    }

    public String uj() {
        return this.f14375a;
    }

    public List<ve> ve() {
        return this.f14378i;
    }

    public int[][] x() {
        return this.sl;
    }

    public String yp() {
        return this.f14380n;
    }

    public Bitmap z() {
        return this.f14379m;
    }

    public void c(Bitmap bitmap) {
        this.f14379m = bitmap;
    }
}

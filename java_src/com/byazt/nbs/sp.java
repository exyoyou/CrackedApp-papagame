package com.byazt.nbs;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1871, 91})
public class sp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<a> f17110a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f17111c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f17112da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public double f17113i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public c f17114n;
    public double sl;
    public List<x> sp;
    public String tt;
    public x uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public JSONObject f17115x;

    @com.byazt.zqa.c(c = {0, 1, 1871, 180})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f17116c;
        public List<da> tt = new ArrayList();

        public void c(String str) {
            this.f17116c = str;
        }

        public void c(List<da> list) {
            this.tt = list;
        }
    }

    public String a() {
        return this.ve;
    }

    public double c() {
        return this.f17113i;
    }

    public List<da> i() {
        c cVar = this.f17114n;
        if (cVar == null) {
            return null;
        }
        return cVar.tt;
    }

    public List<a> n() {
        return this.f17110a;
    }

    public JSONObject sp() {
        return this.f17115x;
    }

    public int tt() {
        return this.f17112da;
    }

    public List<x> uj() {
        return this.sp;
    }

    public double ve() {
        return this.sl;
    }

    public boolean x() {
        c cVar = this.f17114n;
        return (cVar == null || TextUtils.isEmpty(cVar.f17116c)) ? false : true;
    }

    public void c(String str) {
        try {
            this.f17113i = Double.valueOf(str).doubleValue();
        } catch (Throwable unused) {
        }
    }

    public void n(String str) {
        this.ve = str;
    }

    public void tt(String str) {
        try {
            this.sl = Double.valueOf(str).doubleValue();
        } catch (Throwable unused) {
        }
    }

    public void uj(String str) {
        this.tt = str;
    }

    public void ve(String str) {
        this.f17111c = str;
    }

    public void c(int i10) {
        this.f17112da = i10;
    }

    public void tt(List<a> list) {
        this.f17110a = list;
    }

    public void c(List<x> list) {
        this.sp = list;
    }

    public void c(x xVar) {
        this.uj = xVar;
    }

    public void c(c cVar) {
        this.f17114n = cVar;
    }

    public void c(JSONObject jSONObject) {
        this.f17115x = jSONObject;
    }
}

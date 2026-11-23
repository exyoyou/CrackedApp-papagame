package com.byazt.ete;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f13597a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13598c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public JSONObject f13599n;
    public int tt;
    public List<ic> uj = new ArrayList();
    public String ve;

    public void c(String str) {
        this.f13598c = str;
    }

    public void tt(String str) {
        this.ve = str;
    }

    public JSONObject ve() {
        return this.f13599n;
    }

    public int c() {
        return this.tt;
    }

    public List<ic> tt() {
        return this.uj;
    }

    public void c(int i10) {
        this.tt = i10;
    }

    public void c(ic icVar) {
        this.uj.add(icVar);
    }

    public void c(List<ic> list) {
        this.uj = list;
    }

    public void c(JSONObject jSONObject) {
        this.f13599n = jSONObject;
    }

    public void c(long j10) {
        this.f13597a = j10;
    }
}

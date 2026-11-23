package com.byazt.rb;

import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 23, 54})
public class ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f19429a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, TreeMap<Float, String>> f19430c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public JSONObject f19431da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f19432i = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f19433n;
    public String sp;
    public long tt;
    public String uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f19434x;

    @com.byazt.zqa.c(c = {0, 1, 23, 24})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f19435c;
        public String tt;
    }

    public long a() {
        return this.f19433n;
    }

    public JSONObject c() {
        return this.f19431da;
    }

    public int da() {
        return this.f19432i;
    }

    public String i() {
        return this.f19434x;
    }

    public String n() {
        return this.uj;
    }

    public c sp() {
        return this.f19429a;
    }

    public String toString() {
        return "AnimationModel{mKeyFramesMap=" + this.f19430c + ", mDuration=" + this.tt + ", mPlayCount=" + this.ve + ", mPlayDirection=" + this.uj + ", mDelay=" + this.f19433n + ", mName=" + this.f19434x + ", mPlayState=" + this.f19432i + ", mTransformOrigin='" + this.f19429a + "', mTimingFunction='" + this.sp + "'}";
    }

    public Map<String, TreeMap<Float, String>> tt() {
        return this.f19430c;
    }

    public int uj() {
        return this.ve;
    }

    public long ve() {
        return this.tt;
    }

    public String x() {
        return this.sp;
    }

    public void c(JSONObject jSONObject) {
        this.f19431da = jSONObject;
    }

    public void tt(long j10) {
        this.f19433n = j10;
    }

    public void ve(String str) {
        this.f19434x = str;
    }

    public void c(Map<String, TreeMap<Float, String>> map) {
        this.f19430c = map;
    }

    public void tt(String str) {
        this.sp = str;
    }

    public void c(long j10) {
        this.tt = j10;
    }

    public void tt(int i10) {
        this.f19432i = i10;
    }

    public void c(int i10) {
        this.ve = i10;
    }

    public void c(String str) {
        this.uj = str;
    }

    public void c(c cVar) {
        this.f19429a = cVar;
    }
}

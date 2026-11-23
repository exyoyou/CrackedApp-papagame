package com.byazt.pik;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.byazt.nr.m;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.Custom.TYPE_STRING, 54})
public class ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<c> f18712a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f18713c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f18714n;
    public List<tt> sp;
    public String tt;
    public n uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f18715x;

    public List<tt> a() {
        return this.sp;
    }

    public String c() {
        return this.f18713c;
    }

    public List<c> n() {
        return this.f18712a;
    }

    public boolean sp() {
        return this.f18715x;
    }

    public String tt() {
        return this.tt;
    }

    public n uj() {
        return this.uj;
    }

    public String ve() {
        return this.ve;
    }

    public void c(String str) {
        this.f18713c = str;
    }

    public void tt(String str) {
        this.tt = str;
    }

    public void ve(String str) {
        this.ve = str;
    }

    public void c(n nVar) {
        this.uj = nVar;
    }

    public void tt(List<tt> list) {
        this.sp = list;
    }

    public void c(float f10) {
        this.f18714n = f10;
    }

    public void c(List<c> list) {
        this.f18712a = list;
    }

    public void c(boolean z10) {
        this.f18715x = z10;
    }

    public boolean c(JSONObject jSONObject) {
        String strTt = tt();
        if (TextUtils.isEmpty(strTt)) {
            return true;
        }
        try {
            Object objC = com.byazt.kx.c.c(com.byazt.jze.tt.c(strTt)).c(jSONObject);
            return objC != null && Boolean.TRUE.equals(objC);
        } catch (Exception e10) {
            m.ve("TTFeatureRule", "匹配过滤器失败: ".concat(String.valueOf(strTt)), e10);
            return false;
        }
    }
}

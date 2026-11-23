package com.switfpass.pay.thread;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f82686f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f82687g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f82688h = -2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f82689i = -3;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f82690j = -4;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f82691k = -5;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f82692l = -6;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f82693m = 460;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f82694n = 461;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f82695o = 462;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f82696p = 460;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static Map f82697q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public JSONObject f82698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public JSONArray f82699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f82700c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f82701d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f82702e;

    static {
        HashMap map = new HashMap();
        f82697q = map;
        map.put(-1, "网络不可用");
        f82697q.put(-2, "发生未知错误");
        f82697q.put(-3, "网络繁忙，请稍候再试！");
        f82697q.put(-4, "读取数据超时");
        f82697q.put(-5, "网络连接错误");
        f82697q.put(-6, "验证数据失败");
        f82697q.put(460, "用户名已经存在");
        f82697q.put(461, "推荐人不存在");
        f82697q.put(Integer.valueOf(f82695o), "推荐人不能推荐了");
        f82697q.put(460, "应用不存在");
    }

    public static String a(int i10) {
        return (String) f82697q.get(Integer.valueOf(i10));
    }

    public static boolean d(int i10) {
        return i10 != 0;
    }

    public String b() {
        return !TextUtils.isEmpty(this.f82701d) ? this.f82701d : (String) f82697q.get(Integer.valueOf(this.f82700c));
    }

    public boolean c() {
        return (this.f82700c == 0 && TextUtils.isEmpty(this.f82701d)) ? false : true;
    }

    public boolean e() {
        return this.f82700c < 0;
    }

    public void f(String str) {
        this.f82701d = str;
    }
}

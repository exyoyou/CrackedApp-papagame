package com.tencent.stat.common;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.tencent.stat.StatConfig;
import com.umeng.analytics.pro.bm;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f83878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f83879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    DisplayMetrics f83880c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f83881d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f83882e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f83883f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    String f83884g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f83885h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f83886i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f83887j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f83888k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f83889l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f83890m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    Context f83891n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f83892o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f83893p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f83894q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f83895r;

    private c(Context context) {
        this.f83879b = StatConstants.VERSION;
        this.f83881d = Build.VERSION.SDK_INT;
        this.f83882e = Build.MODEL;
        this.f83883f = Build.MANUFACTURER;
        this.f83884g = Locale.getDefault().getLanguage();
        this.f83889l = 0;
        this.f83890m = null;
        this.f83892o = null;
        this.f83893p = null;
        this.f83894q = null;
        this.f83895r = null;
        this.f83891n = context;
        this.f83880c = k.d(context);
        this.f83878a = k.n(context);
        this.f83885h = StatConfig.getInstallChannel(context);
        this.f83886i = k.m(context);
        this.f83887j = TimeZone.getDefault().getID();
        this.f83889l = k.s(context);
        this.f83888k = k.t(context);
        this.f83890m = context.getPackageName();
        if (this.f83881d >= 14) {
            this.f83892o = k.A(context);
        }
        this.f83893p = k.z(context).toString();
        this.f83894q = k.x(context);
        this.f83895r = k.e();
    }

    void a(JSONObject jSONObject) throws JSONException {
        jSONObject.put("sr", this.f83880c.widthPixels + WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD + this.f83880c.heightPixels);
        k.a(jSONObject, x.a.f97584l, this.f83878a);
        k.a(jSONObject, "ch", this.f83885h);
        k.a(jSONObject, "mf", this.f83883f);
        k.a(jSONObject, x.a.f97582j, this.f83879b);
        k.a(jSONObject, "ov", Integer.toString(this.f83881d));
        jSONObject.put(bm.f84421x, 1);
        k.a(jSONObject, "op", this.f83886i);
        k.a(jSONObject, "lg", this.f83884g);
        k.a(jSONObject, LiveConfigKey.MEDIUM, this.f83882e);
        k.a(jSONObject, "tz", this.f83887j);
        int i10 = this.f83889l;
        if (i10 != 0) {
            jSONObject.put("jb", i10);
        }
        k.a(jSONObject, LiveConfigKey.STANDARD, this.f83888k);
        k.a(jSONObject, "apn", this.f83890m);
        if (k.h(this.f83891n)) {
            JSONObject jSONObject2 = new JSONObject();
            k.a(jSONObject2, "bs", k.C(this.f83891n));
            k.a(jSONObject2, "ss", k.D(this.f83891n));
            if (jSONObject2.length() > 0) {
                k.a(jSONObject, "wf", jSONObject2.toString());
            }
        }
        k.a(jSONObject, "sen", this.f83892o);
        k.a(jSONObject, "cpu", this.f83893p);
        k.a(jSONObject, "ram", this.f83894q);
        k.a(jSONObject, "rom", this.f83895r);
    }
}

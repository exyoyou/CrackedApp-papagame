package com.tencent.stat.a;

import android.content.Context;
import com.tencent.stat.DeviceInfo;
import com.tencent.stat.StatConfig;
import com.tencent.stat.n;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f83832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f83833b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f83835d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected DeviceInfo f83836e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f83837f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f83838g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected String f83839h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected String f83840i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected Context f83842k;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected String f83841j = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected long f83834c = System.currentTimeMillis() / 1000;

    e(Context context, int i10) {
        this.f83833b = null;
        this.f83836e = null;
        this.f83838g = null;
        this.f83839h = null;
        this.f83840i = null;
        this.f83842k = context;
        this.f83835d = i10;
        this.f83833b = StatConfig.getAppKey(context);
        this.f83838g = StatConfig.getCustomUserId(context);
        this.f83836e = n.a(context).b(context);
        this.f83837f = com.tencent.stat.common.k.w(context).intValue();
        this.f83840i = com.tencent.stat.common.k.n(context);
        this.f83839h = StatConfig.getInstallChannel(context);
    }

    public abstract f a();

    public abstract boolean a(JSONObject jSONObject);

    public long b() {
        return this.f83834c;
    }

    public Context c() {
        return this.f83842k;
    }

    public String d() {
        try {
            JSONObject jSONObject = new JSONObject();
            b(jSONObject);
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public boolean b(JSONObject jSONObject) {
        try {
            com.tencent.stat.common.k.a(jSONObject, "ky", this.f83833b);
            jSONObject.put("et", a().a());
            DeviceInfo deviceInfo = this.f83836e;
            if (deviceInfo != null) {
                jSONObject.put(DeviceInfo.TAG_IMEI, deviceInfo.getImei());
                com.tencent.stat.common.k.a(jSONObject, "mc", this.f83836e.getMac());
                jSONObject.put("ut", this.f83836e.getUserType());
            }
            com.tencent.stat.common.k.a(jSONObject, "cui", this.f83838g);
            if (a() != f.SESSION_ENV) {
                com.tencent.stat.common.k.a(jSONObject, x.a.f97584l, this.f83840i);
                com.tencent.stat.common.k.a(jSONObject, "ch", this.f83839h);
            }
            com.tencent.stat.common.k.a(jSONObject, "mid", StatConfig.getMid(this.f83842k));
            jSONObject.put("idx", this.f83837f);
            jSONObject.put("si", this.f83835d);
            jSONObject.put("ts", this.f83834c);
            if (this.f83836e.getUserType() == 0 && com.tencent.stat.common.k.E(this.f83842k) == 1) {
                jSONObject.put("ia", 1);
            }
            return a(jSONObject);
        } catch (Throwable unused) {
            return false;
        }
    }
}

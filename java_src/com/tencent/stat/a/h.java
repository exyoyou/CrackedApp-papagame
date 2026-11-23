package com.tencent.stat.a;

import android.content.Context;
import com.tencent.stat.StatAppMonitor;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class h extends e {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static String f83854l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static String f83855m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StatAppMonitor f83856a;

    public h(Context context, int i10, StatAppMonitor statAppMonitor) {
        super(context, i10);
        this.f83856a = null;
        this.f83856a = statAppMonitor.m42clone();
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.MONITOR_STAT;
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) throws JSONException {
        StatAppMonitor statAppMonitor = this.f83856a;
        if (statAppMonitor == null) {
            return false;
        }
        jSONObject.put("na", statAppMonitor.getInterfaceName());
        jSONObject.put("rq", this.f83856a.getReqSize());
        jSONObject.put("rp", this.f83856a.getRespSize());
        jSONObject.put("rt", this.f83856a.getResultType());
        jSONObject.put("tm", this.f83856a.getMillisecondsConsume());
        jSONObject.put("rc", this.f83856a.getReturnCode());
        jSONObject.put("sp", this.f83856a.getSampling());
        if (f83855m == null) {
            f83855m = com.tencent.stat.common.k.r(this.f83842k);
        }
        com.tencent.stat.common.k.a(jSONObject, x.a.f97584l, f83855m);
        if (f83854l == null) {
            f83854l = com.tencent.stat.common.k.m(this.f83842k);
        }
        com.tencent.stat.common.k.a(jSONObject, "op", f83854l);
        jSONObject.put("cn", com.tencent.stat.common.k.p(this.f83842k));
        return true;
    }
}

package com.alipay.security.mobile.module.a;

import android.content.Context;
import com.alipay.android.phone.mrpc.core.g;
import com.alipay.android.phone.mrpc.core.l;
import com.alipay.android.phone.mrpc.core.v;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.AppListCmdRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListResult;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static b f7262f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static DeviceDataReportResult f7263g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f7264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g f7265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private i0.a f7266c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j0.b f7267d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private j0.a f7268e;

    private b(Context context) {
        this.f7265b = null;
        this.f7266c = null;
        this.f7267d = null;
        this.f7268e = null;
        this.f7264a = context;
        try {
            l lVar = new l();
            lVar.f6946a = z.a.a();
            v vVar = new v(context);
            this.f7265b = vVar;
            this.f7266c = (i0.a) vVar.a(i0.a.class, lVar);
            this.f7267d = (j0.b) this.f7265b.a(j0.b.class, lVar);
            this.f7268e = (j0.a) this.f7265b.a(j0.a.class, lVar);
        } catch (Exception e10) {
            c0.d.c(e10);
        }
    }

    public static synchronized b c(Context context) {
        if (f7262f == null) {
            f7262f = new b(context);
        }
        return f7262f;
    }

    @Override // com.alipay.security.mobile.module.a.a
    public final AppListResult a(String str, String str2, String str3, String str4) {
        try {
            AppListCmdRequest appListCmdRequest = new AppListCmdRequest();
            appListCmdRequest.os = str;
            appListCmdRequest.apdid = str4;
            appListCmdRequest.userId = str2;
            appListCmdRequest.token = str3;
            return this.f7268e.b(appListCmdRequest);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.alipay.security.mobile.module.a.a
    public final DeviceDataReportResult b(DeviceDataReportRequest deviceDataReportRequest) {
        if (this.f7267d != null) {
            try {
                f7263g = null;
                new Thread(new c(this, deviceDataReportRequest)).start();
                for (int i10 = 300000; f7263g == null && i10 >= 0; i10 -= 50) {
                    Thread.sleep(50L);
                }
            } catch (Exception e10) {
                c0.d.c(e10);
            }
        }
        return f7263g;
    }

    @Override // com.alipay.security.mobile.module.a.a
    public final boolean a(String str) {
        i0.a aVar;
        String strA;
        if (c0.a.b(str) || (aVar = this.f7266c) == null) {
            return false;
        }
        try {
            strA = aVar.a(c0.a.h(str));
        } catch (Exception unused) {
            strA = null;
        }
        if (c0.a.b(strA)) {
            return false;
        }
        try {
            return ((Boolean) new JSONObject(strA).get("success")).booleanValue();
        } catch (JSONException e10) {
            c0.d.c(e10);
            return false;
        }
    }
}

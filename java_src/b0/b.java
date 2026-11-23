package b0;

import a0.c;
import a0.d;
import android.content.Context;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListResult;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static com.alipay.security.mobile.module.a.a f367b;

    public static a c(Context context) {
        if (context == null) {
            return null;
        }
        if (f366a == null) {
            f367b = com.alipay.security.mobile.module.a.b.c(context);
            f366a = new b();
        }
        return f366a;
    }

    @Override // b0.a
    public final a0.a a(String str, String str2, String str3, String str4) {
        AppListResult appListResultA = f367b.a(str, str2, str3, str4);
        if (appListResultA == null) {
            return null;
        }
        a0.a aVar = new a0.a(appListResultA.appListData, appListResultA.appListVer);
        aVar.f37a = appListResultA.success;
        aVar.f38b = appListResultA.resultCode;
        return aVar;
    }

    @Override // b0.a
    public final c b(d dVar) {
        DeviceDataReportRequest deviceDataReportRequest = new DeviceDataReportRequest();
        deviceDataReportRequest.os = c0.a.f(dVar.f46a);
        deviceDataReportRequest.apdid = c0.a.f(dVar.f47b);
        deviceDataReportRequest.pubApdid = c0.a.f(dVar.f48c);
        deviceDataReportRequest.priApdid = c0.a.f(dVar.f49d);
        deviceDataReportRequest.token = c0.a.f(dVar.f50e);
        deviceDataReportRequest.umidToken = c0.a.f(dVar.f51f);
        deviceDataReportRequest.version = c0.a.f(dVar.f52g);
        deviceDataReportRequest.lastTime = c0.a.f(dVar.f53h);
        Map<String, String> map = dVar.f54i;
        if (map == null) {
            map = new HashMap<>();
        }
        deviceDataReportRequest.dataMap = map;
        DeviceDataReportResult deviceDataReportResultB = f367b.b(deviceDataReportRequest);
        c cVar = new c();
        if (deviceDataReportResultB == null) {
            return null;
        }
        cVar.f37a = deviceDataReportResultB.success;
        cVar.f38b = deviceDataReportResultB.resultCode;
        cVar.f39c = deviceDataReportResultB.apdid;
        cVar.f40d = deviceDataReportResultB.token;
        cVar.f41e = deviceDataReportResultB.currentTime;
        cVar.f42f = deviceDataReportResultB.version;
        cVar.f43g = deviceDataReportResultB.vkeySwitch;
        cVar.f44h = deviceDataReportResultB.bugTrackSwitch;
        cVar.f45i = deviceDataReportResultB.appListVer;
        return cVar;
    }

    @Override // b0.a
    public final boolean a(String str) {
        return f367b.a(str);
    }
}

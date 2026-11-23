package cn.fly.commons;

import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import cn.fly.tools.xcrash.XCrash;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f1414a;

    public static void a(boolean z10) {
        try {
            aa.a(z10);
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
        }
    }

    public static int b() {
        int iD = aa.d();
        if (iD == 1) {
            return 1;
        }
        return iD == 0 ? -1 : 0;
    }

    public static boolean c() {
        int iB = b();
        if (iB == 2 || iB == 1) {
            return c.c();
        }
        return false;
    }

    public static boolean d() {
        int iB = b();
        if (iB != 2 && iB != 1) {
            return true;
        }
        aa.g();
        return true ^ c.b();
    }

    public static HashMap<String, Object> e() {
        final HashMap<String, Object>[] mapArr = {new HashMap<>()};
        DH.requester(FlySDK.getContext()).getCarrierStrict(false).getDetailNetworkTypeForStatic().getMIUIVersionForFly().getSignMD5().getODH().request(new DH.DHResponder() { // from class: cn.fly.commons.q.1
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                mapArr[0] = q.a(dHResponse.getDetailNetworkTypeForStatic());
                mapArr[0].put(x.b("006_ehcbdgccTe1ci"), Integer.valueOf(FlySDK.SDK_VERSION_CODE));
                mapArr[0].put(x.b("004Rcbcfchcb"), f.a((FlyProduct) null));
                mapArr[0].put(x.b("006cii0cc^eXci"), Integer.valueOf(DH.SyncMtd.getAppVersion()));
                mapArr[0].put(x.b("007bcEcicichLe%ci"), dHResponse.getCarrierStrict(new int[0]));
                mapArr[0].put(x.b("005Scecjcb%ef"), DH.SyncMtd.getModelForFly());
                mapArr[0].put(x.b("007-deWcbhYcjcidb"), DH.SyncMtd.getManufacturerForFly());
                mapArr[0].put(x.b("006Eehdbehcc1eNci"), DH.SyncMtd.getOSVersionNameForFly());
                mapArr[0].put(x.b("005-cfchcc[eCci"), dHResponse.getMIUIVersionForFly());
                mapArr[0].put(x.b("009BehdbehccQeKcichAdh"), Integer.valueOf(DH.SyncMtd.getOSVersionIntForFly()));
                mapArr[0].put(x.b("010bf=chFedhHebchceKe"), Long.valueOf(System.currentTimeMillis()));
                mapArr[0].put(x.b("006cii2cecbgh"), dHResponse.getSignMD5());
                mapArr[0].put(x.b("005[eeci:cdOcb"), DH.SyncMtd.getBrandForFly());
                mapArr[0].put("usridt", ad.e());
                mapArr[0].put(x.b("0041cecjchcb"), dHResponse.getODH());
            }
        });
        return mapArr[0];
    }

    public static boolean f() {
        boolean zNrInited;
        try {
            zNrInited = XCrash.nrInited();
        } catch (Throwable unused) {
            FlyLog.getInstance().d("[HH] xc not found", new Object[0]);
            zNrInited = false;
        }
        boolean z10 = ((Integer) c.a("nv", 0)).intValue() == 1;
        FlyLog.getInstance().d("[HH] nrspt-r: " + z10 + " nrspt-i: " + zNrInited, new Object[0]);
        return z10 && zNrInited;
    }

    public static String a() {
        if (TextUtils.isEmpty(x.f1473a) && FlySDK.getContext() != null) {
            x.a(FlySDK.getContext());
        }
        if (TextUtils.isEmpty(x.f1473a)) {
            return x.f1475c;
        }
        return x.f1473a;
    }

    public static HashMap<String, Object> a(String str) {
        HashMap<String, Object> map = new HashMap<>();
        map.put(x.b("006cii-dg@e;db"), a());
        map.put(x.b("006ciii_dgdi"), DH.SyncMtd.getPackageName());
        map.put(x.b("006cii5ccKeHci"), DH.SyncMtd.getAppVersionName());
        map.put(x.b("004ifch"), String.valueOf(DH.SyncMtd.getPlatformCode()));
        map.put(x.b("011deh*efcjcidg^h;db0ie"), str);
        String strB = f.b();
        if (!TextUtils.isEmpty(strB)) {
            map.put(x.b("004Ecbcfchcb"), strB);
        }
        return map;
    }

    public static String a(String str, String str2, String str3, boolean z10) {
        if (d()) {
            FlyLog.getInstance().d("isForb: true", new Object[0]);
            return null;
        }
        return j.a().a(str, str2, str3, z10);
    }
}

package cn.fly.tcp.lifecycle;

import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.commons.ac;
import cn.fly.commons.ad;
import cn.fly.commons.ae;
import cn.fly.commons.j;
import cn.fly.commons.n;
import cn.fly.commons.q;
import cn.fly.tcp.f.c;
import cn.fly.tools.network.NetworkHelper;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.HashonHelper;
import cn.fly.tools.utils.i;
import com.haima.hmcp.ConstantsInternal;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class PSIDManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static PSIDManager f1659a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f1662d = new byte[0];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AtomicBoolean f1663e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AtomicBoolean f1664f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1665g = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f1661c = ae.b().t();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f1660b = cn.fly.tcp.a.a().f();

    public static class NoPsrdException extends Exception {
        public NoPsrdException() {
            super("No PSRD got from Pu5h");
        }
    }

    private PSIDManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        try {
            String strB = b();
            c.a().b("chk migrt, nrd: " + strB + ", ord: " + this.f1661c + ", done: " + this.f1664f);
            if (strB.equals(this.f1661c) || !this.f1664f.compareAndSet(false, true)) {
                return;
            }
            try {
                if (TextUtils.isEmpty(this.f1661c)) {
                    a(strB);
                } else {
                    a(this.f1661c, strB);
                }
                ae.b().g(strB);
                this.f1661c = strB;
            } catch (Throwable th) {
                this.f1664f.set(false);
                throw th;
            }
        } catch (Throwable unused) {
            c.a().b("migr: f");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (cn.fly.tcp.a.a().d() && this.f1663e.compareAndSet(false, true)) {
            b(cn.fly.tcp.a.a().c(), cn.fly.tcp.a.a().e());
        }
    }

    public String c() {
        return this.f1660b + DH.SyncMtd.getPackageName();
    }

    public String d() throws NoPsrdException {
        String strB = b();
        return !TextUtils.isEmpty(strB) ? strB : c();
    }

    public boolean e() throws NoPsrdException {
        String strB = b();
        boolean z10 = (strB == null || strB.equals(this.f1661c)) ? false : true;
        c.a().b("isRsrdChg: " + z10);
        return z10;
    }

    public void f() {
        ac.f1042a.execute(new i() { // from class: cn.fly.tcp.lifecycle.PSIDManager.1
            @Override // cn.fly.tools.utils.i
            protected void a() throws Throwable {
                try {
                    int iD = ad.d();
                    c.a().b("chk migrt, pu5h sta: " + iD);
                    if (iD == 1) {
                        PSIDManager.this.h();
                    } else if (iD == 2) {
                        PSIDManager.this.g();
                    }
                } catch (Throwable unused) {
                    c.a().b("migr: f");
                }
            }
        });
    }

    public static PSIDManager a() {
        if (f1659a == null) {
            synchronized (PSIDManager.class) {
                if (f1659a == null) {
                    f1659a = new PSIDManager();
                }
            }
        }
        return f1659a;
    }

    public String b() throws NoPsrdException {
        String str;
        synchronized (this.f1662d) {
            Callable<Map<String, Object>> callableC = ad.c();
            str = null;
            if (callableC != null) {
                c.a().b("getPsrd: Nw PU5H");
                try {
                    Map<String, Object> mapCall = callableC.call();
                    if (mapCall != null && mapCall.containsKey("psid")) {
                        str = (String) mapCall.get("psid");
                    }
                    c.a().b("getPsrd: " + str);
                    if (TextUtils.isEmpty(str)) {
                        c.a().b("getPsrd: No val frm PU5H");
                        throw new NoPsrdException();
                    }
                } catch (Throwable unused) {
                    c.a().b("getPsrd: Exc frm PU5H");
                    throw new NoPsrdException();
                }
            } else {
                c.a().b("getPsrd: No/Od PU5H");
            }
        }
        return str;
    }

    private void a(String str, String str2) throws Throwable {
        c.a().b("=> rid chg migrt");
        NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
        networkTimeOut.readTimout = 10000;
        networkTimeOut.connectionTimeout = 5000;
        HashMap<String, Object> map = new HashMap<>();
        map.put(n.a("006bhh?cfBd;ca"), FlySDK.getAppkey());
        map.put(n.a("003hUcfch"), DH.SyncMtd.getPackageName());
        map.put("ridOld", str);
        map.put("ridNew", str2);
        map.put(n.a("004hebg"), Integer.valueOf(DH.SyncMtd.getPlatformCode()));
        map.put("appVer", String.valueOf(DH.SyncMtd.getAppVersion()));
        String str3 = j.a().a("tcig") + "/tcp/push/pbsr";
        c.a().b("url : " + str3 + " -> bd : " + map);
        String strHttpPostNew = new NetworkHelper().httpPostNew(str3, map, null, networkTimeOut);
        c.a().b("url : " + str3 + " -> rp : " + strHttpPostNew);
        HashonHelper.fromJson(strHttpPostNew);
        c.a().b("<= rid chg migrt");
    }

    private void b(String str, String str2) {
        try {
            c.a().b("=> did chg migrt");
            NetworkHelper networkHelper = new NetworkHelper();
            NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
            networkTimeOut.connectionTimeout = 2000;
            networkTimeOut.readTimout = 5000;
            HashMap<String, Object> map = new HashMap<>();
            map.put(n.a("006bhhFcf;dNca"), q.a());
            map.put(n.a("003h:cfch"), DH.SyncMtd.getPackageName());
            map.put("duidOld", str2);
            map.put("duidNew", str);
            map.put("appVer", DH.SyncMtd.getAppVersionName());
            map.put(n.a("004hebg"), Integer.valueOf(DH.SyncMtd.getPlatformCode()));
            String str3 = j.a().a("tcig") + "/tcp/push/pbsd";
            c.a().b("[Request]TP url = " + str3 + "\nheaders = " + ((Object) null) + "\nvalues = " + map);
            String strHttpPostNew = networkHelper.httpPostNew(str3, map, null, networkTimeOut);
            c.a().b("[Response]TP url = " + str3 + "\nresp = " + strHttpPostNew);
            HashMap mapFromJson = HashonHelper.fromJson(strHttpPostNew);
            if (mapFromJson != null && !mapFromJson.isEmpty() && !ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS.equals(String.valueOf(mapFromJson.get(n.a("004aDbiba(d"))))) {
                throw new Throwable("Req failed: " + strHttpPostNew);
            }
            c.a().b("<= did chg migrt");
            this.f1665g = 1;
        } catch (Throwable th) {
            c.a().a(th);
            int i10 = this.f1665g;
            if (i10 < 3) {
                try {
                    Thread.sleep(i10 * 1000);
                } catch (InterruptedException unused) {
                    c.a().a(th);
                }
                this.f1665g++;
                b(str, str2);
                return;
            }
            this.f1665g = 1;
        }
    }

    private void a(String str) throws Throwable {
        c.a().b("=> d2r migrt");
        NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
        networkTimeOut.readTimout = 10000;
        networkTimeOut.connectionTimeout = 5000;
        HashMap<String, Object> map = new HashMap<>();
        map.put(n.a("006bhh0cf2d>ca"), FlySDK.getAppkey());
        map.put(n.a("003h6cfch"), DH.SyncMtd.getPackageName());
        map.put("duidOld", this.f1660b);
        map.put("ridNew", str);
        map.put(n.a("004hebg"), Integer.valueOf(DH.SyncMtd.getPlatformCode()));
        map.put("appVer", String.valueOf(DH.SyncMtd.getAppVersion()));
        String str2 = j.a().a("tcig") + "/tcp/push/pdctr";
        c.a().b("url : " + str2 + " -> bd : " + map);
        String strHttpPostNew = new NetworkHelper().httpPostNew(str2, map, null, networkTimeOut);
        c.a().b("url : " + str2 + " -> rp : " + strHttpPostNew);
        HashonHelper.fromJson(strHttpPostNew);
        c.a().b("<= d2r migrt");
    }
}

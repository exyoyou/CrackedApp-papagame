package com.beizi.ad.internal.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.beizi.ad.model.BeiZiLocation;
import com.beizi.fusion.model.EnvInfo;
import com.beizi.fusion.model.RequestInfo;
import com.beizi.fusion.model.ResponseInfo;
import com.beizi.fusion.tool.as;
import com.haima.hmcp.Constants;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class q {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static q f9040i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f9042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f9043c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f9045e;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private EnvInfo f9049j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Context f9050k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f9051l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f9052m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f9053n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f9054o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f9055p;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.beizi.ad.model.i.d f9046f = com.beizi.ad.model.i.d.NET_OTHER;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.beizi.ad.model.i.c f9047g = com.beizi.ad.model.i.c.ISP_OTHER;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f9041a = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f9048h = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f9044d = "WGS84";

    private q() {
        RequestInfo requestInfo;
        this.f9054o = 86400000L;
        Context contextE = com.beizi.fusion.c.b.a().e();
        this.f9050k = contextE;
        if (contextE == null || (requestInfo = RequestInfo.getInstance(contextE)) == null) {
            return;
        }
        if (!requestInfo.isInit) {
            requestInfo.init();
        }
        this.f9052m = com.beizi.fusion.c.b.a().u();
        this.f9053n = com.beizi.fusion.c.b.a().v();
        if (this.f9052m) {
            long locationFrequency = ResponseInfo.getInstance(this.f9050k).getLocationFrequency();
            if (locationFrequency > 0) {
                this.f9054o = locationFrequency;
            }
        }
        this.f9049j = requestInfo.getEnvInfo();
    }

    public static synchronized q a() {
        if (f9040i == null) {
            synchronized (q.class) {
                if (f9040i == null) {
                    f9040i = new q();
                }
            }
        }
        return f9040i;
    }

    @SuppressLint({"MissingPermission"})
    private synchronized void e() {
        try {
            if (TextUtils.isEmpty(this.f9042b) && TextUtils.isEmpty(this.f9043c)) {
                if (this.f9051l) {
                    return;
                }
                this.f9051l = true;
                if (com.beizi.ad.b.a() == null || com.beizi.ad.b.a().a()) {
                    Context contextC = com.beizi.ad.internal.c.a().c();
                    if (contextC.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f74783g) == 0 || contextC.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f74784h) == 0) {
                        if (this.f9055p == 0) {
                            this.f9055p = ((Long) as.b(this.f9050k, "LOCATION_TIME", 0L)).longValue();
                        }
                        if (this.f9055p > 0 && System.currentTimeMillis() - this.f9055p < this.f9054o) {
                            this.f9042b = (String) as.b(this.f9050k, "LOCATION_LONGITUDE", "");
                            this.f9043c = (String) as.b(this.f9050k, "LOCATION_LATITUDE", "");
                            this.f9045e = ((Long) as.b(this.f9050k, "LOCATION_TIMESTAMP", 0L)).longValue();
                            this.f9051l = false;
                            return;
                        }
                        LocationManager locationManager = (LocationManager) contextC.getSystemService("location");
                        if (locationManager == null) {
                            f();
                            this.f9051l = false;
                            return;
                        }
                        String bestProvider = locationManager.getBestProvider(new Criteria(), true);
                        if (TextUtils.isEmpty(bestProvider)) {
                            f();
                            this.f9051l = false;
                            return;
                        }
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        this.f9055p = jCurrentTimeMillis;
                        as.a(this.f9050k, "LOCATION_TIME", (Object) Long.valueOf(jCurrentTimeMillis));
                        Location lastKnownLocation = locationManager.getLastKnownLocation(bestProvider);
                        if (lastKnownLocation != null) {
                            this.f9042b = String.valueOf(lastKnownLocation.getLongitude());
                            this.f9043c = String.valueOf(lastKnownLocation.getLatitude());
                            this.f9045e = lastKnownLocation.getTime();
                            as.a(this.f9050k, "LOCATION_LONGITUDE", (Object) this.f9042b);
                            as.a(this.f9050k, "LOCATION_LATITUDE", (Object) this.f9043c);
                            as.a(this.f9050k, "LOCATION_TIMESTAMP", (Object) Long.valueOf(this.f9045e));
                        } else {
                            f();
                        }
                    } else {
                        f();
                    }
                } else {
                    f();
                }
                this.f9051l = false;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void f() {
        BeiZiLocation beiZiLocationB;
        if (com.beizi.ad.b.a() == null || (beiZiLocationB = com.beizi.ad.b.a().b()) == null) {
            return;
        }
        this.f9042b = beiZiLocationB.getLongitude();
        this.f9043c = beiZiLocationB.getLatitude();
        this.f9044d = beiZiLocationB.getType();
        this.f9045e = beiZiLocationB.getTime();
    }

    public com.beizi.ad.model.i.d b() {
        com.beizi.ad.model.i.d dVar = this.f9046f;
        com.beizi.ad.model.i.d dVar2 = com.beizi.ad.model.i.d.NET_OTHER;
        if (dVar == dVar2) {
            EnvInfo envInfo = this.f9049j;
            if (envInfo != null) {
                String net2 = envInfo.getNet();
                if ("1".equals(net2)) {
                    this.f9046f = com.beizi.ad.model.i.d.NET_3G;
                } else if ("2".equals(net2)) {
                    this.f9046f = com.beizi.ad.model.i.d.NET_4G;
                } else if ("3".equals(net2)) {
                    this.f9046f = com.beizi.ad.model.i.d.NET_5G;
                } else if ("4".equals(net2)) {
                    this.f9046f = com.beizi.ad.model.i.d.NET_WIFI;
                } else if ("5".equals(net2)) {
                    this.f9046f = dVar2;
                } else if ("6".equals(net2)) {
                    this.f9046f = com.beizi.ad.model.i.d.NET_2G;
                }
            } else {
                this.f9046f = r.a(com.beizi.ad.internal.c.a().f8769j);
            }
        }
        return this.f9046f;
    }

    public com.beizi.ad.model.i.c c() {
        com.beizi.ad.model.i.c cVar = this.f9047g;
        com.beizi.ad.model.i.c cVar2 = com.beizi.ad.model.i.c.ISP_OTHER;
        if (cVar == cVar2) {
            EnvInfo envInfo = this.f9049j;
            if (envInfo != null) {
                String isp = envInfo.getIsp();
                if ("0".equals(isp)) {
                    this.f9047g = com.beizi.ad.model.i.c.ISP_UNKNOWN;
                } else if ("1".equals(isp)) {
                    this.f9047g = com.beizi.ad.model.i.c.ISP_CN_MOBILE;
                } else if ("2".equals(isp)) {
                    this.f9047g = com.beizi.ad.model.i.c.ISP_CN_UNICOM;
                } else if ("3".equals(isp)) {
                    this.f9047g = com.beizi.ad.model.i.c.ISP_CN_TEL;
                }
            } else if (cVar == cVar2) {
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) com.beizi.ad.internal.c.a().f8769j.getSystemService("phone");
                    if (telephonyManager != null && 5 == telephonyManager.getSimState()) {
                        String simOperator = telephonyManager.getSimOperator();
                        if (simOperator == null) {
                            this.f9047g = com.beizi.ad.model.i.c.ISP_UNKNOWN;
                        } else if (simOperator.equals("46000") || simOperator.equals("46002") || simOperator.equals("46007")) {
                            this.f9047g = com.beizi.ad.model.i.c.ISP_CN_MOBILE;
                        } else if (simOperator.equals("46001")) {
                            this.f9047g = com.beizi.ad.model.i.c.ISP_CN_UNICOM;
                        } else if (simOperator.equals("46003")) {
                            this.f9047g = com.beizi.ad.model.i.c.ISP_CN_TEL;
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return this.f9047g;
    }

    @SuppressLint({"MissingPermission"})
    public void d() {
        try {
            if (TextUtils.isEmpty(this.f9042b) && TextUtils.isEmpty(this.f9043c) && !this.f9051l) {
                if (this.f9052m) {
                    e();
                    return;
                }
                this.f9051l = true;
                if (com.beizi.ad.b.a() != null && !com.beizi.ad.b.a().a()) {
                    f();
                    return;
                }
                Context contextC = com.beizi.ad.internal.c.a().c();
                boolean z10 = contextC.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f74783g) == 0;
                boolean z11 = contextC.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f74784h) == 0;
                if (!z10 && !z11) {
                    f();
                    return;
                }
                LocationManager locationManager = (LocationManager) contextC.getSystemService("location");
                if (locationManager == null) {
                    this.f9051l = false;
                    f();
                    return;
                }
                Location lastKnownLocation = null;
                if (this.f9053n) {
                    String bestProvider = locationManager.getBestProvider(new Criteria(), true);
                    if (!TextUtils.isEmpty(bestProvider)) {
                        lastKnownLocation = locationManager.getLastKnownLocation(bestProvider);
                    } else if (z10) {
                        lastKnownLocation = locationManager.getLastKnownLocation(Constants.WS_MESSAGE_TYPE_GPS);
                    } else if (z11) {
                        lastKnownLocation = locationManager.getLastKnownLocation("network");
                    }
                } else {
                    Iterator<String> it2 = locationManager.getProviders(true).iterator();
                    while (it2.hasNext()) {
                        Location lastKnownLocation2 = locationManager.getLastKnownLocation(it2.next());
                        if (lastKnownLocation2 != null && (lastKnownLocation == null || (lastKnownLocation2.getTime() > 0 && lastKnownLocation.getTime() > 0 && lastKnownLocation2.getTime() > lastKnownLocation.getTime()))) {
                            lastKnownLocation = lastKnownLocation2;
                        }
                    }
                    this.f9051l = false;
                }
                if (lastKnownLocation == null) {
                    f();
                    return;
                }
                this.f9042b = String.valueOf(lastKnownLocation.getLongitude());
                this.f9043c = String.valueOf(lastKnownLocation.getLatitude());
                this.f9045e = lastKnownLocation.getTime();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}

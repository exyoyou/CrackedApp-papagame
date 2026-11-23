package cn.fly.tools.utils;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.text.TextUtils;
import cn.fly.commons.C1293r;
import cn.fly.commons.CSCenter;
import cn.fly.commons.x;
import cn.fly.tools.FlyLog;
import cn.fly.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes7.dex */
public class NtFetcher implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static NtFetcher f2224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f2225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BroadcastReceiver f2226c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2227d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Integer f2228e;

    protected NtFetcher(Context context) {
        this.f2225b = context;
        a();
    }

    private boolean b(int i10) {
        return i10 == 20;
    }

    private boolean c(int i10) {
        return i10 == 13;
    }

    private boolean d(int i10) {
        switch (i10) {
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
            case 14:
            case 15:
                return true;
            case 4:
            case 7:
            case 11:
            default:
                return false;
        }
    }

    private void e() {
        this.f2226c = new BroadcastReceiver() { // from class: cn.fly.tools.utils.NtFetcher.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                try {
                    if (intent.getAction().equalsIgnoreCase(x.b("036cd)cbcicjchcbck2deh$ckPb cj8dd+ckdcfgdfdffhdcebddfjddebhkcgdcejecdfhcfh"))) {
                        NtFetcher.this.c();
                    }
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th);
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(x.b("036cd;cbcicjchcbckRdeh^ck_b.cj5dd4ckdcfgdfdffhdcebddfjddebhkcgdcejecdfhcfh"));
        C1293r.a(this.f2226c, intentFilter);
    }

    private void f() {
        BroadcastReceiver broadcastReceiver = this.f2226c;
        if (broadcastReceiver != null) {
            C1293r.a(broadcastReceiver);
            this.f2226c = null;
        }
    }

    private String g() {
        return (DH.SyncMtd.checkPermission(x.b("035cd8cbcicjchcbckXie,cicechehehchcj^d=ckfifhecekcgfkejfgdffhcgdkebecebfh")) && CSCenter.getInstance().isPhoneStateDataEnable()) ? h() : getNetworkTypeDesensitized();
    }

    public static NtFetcher getInstance(Context context) {
        if (f2224a == null) {
            synchronized (NtFetcher.class) {
                if (f2224a == null) {
                    f2224a = new NtFetcher(context);
                }
            }
        }
        return f2224a;
    }

    private String h() {
        Object systemServiceSafe;
        NetworkInfo activeNetworkInfo;
        try {
            if (DH.SyncMtd.checkPermission(x.b("039cd,cbcicjchcbck;ie%cicechehehchcjEd(ckecdcdcfhdkdkcgdffhebfefgfihbcgdkebecebfh")) && (systemServiceSafe = DH.SyncMtd.getSystemServiceSafe("connectivity")) != null && (activeNetworkInfo = ((ConnectivityManager) systemServiceSafe).getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type == 0) {
                    int iB = cn.fly.tools.b.e.a(this.f2225b).b();
                    if (a(iB)) {
                        return x.b("002Lghhc");
                    }
                    if (c(iB)) {
                        return x.b("002Ygkhc");
                    }
                    return x.b(d(iB) ? "002Qiehc" : "002[gdhc");
                }
                if (type == 1) {
                    return x.b("0043efchdech");
                }
                switch (type) {
                    case 6:
                        return x.b("005Cefchce3c?dh");
                    case 7:
                        return x.b("009Zee[f(cfWehPcjcjHhg");
                    case 8:
                        return x.b("0051cbcfcecedb");
                    case 9:
                        return x.b("008ehge:ciJdeh");
                    default:
                        return String.valueOf(type);
                }
            }
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
        }
        return x.b("004d+cj'de");
    }

    public synchronized int getDtNtType() {
        if (this.f2228e == null) {
            this.f2228e = Integer.valueOf(d());
        }
        return this.f2228e.intValue();
    }

    @SuppressLint({"MissingPermission"})
    public String getNetworkTypeDesensitized() {
        ConnectivityManager connectivityManager;
        NetworkInfo networkInfo = null;
        try {
            if (DH.SyncMtd.checkPermission(x.b("039cd'cbcicjchcbck$ie(cicechehehchcj]d.ckecdcdcfhdkdkcgdffhebfefgfihbcgdkebecebfh")) && (connectivityManager = (ConnectivityManager) DH.SyncMtd.getSystemServiceSafe("connectivity")) != null) {
                NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
                if (networkInfo2 != null && networkInfo2.getState() == NetworkInfo.State.CONNECTED) {
                    String strB = x.b("004Oefchdech");
                    FlyLog.getInstance().d("networkInfo: " + networkInfo2, new Object[0]);
                    return strB;
                }
                NetworkInfo networkInfo3 = connectivityManager.getNetworkInfo(0);
                if (networkInfo3 != null && networkInfo3.getState() == NetworkInfo.State.CONNECTED) {
                    String subtypeName = networkInfo3.getSubtypeName();
                    if (x.b("002'dffi").equalsIgnoreCase(subtypeName)) {
                        String strB2 = x.b("002@ghhc");
                        FlyLog.getInstance().d("networkInfo: " + networkInfo3, new Object[0]);
                        return strB2;
                    }
                    if (x.b("003)edebfh").equalsIgnoreCase(subtypeName)) {
                        String strB3 = x.b("002Agkhc");
                        FlyLog.getInstance().d("networkInfo: " + networkInfo3, new Object[0]);
                        return strB3;
                    }
                    if (a(subtypeName)) {
                        String strB4 = x.b("0021iehc");
                        FlyLog.getInstance().d("networkInfo: " + networkInfo3, new Object[0]);
                        return strB4;
                    }
                    if (!b(subtypeName)) {
                        FlyLog.getInstance().d("networkInfo: " + networkInfo3, new Object[0]);
                        return subtypeName;
                    }
                    String strB5 = x.b("002)gdhc");
                    FlyLog.getInstance().d("networkInfo: " + networkInfo3, new Object[0]);
                    return strB5;
                }
                NetworkInfo networkInfo4 = connectivityManager.getNetworkInfo(7);
                if (networkInfo4 != null && networkInfo4.getState() == NetworkInfo.State.CONNECTED) {
                    String strB6 = x.b("009JeeBf7cf6ehMcjcjAhg");
                    FlyLog.getInstance().d("networkInfo: " + networkInfo4, new Object[0]);
                    return strB6;
                }
                NetworkInfo networkInfo5 = connectivityManager.getNetworkInfo(8);
                if (networkInfo5 != null && networkInfo5.getState() == NetworkInfo.State.CONNECTED) {
                    String strB7 = x.b("005(cbcfcecedb");
                    FlyLog.getInstance().d("networkInfo: " + networkInfo5, new Object[0]);
                    return strB7;
                }
                NetworkInfo networkInfo6 = connectivityManager.getNetworkInfo(9);
                if (networkInfo6 != null && networkInfo6.getState() == NetworkInfo.State.CONNECTED) {
                    String strB8 = x.b("008ehgeYci.deh");
                    FlyLog.getInstance().d("networkInfo: " + networkInfo6, new Object[0]);
                    return strB8;
                }
                networkInfo = connectivityManager.getNetworkInfo(6);
                if (networkInfo != null && networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    String strB9 = x.b("0056efchce:c4dh");
                    FlyLog.getInstance().d("networkInfo: " + networkInfo, new Object[0]);
                    return strB9;
                }
            }
            FlyLog.getInstance().d("networkInfo: " + networkInfo, new Object[0]);
        } catch (Throwable th) {
            try {
                FlyLog.getInstance().e(th);
                FlyLog.getInstance().d("networkInfo: " + ((Object) null), new Object[0]);
            } catch (Throwable th2) {
                FlyLog.getInstance().d("networkInfo: " + ((Object) null), new Object[0]);
                throw th2;
            }
        }
        return x.b("004d+cj,de");
    }

    public synchronized String getNtType(boolean z10) {
        if (TextUtils.isEmpty(this.f2227d) || z10) {
            this.f2227d = g();
        }
        return this.f2227d;
    }

    public void recycle() {
        f();
    }

    @SuppressLint({"MissingPermission"})
    private void a() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) DH.SyncMtd.getSystemServiceSafe("connectivity");
            if (DH.SyncMtd.getOSVersionIntForFly() >= 26 && DH.SyncMtd.checkPermission(x.b("039cd4cbcicjchcbckTieCcicechehehchcj dXckecdcdcfhdkdkcgdffhebfefgfihbcgdkebecebfh"))) {
                connectivityManager.registerDefaultNetworkCallback(b());
            } else if (DH.SyncMtd.getOSVersionIntForFly() < 21 || !DH.SyncMtd.checkPermission(x.b("039cdPcbcicjchcbck,ie$cicechehehchcj6d=ckecdcdcfhdkdkcgdffhebfefgfihbcgdkebecebfh"))) {
                e();
            } else {
                connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), b());
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    @TargetApi(21)
    private ConnectivityManager.NetworkCallback b() {
        return new ConnectivityManager.NetworkCallback() { // from class: cn.fly.tools.utils.NtFetcher.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                super.onAvailable(network);
                NtFetcher.this.c();
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                super.onCapabilitiesChanged(network, networkCapabilities);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
                super.onLinkPropertiesChanged(network, linkProperties);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLosing(Network network, int i10) {
                super.onLosing(network, i10);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                super.onLost(network);
                NtFetcher.this.c();
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onUnavailable() {
                super.onUnavailable();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f2227d = g();
        this.f2228e = Integer.valueOf(d());
    }

    private int d() {
        if (DH.SyncMtd.getSystemServiceSafe("phone") != null && DH.SyncMtd.checkPermission(x.b("035cdDcbcicjchcbckDieNcicechehehchcj(d ckfifhecekcgfkejfgdffhcgdkebecebfh"))) {
            return DH.SyncMtd.getOSVersionIntForFly() >= 24 ? cn.fly.tools.b.e.a(this.f2225b).c() : cn.fly.tools.b.e.a(this.f2225b).b();
        }
        return -1;
    }

    private boolean b(Object obj) {
        Object serviceState;
        if (obj != null && DH.SyncMtd.checkPermission(x.b("035cdYcbcicjchcbck8ie?cicechehehchcjQdFckfifhecekcgfkejfgdffhcgdkebecebfh")) && DH.SyncMtd.getOSVersionIntForFly() >= 26) {
            if (CSCenter.getInstance().isPhoneStateDataEnable()) {
                serviceState = ReflectHelper.invokeInstanceMethodNoThrow(obj, x.b("015UdiBeh$dkJe!ciccchDbe,dk4hche"), null, new Object[0]);
            } else {
                serviceState = CSCenter.getInstance().getServiceState();
            }
            if (serviceState != null && ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(serviceState, x.b("010;diVeh=dfcidk3hche"), 0, new Object[0])).intValue() == 3) {
                return true;
            }
        }
        return false;
    }

    private boolean b(String str) {
        return x.b("004%ddekfhdf").equalsIgnoreCase(str) | ((x.b("0042dcekgbec").equalsIgnoreCase(str) | x.b("0049fhekhcfh").equalsIgnoreCase(str)) | x.b("0049hcfkfidk").equalsIgnoreCase(str));
    }

    private boolean a(int i10) {
        Object systemServiceSafe = DH.SyncMtd.getSystemServiceSafe("phone");
        if (systemServiceSafe == null) {
            return false;
        }
        if (a(systemServiceSafe) || b(systemServiceSafe)) {
            return true;
        }
        return b(i10);
    }

    private boolean a(Object obj) {
        Object serviceState;
        if (obj != null && DH.SyncMtd.checkPermission(x.b("035cdNcbcicjchcbckKie7cicechehehchcj8d ckfifhecekcgfkejfgdffhcgdkebecebfh"))) {
            if (CSCenter.getInstance().isPhoneStateDataEnable()) {
                String manufacturerForFly = DH.SyncMtd.getManufacturerForFly();
                serviceState = null;
                if (!TextUtils.isEmpty(manufacturerForFly) && ((manufacturerForFly.contains(x.b("006g4cf!c%ef]e0ch")) || manufacturerForFly.contains(x.b("0069ejcf%c:ef'e.ch")) || manufacturerForFly.contains(x.b("0061ejdjecfefhdd"))) && DH.SyncMtd.getOSVersionIntForFly() >= 29)) {
                    serviceState = ReflectHelper.invokeInstanceMethodNoThrow(obj, x.b("0153diDeh=dk[e7ciccchPbe2dk$hche"), null, new Object[0]);
                }
            } else {
                serviceState = CSCenter.getInstance().getServiceState();
            }
            if (serviceState != null && ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(serviceState, x.b("016NdiZeh[ejefdf5ehYefcjcidgebdb0ie"), 0, new Object[0])).intValue() == 20) {
                return true;
            }
        }
        return false;
    }

    private boolean a(String str) {
        return x.b("005!ejdkfkecfk").equalsIgnoreCase(str) | (((((((x.b("0069fhfjekfgcgeg").equalsIgnoreCase(str) | x.b("006(fhfjekfgcgec").equalsIgnoreCase(str)) | x.b("005^ejdkekfkec").equalsIgnoreCase(str)) | x.b("0047ejdkfkec").equalsIgnoreCase(str)) | x.b("0055ejdkdjfkec").equalsIgnoreCase(str)) | x.b("004>djgbebdk").equalsIgnoreCase(str)) | x.b("0051fhejfifkek").equalsIgnoreCase(str)) | x.b("0065fhfjekfgcgei").equalsIgnoreCase(str));
    }
}

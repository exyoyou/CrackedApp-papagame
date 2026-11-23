package com.sigmob.sdk.base.services;

import com.czhj.sdk.common.ClientMetadata;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f79691a = "LocationService";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f79692b = "AppInstallService";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f79693c = "WifiScanService";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f79694d = "DownloadService";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static a f79695e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static a f79696f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static a f79697g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static a f79698h;

    public interface a {
        boolean e();

        g f();

        void g();

        Error h();
    }

    public static a a() {
        return f79696f;
    }

    public static a b() {
        return f79697g;
    }

    public static a c() {
        return f79698h;
    }

    public static a d() {
        return f79695e;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0037  */
    public static synchronized a a(String name) {
        byte b10;
        int iHashCode = name.hashCode();
        if (iHashCode != 353926395) {
            if (iHashCode != 854806816) {
                if (iHashCode == 1382229229 && name.equals(f79694d)) {
                    b10 = 2;
                } else {
                    b10 = -1;
                }
            } else if (name.equals(f79691a)) {
                b10 = 0;
            } else {
                b10 = -1;
            }
        } else if (name.equals(f79692b)) {
            b10 = 1;
        } else {
            b10 = -1;
        }
        if (b10 == 0) {
            a aVar = f79695e;
            if (aVar != null) {
                return aVar;
            }
            e eVar = new e();
            f79695e = eVar;
            return eVar;
        }
        if (b10 == 1) {
            a aVar2 = f79696f;
            if (aVar2 != null) {
                return aVar2;
            }
            b bVar = new b();
            f79696f = bVar;
            return bVar;
        }
        if (b10 != 2) {
            return null;
        }
        a aVar3 = f79698h;
        if (aVar3 != null) {
            return aVar3;
        }
        d dVar = new d();
        f79698h = dVar;
        return dVar;
    }

    public static void a(String serviceName, boolean enabled) {
        a aVar;
        a aVarA = a(serviceName);
        if (aVarA == null) {
        }
        serviceName.hashCode();
        switch (serviceName) {
            case "WifiScanService":
                if (!enabled) {
                    aVar = f79697g;
                    if (aVar == null) {
                    }
                    aVar.g();
                    break;
                }
                aVarA.e();
                break;
            case "AppInstallService":
                if (!enabled) {
                    aVar = f79696f;
                    if (aVar == null) {
                    }
                    aVar.g();
                    break;
                }
                aVarA.e();
                break;
            case "LocationService":
                if (enabled) {
                    aVarA.e();
                } else {
                    a aVar2 = f79695e;
                    if (aVar2 != null) {
                        aVar2.g();
                    }
                }
                ClientMetadata.getInstance().setEnableLocation(enabled);
                break;
            case "DownloadService":
                if (!enabled) {
                    aVar = f79698h;
                    if (aVar == null) {
                    }
                    aVar.g();
                    break;
                }
                aVarA.e();
                break;
        }
    }
}

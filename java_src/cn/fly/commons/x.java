package cn.fly.commons;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import java.io.Closeable;
import java.io.ObjectInputStream;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes7.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile String f1473a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile String f1474b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile String f1475c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile String f1476d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile InternationalDomain f1477e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile boolean f1478f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile boolean f1479g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile boolean f1480h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile boolean f1481i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile boolean f1482j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static volatile boolean f1483k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static volatile String f1484l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static AtomicBoolean f1485m = new AtomicBoolean(false);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f1486n = b("011Sdk:gcTci*ePdkekhbckce5h");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f1487o = b("0101gbcjeefkcfeh$g^ckceHh");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f1488p = b("0122dk;eb*fjJeTcichdedbckce^h");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f1489q = b("009=dkgbdkdkekhbckce^h");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f1490r = b("0107gbcjeeedch2d@dgckce h");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static HashMap<String, HashMap<String, Object>> f1491s = new HashMap<>();

    public static void a(Context context) {
        try {
            if (f1485m.compareAndSet(false, true)) {
                try {
                    if (f1473a == null) {
                        String str = (String) FlyMeta.get(null, "custom-AppKey", String.class, null);
                        if (TextUtils.isEmpty(str)) {
                            str = (String) FlyMeta.get(null, b("010SgbcjeegjecUii2hb3eEdb"), String.class, null);
                        }
                        if (TextUtils.isEmpty(str)) {
                            String strL = ae.b().l();
                            if (TextUtils.isEmpty(strL)) {
                                strL = aa.i();
                            }
                            if (!TextUtils.isEmpty(strL)) {
                                f1475c = strL;
                                ae.b().e(strL);
                            }
                        } else {
                            f1473a = str;
                            f1475c = str;
                            ae.b().e(str);
                        }
                    }
                    if (f1474b == null) {
                        String str2 = (String) FlyMeta.get(null, "custom-AppSecret", String.class, null);
                        if (TextUtils.isEmpty(str2)) {
                            str2 = (String) FlyMeta.get(null, b("013PgbcjeegjecXii0dk%eb>ciOeh"), String.class, null);
                        }
                        if (TextUtils.isEmpty(str2)) {
                            str2 = (String) FlyMeta.get(null, b("012Qgbcjeegjec+iiGdkReHciDeh"), String.class, null);
                        }
                        if (TextUtils.isEmpty(str2)) {
                            String strM = ae.b().m();
                            if (!TextUtils.isEmpty(strM)) {
                                f1476d = strM;
                            }
                        } else {
                            f1474b = str2;
                            f1476d = str2;
                            ae.b().f(str2);
                        }
                    }
                } catch (Throwable unused) {
                }
                try {
                    String str3 = (String) FlyMeta.get(null, "custom-Domain", String.class, null);
                    if (TextUtils.isEmpty(str3)) {
                        str3 = (String) FlyMeta.get(null, b("006NekcjceYc$chUd"), String.class, null);
                    }
                    if (str3 != null) {
                        f1477e = InternationalDomain.domainOf(str3);
                    }
                } catch (Throwable unused2) {
                    f1477e = InternationalDomain.DEFAULT;
                }
                f1484l = (String) FlyMeta.get(null, "custom-OdVivoAppId", String.class, null);
                if (TextUtils.isEmpty(f1484l)) {
                    f1484l = (String) FlyMeta.get(null, b("015HgbcjeegjfgcbfjchcccjecDiiIddcb"), String.class, null);
                }
                Class cls = Boolean.TYPE;
                Boolean bool = Boolean.FALSE;
                f1478f = ((Boolean) FlyMeta.get(null, "custom-Https", cls, bool)).booleanValue();
                f1479g = ((Boolean) FlyMeta.get(null, b("0097gbcjeegjejZhhiTeh"), cls, bool)).booleanValue();
                Object obj = FlyMeta.get(null, "custom-V6", cls);
                if (obj != null) {
                    f1480h = ((Boolean) obj).booleanValue();
                } else {
                    f1480h = ((Boolean) FlyMeta.get(null, b("006Lgbcjeegjfjgg"), cls, bool)).booleanValue();
                }
                Object obj2 = FlyMeta.get(null, "custom-elog", cls);
                if (obj2 != null) {
                    f1481i = ((Boolean) obj2).booleanValue();
                } else {
                    f1481i = ((Boolean) FlyMeta.get(null, b("008]gbcjeegj^ef'cjdi"), cls, Boolean.TRUE)).booleanValue();
                }
                Object obj3 = FlyMeta.get(null, "custom-GPP", cls);
                if (obj3 != null) {
                    f1482j = ((Boolean) obj3).booleanValue();
                } else {
                    f1482j = ((Boolean) FlyMeta.get(null, b("007Lgbcjeegjhcfkfk"), cls, bool)).booleanValue();
                }
                Object obj4 = FlyMeta.get(null, "custom-Nerr", cls);
                if (obj4 != null) {
                    f1483k = ((Boolean) obj4).booleanValue();
                }
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    public static String b(String str) {
        return C1293r.a(str, 98);
    }

    /* JADX WARN: Code duplicated, block: B:117:0x0059 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x005f A[Catch: all -> 0x0176, TryCatch #3 {all -> 0x0176, blocks: (B:22:0x0059, B:24:0x005f, B:27:0x0071, B:29:0x0075, B:31:0x0085, B:36:0x0099), top: B:117:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x009f  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ad A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00b1 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00b9 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00c2 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00c6 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00ca A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00d2 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00d9 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00dd A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00e1 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00e9 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x00f0 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00f4 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00f8 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00fd A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0104 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0108 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x010c A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0114 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x011b A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x011f A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0123 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x012b A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0132 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0136 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x013a A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0143 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x014b A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x014f A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0153 A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x015c A[Catch: all -> 0x016a, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0164 A[Catch: all -> 0x016a, TRY_LEAVE, TryCatch #6 {all -> 0x016a, blocks: (B:43:0x00a9, B:45:0x00ad, B:47:0x00b1, B:48:0x00b9, B:50:0x00c2, B:52:0x00c6, B:54:0x00ca, B:55:0x00d2, B:56:0x00d9, B:58:0x00dd, B:60:0x00e1, B:61:0x00e9, B:62:0x00f0, B:64:0x00f4, B:66:0x00f8, B:67:0x00fd, B:68:0x0104, B:70:0x0108, B:72:0x010c, B:73:0x0114, B:74:0x011b, B:76:0x011f, B:78:0x0123, B:79:0x012b, B:80:0x0132, B:82:0x0136, B:84:0x013a, B:85:0x0143, B:86:0x014b, B:88:0x014f, B:90:0x0153, B:91:0x015c, B:92:0x0164), top: B:123:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x0172  */
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T a(String str, Class<T> cls, FlyProduct flyProduct) {
        Object obj;
        GZIPInputStream gZIPInputStream;
        HashMap<String, Object> map;
        Closeable closeable;
        Class<T> cls2;
        T tCast;
        T t10 = null;
        try {
            String strA = a(flyProduct);
            if (f1491s.containsKey(strA)) {
                map = f1491s.get(strA);
                gZIPInputStream = null;
            } else {
                try {
                    gZIPInputStream = new GZIPInputStream(FlySDK.getContext().getResources().getAssets().open(strA));
                    try {
                        ObjectInputStream objectInputStream = new ObjectInputStream(gZIPInputStream);
                        try {
                            HashMap<String, Object> map2 = (HashMap) objectInputStream.readObject();
                            if (map2 != null) {
                                try {
                                    if (!map2.isEmpty()) {
                                        f1491s.put(strA, map2);
                                    }
                                } catch (Throwable unused) {
                                }
                            }
                            map = map2;
                            closeable = objectInputStream;
                        } catch (Throwable unused2) {
                            map = null;
                            closeable = objectInputStream;
                        }
                    } catch (Throwable unused3) {
                        map = null;
                        closeable = null;
                    }
                } catch (Throwable unused4) {
                    map = null;
                    gZIPInputStream = null;
                    closeable = gZIPInputStream;
                }
                if (map != null) {
                    try {
                        if (!map.isEmpty()) {
                            obj = map.get(str);
                            if (!b("009 gbcjeegjej[hhiUeh").equals(str) && obj != null && (obj instanceof String)) {
                                t10 = (T) Boolean.valueOf(b("003MdbWe@eh").equalsIgnoreCase(String.valueOf(obj)) || b("004hScicf(e").equalsIgnoreCase(String.valueOf(obj)));
                            } else if (obj != null) {
                                if (cls == null) {
                                    t10 = (T) obj;
                                } else if (cls != Void.class) {
                                    try {
                                        if (cls == Boolean.TYPE) {
                                            if (obj instanceof String) {
                                                tCast = (T) Boolean.valueOf((String) obj);
                                            } else {
                                                tCast = (T) Boolean.class.cast(obj);
                                            }
                                        } else if (cls == Integer.TYPE) {
                                            if (obj instanceof String) {
                                                tCast = (T) Integer.valueOf((String) obj);
                                            } else {
                                                tCast = (T) Integer.class.cast(obj);
                                            }
                                        } else if (cls == Byte.TYPE) {
                                            if (obj instanceof String) {
                                                tCast = (T) Byte.valueOf((String) obj);
                                            } else {
                                                tCast = (T) Byte.class.cast(obj);
                                            }
                                        } else {
                                            cls2 = Character.TYPE;
                                            if (cls == cls2) {
                                                if (obj instanceof String) {
                                                    tCast = cls2.cast(obj);
                                                } else {
                                                    tCast = (T) Character.class.cast(obj);
                                                }
                                            } else if (cls == Short.TYPE) {
                                                if (obj instanceof String) {
                                                    tCast = (T) Short.valueOf((String) obj);
                                                } else {
                                                    tCast = (T) Short.class.cast(obj);
                                                }
                                            } else if (cls == Long.TYPE) {
                                                if (obj instanceof String) {
                                                    tCast = (T) Long.valueOf((String) obj);
                                                } else {
                                                    tCast = (T) Long.class.cast(obj);
                                                }
                                            } else if (cls == Float.TYPE) {
                                                if (obj instanceof String) {
                                                    tCast = (T) Float.valueOf((String) obj);
                                                } else {
                                                    tCast = (T) Float.class.cast(obj);
                                                }
                                            } else if (cls == Double.TYPE) {
                                                if (obj instanceof String) {
                                                    tCast = (T) Double.valueOf((String) obj);
                                                } else {
                                                    tCast = (T) Double.class.cast(obj);
                                                }
                                            } else {
                                                tCast = cls.cast(obj);
                                            }
                                        }
                                        t10 = tCast;
                                    } catch (Throwable th) {
                                        try {
                                            FlyLog.getInstance().d(th);
                                            t10 = (T) obj;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            t10 = (T) closeable;
                                            try {
                                                FlyLog.getInstance().d(th);
                                                C1293r.a(t10, gZIPInputStream);
                                                return (T) obj;
                                            } catch (Throwable th3) {
                                                C1293r.a(t10, gZIPInputStream);
                                                throw th3;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        obj = null;
                    }
                }
                C1293r.a(closeable, gZIPInputStream);
                return t10;
            }
            closeable = gZIPInputStream;
            if (map != null) {
                if (!map.isEmpty()) {
                    obj = map.get(str);
                    if (!b("009 gbcjeegjej[hhiUeh").equals(str)) {
                        if (obj != null) {
                            if (cls == null) {
                                t10 = (T) obj;
                            } else if (cls != Void.class) {
                                if (cls == Boolean.TYPE) {
                                    if (obj instanceof String) {
                                        tCast = (T) Boolean.valueOf((String) obj);
                                    } else {
                                        tCast = (T) Boolean.class.cast(obj);
                                    }
                                } else if (cls == Integer.TYPE) {
                                    if (obj instanceof String) {
                                        tCast = (T) Integer.valueOf((String) obj);
                                    } else {
                                        tCast = (T) Integer.class.cast(obj);
                                    }
                                } else if (cls == Byte.TYPE) {
                                    if (obj instanceof String) {
                                        tCast = (T) Byte.valueOf((String) obj);
                                    } else {
                                        tCast = (T) Byte.class.cast(obj);
                                    }
                                } else {
                                    cls2 = Character.TYPE;
                                    if (cls == cls2) {
                                        if (obj instanceof String) {
                                            tCast = cls2.cast(obj);
                                        } else {
                                            tCast = (T) Character.class.cast(obj);
                                        }
                                    } else if (cls == Short.TYPE) {
                                        if (obj instanceof String) {
                                            tCast = (T) Short.valueOf((String) obj);
                                        } else {
                                            tCast = (T) Short.class.cast(obj);
                                        }
                                    } else if (cls == Long.TYPE) {
                                        if (obj instanceof String) {
                                            tCast = (T) Long.valueOf((String) obj);
                                        } else {
                                            tCast = (T) Long.class.cast(obj);
                                        }
                                    } else if (cls == Float.TYPE) {
                                        if (obj instanceof String) {
                                            tCast = (T) Float.valueOf((String) obj);
                                        } else {
                                            tCast = (T) Float.class.cast(obj);
                                        }
                                    } else if (cls == Double.TYPE) {
                                        if (obj instanceof String) {
                                            tCast = (T) Double.valueOf((String) obj);
                                        } else {
                                            tCast = (T) Double.class.cast(obj);
                                        }
                                    } else {
                                        tCast = cls.cast(obj);
                                    }
                                }
                                t10 = tCast;
                            }
                        }
                    } else if (obj != null) {
                        if (cls == null) {
                            t10 = (T) obj;
                        } else if (cls != Void.class) {
                            if (cls == Boolean.TYPE) {
                                if (obj instanceof String) {
                                    tCast = (T) Boolean.valueOf((String) obj);
                                } else {
                                    tCast = (T) Boolean.class.cast(obj);
                                }
                            } else if (cls == Integer.TYPE) {
                                if (obj instanceof String) {
                                    tCast = (T) Integer.valueOf((String) obj);
                                } else {
                                    tCast = (T) Integer.class.cast(obj);
                                }
                            } else if (cls == Byte.TYPE) {
                                if (obj instanceof String) {
                                    tCast = (T) Byte.valueOf((String) obj);
                                } else {
                                    tCast = (T) Byte.class.cast(obj);
                                }
                            } else {
                                cls2 = Character.TYPE;
                                if (cls == cls2) {
                                    if (obj instanceof String) {
                                        tCast = cls2.cast(obj);
                                    } else {
                                        tCast = (T) Character.class.cast(obj);
                                    }
                                } else if (cls == Short.TYPE) {
                                    if (obj instanceof String) {
                                        tCast = (T) Short.valueOf((String) obj);
                                    } else {
                                        tCast = (T) Short.class.cast(obj);
                                    }
                                } else if (cls == Long.TYPE) {
                                    if (obj instanceof String) {
                                        tCast = (T) Long.valueOf((String) obj);
                                    } else {
                                        tCast = (T) Long.class.cast(obj);
                                    }
                                } else if (cls == Float.TYPE) {
                                    if (obj instanceof String) {
                                        tCast = (T) Float.valueOf((String) obj);
                                    } else {
                                        tCast = (T) Float.class.cast(obj);
                                    }
                                } else if (cls == Double.TYPE) {
                                    if (obj instanceof String) {
                                        tCast = (T) Double.valueOf((String) obj);
                                    } else {
                                        tCast = (T) Double.class.cast(obj);
                                    }
                                } else {
                                    tCast = cls.cast(obj);
                                }
                            }
                            t10 = tCast;
                        }
                    }
                }
            }
            C1293r.a(closeable, gZIPInputStream);
            return t10;
        } catch (Throwable th5) {
            th = th5;
            obj = null;
            gZIPInputStream = null;
        }
    }

    public static <T> T a(String str) {
        try {
            Bundle bundle = cn.fly.tools.b.c.a(FlySDK.getContext()).d().a(FlySDK.getContext().getPackageName(), 128).metaData;
            if (bundle == null) {
                return null;
            }
            T t10 = (T) bundle.get(str);
            if (b("009KgbcjeegjejJhhi%eh").equals(str) && t10 != null && (t10 instanceof String)) {
                return (T) Boolean.valueOf(b("003 db%eVeh").equalsIgnoreCase(String.valueOf(t10)));
            }
            if (t10 != null) {
                return t10;
            }
            return null;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    private static String a(FlyProduct flyProduct) {
        String str;
        if (flyProduct == null) {
            return "FlySDK.mt";
        }
        try {
            String productTag = flyProduct.getProductTag();
            if (b("008Fdkejecfifhdkekhb").equals(productTag)) {
                str = f1486n;
            } else if (b("006Adkgbdkdkekhb").equals(productTag)) {
                str = f1489q;
            } else if (b("007Cgbfgeieddddfhb").equals(productTag)) {
                str = f1490r;
            } else if (b("007Sgbfgeifkdjdkej").equals(productTag)) {
                str = f1487o;
            } else {
                if (!b("009]dkfhdcfjfhfiddfbhk").equals(productTag)) {
                    return "FlySDK.mt";
                }
                str = f1488p;
            }
            return str;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return "FlySDK.mt";
        }
    }
}

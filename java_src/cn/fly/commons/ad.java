package cn.fly.commons;

import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import com.mob.commons.MOBLINK;
import com.sigmob.sdk.base.mta.PointType;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class ad {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Callable<Map<String, Object>> f1053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f1054c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f1052a = {m.a("008Qgnhmhfilikgnhnke"), m.a("006Ognjegngnhnke"), m.a("007?jeijhlhggggike"), m.a("007Ajeijhlingmgnhm"), m.a("0093gnikgfimikilggiekn"), "FLYVERIFY", "LLUVERIFY"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicBoolean f1055d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicBoolean f1056e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final HashMap<String, FlyProduct> f1057f = new HashMap<>();

    public static void a() {
        if (aa.b()) {
            j();
            ac.f1042a.execute(new cn.fly.tools.utils.i() { // from class: cn.fly.commons.ad.1
                @Override // cn.fly.tools.utils.i
                protected void a() {
                    FlyLog.getInstance().d("init sks start", new Object[0]);
                    ad.b();
                    FlyLog.getInstance().d("init sks over", new Object[0]);
                }
            });
        }
    }

    public static ArrayList<FlyProduct> b() {
        ArrayList<FlyProduct> arrayList;
        HashMap<String, FlyProduct> map = f1057f;
        synchronized (map) {
            if (aa.b() && aa.h() && f1055d.compareAndSet(false, true)) {
                map.putAll(k());
            }
            arrayList = new ArrayList<>();
            arrayList.addAll(map.values());
        }
        return arrayList;
    }

    public static Callable<Map<String, Object>> c() {
        return f1053b;
    }

    public static int d() {
        return f1054c;
    }

    public static synchronized String e() {
        return a(b(), 0);
    }

    public static synchronized String f() {
        return a(b(), 1);
    }

    public static synchronized String g() {
        return a(b(), 2);
    }

    public static synchronized String h() {
        return a(b(), 3);
    }

    public static synchronized String i() {
        return a(b(), 4);
    }

    private static void j() {
        if (aa.h() && f1056e.compareAndSet(false, true)) {
            try {
                MOBLINK moblink = new MOBLINK();
                if (moblink instanceof FlyProduct) {
                    moblink.getProductTag();
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static HashMap<String, FlyProduct> k() {
        HashMap<String, FlyProduct> map = new HashMap<>();
        for (Object obj : p.f1413a) {
            try {
                Class<?> cls = obj instanceof String ? Class.forName(String.valueOf(obj).trim()) : (Class) obj;
                if (!FlyProduct.class.isAssignableFrom(cls) || FlyProduct.class.equals(cls)) {
                    cls.newInstance();
                } else {
                    FlyProduct flyProduct = (FlyProduct) cls.newInstance();
                    String productTag = flyProduct.getProductTag();
                    FlyLog.getInstance().d("[INI]ini sks [" + productTag + "] s", new Object[0]);
                    for (String str : f1052a) {
                        if (str.equals(productTag)) {
                            map.put(str, flyProduct);
                            break;
                        }
                    }
                    if (m.a("007Jjeijhlingmgnhm").equals(productTag)) {
                        if (flyProduct instanceof Callable) {
                            f1054c = 2;
                            f1053b = (Callable) flyProduct;
                        } else {
                            f1054c = 1;
                        }
                    }
                }
            } catch (Throwable unused) {
                FlyLog.getInstance().d("[INI]ini sks [" + obj + "] f", new Object[0]);
            }
        }
        return map;
    }

    public static void a(FlyProduct flyProduct) {
        HashMap<String, FlyProduct> map = f1057f;
        synchronized (map) {
            if (flyProduct != null) {
                if (!map.containsKey(flyProduct.getProductTag())) {
                    map.put(flyProduct.getProductTag(), flyProduct);
                }
            }
        }
    }

    private static synchronized String a(final ArrayList<FlyProduct> arrayList, final int i10) {
        final String[] strArr;
        strArr = new String[]{""};
        DH.RequestBuilder carrierStrict = DH.requester(FlySDK.getContext()).getMIUIVersionForFly().getDetailNetworkTypeForStatic().getCarrierStrict(false);
        if (aa.b() && i10 != 3 && i10 != 4) {
            carrierStrict.getDeviceKey();
        } else {
            carrierStrict.getDeviceKeyFromCache(true);
        }
        carrierStrict.request(new DH.DHResponder() { // from class: cn.fly.commons.ad.2
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) throws Throwable {
                String str;
                String str2;
                int i11;
                String str3 = "";
                String strEncode = TextUtils.isEmpty(DH.SyncMtd.getPackageName()) ? "" : URLEncoder.encode(DH.SyncMtd.getPackageName(), "utf-8");
                String strEncode2 = TextUtils.isEmpty(DH.SyncMtd.getAppVersionName()) ? "" : URLEncoder.encode(DH.SyncMtd.getAppVersionName(), "utf-8");
                String strEncode3 = TextUtils.isEmpty(DH.SyncMtd.getManufacturerForFly()) ? "" : URLEncoder.encode(DH.SyncMtd.getManufacturerForFly(), "utf-8");
                String strEncode4 = TextUtils.isEmpty(DH.SyncMtd.getModelForFly()) ? "" : URLEncoder.encode(DH.SyncMtd.getModelForFly(), "utf-8");
                String strEncode5 = TextUtils.isEmpty(dHResponse.getMIUIVersionForFly()) ? "" : URLEncoder.encode(dHResponse.getMIUIVersionForFly(), "utf-8");
                String strEncode6 = TextUtils.isEmpty(DH.SyncMtd.getOSVersionNameForFly()) ? "" : URLEncoder.encode(DH.SyncMtd.getOSVersionNameForFly(), "utf-8");
                HashMap<String, Object> mapB = o.a().b();
                String str4 = m.a("004Ghfinin_n") + strEncode + ";" + strEncode2;
                String str5 = m.a("012:gnkngnAn9hfUgJfeflfmfkfeli") + DH.SyncMtd.getOSVersionIntForFly() + ";" + strEncode6;
                int i12 = 0;
                String str6 = m.a("004'gnhngg+n") + ((!aa.b() || (i11 = i10) == 3 || i11 == 4) ? dHResponse.getDeviceKeyFromCache(new int[0]) : dHResponse.getDeviceKey());
                String str7 = m.a("0038ieje*n") + strEncode3 + ";" + strEncode4;
                if (!TextUtils.isEmpty(strEncode5)) {
                    str7 = str7 + ";" + strEncode5;
                }
                String str8 = m.a("003'giik:n") + dHResponse.getDetailNetworkTypeForStatic() + ";" + dHResponse.getCarrierStrict(new int[0]);
                String str9 = m.a("005^hgHfg_gl*n") + Locale.getDefault().toString().replace(m.a("0024jmfl"), "-");
                String str10 = m.a("004BgfhgimDn") + FlySDK.SDK_VERSION_CODE;
                String strA = m.a("004Ggnhnke=n");
                if (!arrayList.isEmpty()) {
                    int size = arrayList.size();
                    while (i12 < size) {
                        try {
                            FlyProduct flyProduct = (FlyProduct) arrayList.get(i12);
                            if (i12 != 0) {
                                str2 = str3;
                                try {
                                    strA = strA + ",";
                                } catch (Throwable unused) {
                                }
                            } else {
                                str2 = str3;
                            }
                            try {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(strA);
                                String str11 = strA;
                                try {
                                    sb2.append(flyProduct.getProductTag());
                                    sb2.append(";");
                                    sb2.append(flyProduct.getSdkver());
                                    sb2.append(";");
                                    sb2.append(mapB.get(flyProduct.getProductTag()));
                                    strA = sb2.toString();
                                } catch (Throwable unused2) {
                                    strA = str11;
                                }
                            } catch (Throwable unused3) {
                            }
                        } catch (Throwable unused4) {
                            str2 = str3;
                        }
                        i12++;
                        str3 = str2;
                    }
                }
                String str12 = str3;
                String str13 = "DC/" + ad.a(i10);
                String timezone = DH.SyncMtd.getTimezone();
                if (TextUtils.isEmpty(timezone)) {
                    str = str12;
                } else {
                    str = m.a("003Theklfj") + timezone;
                }
                String strC = af.a().c();
                String str14 = "TID/";
                if (!TextUtils.isEmpty(strC)) {
                    str14 = "TID/" + strC;
                }
                int iA = cn.fly.commons.cc.a.a();
                String str15 = "SVM/" + iA;
                if (cn.fly.tools.b.d.c()) {
                    if (!m.a("004Fgnhnke(n").equals(strA)) {
                        strA = strA + ",";
                    }
                    strA = strA + "CS;" + iA;
                }
                String strA2 = i10 == 3 ? ab.a().a(true) : ab.a().a(false);
                String str16 = "RD/";
                if (!TextUtils.isEmpty(strA2)) {
                    str16 = "RD/" + strA2;
                }
                strArr[0] = str4 + " " + str5 + " " + str6 + " " + str7 + " " + str8 + " " + str9 + " " + str10 + " " + strA + " " + str13 + " " + str + " " + str14 + " " + str15 + " " + str16;
            }
        });
        return strArr[0];
    }

    public static String a(int i10) {
        String str = CSCenter.getInstance().isCusControllerNotNull() ? PointType.SIGMOB_REPORT_TRACKING : "14";
        if (i10 == 1) {
            return "[DC]";
        }
        if (i10 == 2) {
            return "[DC2]";
        }
        return i10 == 4 ? "15" : str;
    }
}

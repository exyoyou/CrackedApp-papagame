package com.aggmoread.sdk.z.c.a.a.d.a.d.r;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.text.TextUtils;
import com.aggmoread.sdk.z.c.a.a.d.a.d.m;
import com.aggmoread.sdk.z.c.a.a.d.a.d.p;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.j;
import com.aggmoread.sdk.z.c.a.a.e.v.g;
import com.baidu.mobads.sdk.api.AdSettings;
import com.baidu.mobads.sdk.api.BDAdConfig;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.ExpressInterstitialAd;
import com.baidu.mobads.sdk.api.ExpressResponse;
import com.baidu.mobads.sdk.api.FullScreenVideoAd;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.MobadsPermissionSettings;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.RewardVideoAd;
import com.baidu.mobads.sdk.api.SplashAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.sdk.base.module.manager.SDKManager;
import com.xinzhu.overmind.server.os.f;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class a extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f4572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static AtomicBoolean f4573b = new AtomicBoolean();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicBoolean f4574c = new AtomicBoolean();

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.a$a, reason: collision with other inner class name */
    static class C0128a implements InvocationHandler {
        C0128a() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            return null;
        }
    }

    static class b implements InvocationHandler {
        b() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            return null;
        }
    }

    private a() {
    }

    private static int a(com.aggmoread.sdk.z.c.a.a.a aVar, String str, int i10) {
        if (aVar == null || !aVar.a(str)) {
            return -1;
        }
        return aVar.a(str, i10);
    }

    public static String b() {
        String sDKVersion = AdSettings.getSDKVersion();
        e.a("bd: sdkVersion " + sDKVersion);
        return sDKVersion;
    }

    public static int a(Object obj) {
        Exception e10;
        int iIntValue;
        int i10 = -1;
        try {
            Method method = obj.getClass().getMethod("getECPMLevel", new Class[0]);
            method.setAccessible(true);
            String str = (String) method.invoke(obj, new Object[0]);
            if (!TextUtils.isEmpty(str)) {
                iIntValue = Integer.valueOf(str).intValue();
                if (iIntValue <= 0) {
                    try {
                        e.a("bd c -1 ");
                    } catch (Exception e11) {
                        e10 = e11;
                        e10.printStackTrace();
                        e.a("bd ecpm err " + e10.getMessage());
                        i10 = iIntValue;
                    }
                } else {
                    i10 = iIntValue;
                }
            }
        } catch (Exception e12) {
            e10 = e12;
            iIntValue = -1;
        }
        e.a("bd ecpm " + i10);
        return i10;
    }

    private String b(Object obj) {
        Field[] fieldArr;
        String str;
        String str2;
        String str3;
        String str4;
        String str5 = "v1 ";
        String str6 = ", field ";
        String str7 = "adProdTemplate";
        if (obj != null) {
            try {
                Object objB = j.b(obj, IAdInterListener.class);
                if (objB != null) {
                    Class<?> cls = objB.getClass();
                    e.b("XXXXX", "preload k = " + cls);
                    Object objB2 = j.b(j.a(objB, "adProdTemplate"), f.TAG);
                    j.a(objB2, "com.baidu.mobads.container.adrequest.s", "first template");
                    String string = j.a(objB2, "p").toString();
                    e.b("XXXXX", "jsonStr " + string);
                    try {
                        if (!TextUtils.isEmpty(string)) {
                            return b(string);
                        }
                        Field[] declaredFields = cls.getDeclaredFields();
                        int length = declaredFields.length;
                        int i10 = 0;
                        while (i10 < length) {
                            Field field = declaredFields[i10];
                            field.setAccessible(true);
                            Object obj2 = field.get(objB);
                            e.b("XXXXX", "field " + field.getName() + str6 + obj2);
                            if (obj2 != null && obj2.getClass().getName().contains("com.baidu.mobads.container.adrequest")) {
                                Field[] declaredFields2 = obj2.getClass().getDeclaredFields();
                                int length2 = declaredFields2.length;
                                int i11 = 0;
                                while (i11 < length2) {
                                    Field field2 = declaredFields2[i11];
                                    field2.setAccessible(true);
                                    Object obj3 = field2.get(obj2);
                                    e.b("XXXXX", "field_ " + field2.getName() + str6 + obj3);
                                    if (obj3 == null || !obj3.getClass().getName().equals("com.baidu.mobads.container.adrequest.ProdAdRequestInfo")) {
                                        fieldArr = declaredFields2;
                                        str = str5;
                                        str2 = str6;
                                        str3 = str7;
                                        j.b(obj3, "com.baidu.mobads.container.adrequest.ProdAdRequestInfo", field2.getName() + ",ProdAdRequestInfo");
                                        j.b(obj3, "com.baidu.mobads.container.adrequest", field2.getName() + ", adreuqest");
                                    } else {
                                        Field field3 = obj3.getClass().getField(str7);
                                        field3.setAccessible(true);
                                        Object obj4 = field3.get(obj3);
                                        if (k.f5148r.booleanValue()) {
                                            e.b("XXXXX", str5 + obj4);
                                            j.b(obj4, "com.baidu.mobads.container.adrequest", str5);
                                        }
                                        if (obj4 != null) {
                                            Field[] fields = obj4.getClass().getFields();
                                            int length3 = fields.length;
                                            int i12 = 0;
                                            while (i12 < length3) {
                                                Field[] fieldArr2 = declaredFields2;
                                                Field field4 = fields[i12];
                                                String str8 = str5;
                                                field4.setAccessible(true);
                                                Object obj5 = field4.get(obj4);
                                                String str9 = str6;
                                                if (obj5 != null) {
                                                    StringBuilder sb2 = new StringBuilder();
                                                    str4 = str7;
                                                    sb2.append("vvv filed name ");
                                                    sb2.append(field4.getName());
                                                    e.b("XXXXX", sb2.toString());
                                                    if (obj5.getClass().getName().contains("com.baidu.mobads.container.adrequest.s")) {
                                                        Field declaredField = obj5.getClass().getDeclaredField("p");
                                                        declaredField.setAccessible(true);
                                                        String string2 = declaredField.get(obj5).toString();
                                                        e.b("XXXXX", "final json = " + string2);
                                                        if (!TextUtils.isEmpty(string2)) {
                                                            return null;
                                                        }
                                                    }
                                                } else {
                                                    str4 = str7;
                                                }
                                                j.a(obj5, "com.baidu.mobads.container.adrequest.s", "s_tag");
                                                i12++;
                                                declaredFields2 = fieldArr2;
                                                str5 = str8;
                                                str6 = str9;
                                                str7 = str4;
                                            }
                                        }
                                        fieldArr = declaredFields2;
                                        str = str5;
                                        str2 = str6;
                                        str3 = str7;
                                    }
                                    i11++;
                                    declaredFields2 = fieldArr;
                                    str5 = str;
                                    str6 = str2;
                                    str7 = str3;
                                }
                                return null;
                            }
                            i10++;
                            str5 = str5;
                            str6 = str6;
                            str7 = str7;
                        }
                        return null;
                    } catch (Exception e10) {
                        e = e10;
                        e.printStackTrace();
                        return null;
                    }
                }
            } catch (Exception e11) {
                e = e11;
            }
        }
        return null;
    }

    public static Context a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, g gVar) {
        Context context;
        Context context2 = eVar.f4948d;
        try {
            boolean zA = gVar.a(fVar);
            e.a("isHack " + zA);
            context = context2;
            if (zA) {
                ContextWrapper eVar2 = eVar.f4948d instanceof Activity ? new com.aggmoread.sdk.z.c.a.a.e.v.e((Activity) eVar.f4948d) : new com.aggmoread.sdk.z.c.a.a.e.v.f(eVar.f4948d);
                gVar.a(eVar2, fVar, new Object[0]);
                context = eVar2;
            }
        } catch (Exception e10) {
            e.a("hack err " + e10.getMessage());
            context = eVar.f4948d;
        }
        e.a("getAdContext " + context);
        return context;
    }

    private String b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("req_id")) {
                e.b("XXXXX", "req_id " + jSONObject.optString("req_id"));
            }
            if (!jSONObject.has("ad")) {
                return null;
            }
            JSONObject jSONObject2 = jSONObject.optJSONArray("ad").getJSONObject(0);
            if (jSONObject2 == null || !jSONObject2.keys().hasNext()) {
                return null;
            }
            StringBuilder sb2 = new StringBuilder();
            ArrayList arrayList = new ArrayList();
            if (jSONObject2.has("appname")) {
                String strOptString = jSONObject2.optString("appname");
                if (!TextUtils.isEmpty(strOptString)) {
                    arrayList.add(strOptString);
                }
            }
            if (jSONObject2.has("tit")) {
                String strOptString2 = jSONObject2.optString("tit");
                if (!TextUtils.isEmpty(strOptString2) && !arrayList.contains(strOptString2)) {
                    arrayList.add(strOptString2);
                }
            }
            if (jSONObject2.has("desc")) {
                String strOptString3 = jSONObject2.optString("desc");
                if (!TextUtils.isEmpty(strOptString3) && !arrayList.contains(strOptString3)) {
                    arrayList.add(strOptString3);
                }
            }
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                if (i10 != 0) {
                    sb2.append("#");
                }
                sb2.append((String) arrayList.get(i10));
            }
            if (sb2.length() > 0) {
                return sb2.toString();
            }
            return null;
        } catch (Exception e10) {
            e.b("XXXXX", "err " + e10);
            return null;
        }
    }

    public static synchronized a a() {
        if (f4572a == null) {
            synchronized (a.class) {
                if (f4572a == null) {
                    f4572a = new a();
                }
            }
        }
        return f4572a;
    }

    public static void b(Map<String, Object> map, int i10, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        a().a(map, i10, fVar);
    }

    public String a(ExpressInterstitialAd expressInterstitialAd) {
        return b(j.a(expressInterstitialAd, "mNativeInterstitialAdProd"));
    }

    public String a(ExpressResponse expressResponse) {
        return b(j.a(expressResponse, f.TAG));
    }

    public String a(FullScreenVideoAd fullScreenVideoAd) {
        return b(j.a(fullScreenVideoAd, "mAdProd"));
    }

    public String a(RewardVideoAd rewardVideoAd) {
        return b(j.a(rewardVideoAd, "mAdProd"));
    }

    public String a(SplashAd splashAd) {
        return b(j.a(splashAd, "mAdProd"));
    }

    public static void a(Context context, String str) {
        int i10;
        if (context == null || TextUtils.isEmpty(str)) {
            e.b("BDAdSDK", "Context或APP_ID为空，初始化失败!");
            return;
        }
        if (f4574c.compareAndSet(false, true) && (i10 = p.f4546a) != -1) {
            c.a(i10 == 1);
        }
        try {
            if (f4573b.compareAndSet(false, true)) {
                new BDAdConfig.Builder().setAppName("union_sdk").setDebug(k.f5148r.booleanValue()).setAppsid(str).build(context).init();
                MobadsPermissionSettings.setPermissionLocation(false);
            }
        } catch (Exception unused) {
            f4573b.set(false);
        }
    }

    public static void a(RequestParameters.Builder builder, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        if (builder != null) {
            int iA = a(eVar.f4965u, "com.sdk.key.BID_DSP", 5);
            int iA2 = a(eVar.f4965u, "com.sdk.key.BID_PRICE", -1);
            e.a("supplement d " + iA + ",p " + iA2);
            if (iA < 1 || iA > 5 || iA2 < 0) {
                return;
            }
            j.a(builder, "addCustExt", (Class<?>[]) new Class[]{String.class, String.class}, "A", "" + iA);
            j.a(builder, "addCustExt", (Class<?>[]) new Class[]{String.class, String.class}, SDKManager.ALGO_B_AES_SHA256_RSA, "" + iA2);
            int iA3 = a(eVar.f4965u, "com.sdk.key.BID_EXPOSED", 0);
            e.a("supplement e " + iA3);
            if (iA3 < 0 || iA3 > 1) {
                return;
            }
            j.a(builder, "addCustExt", (Class<?>[]) new Class[]{String.class, String.class}, SDKManager.ALGO_C_RFU, "" + iA3);
        }
    }

    public static void a(Object obj, int i10) {
        try {
            Method methodA = j.a(obj, "biddingSuccess", (Class<?>[]) new Class[]{String.class});
            if (methodA != null) {
                methodA.invoke(obj, String.valueOf(i10));
            } else {
                Method methodA2 = j.a(obj, "biddingSuccess", (Class<?>[]) new Class[]{LinkedHashMap.class, BiddingListener.class});
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("ecpm", String.valueOf(i10));
                methodA2.invoke(obj, linkedHashMap, Proxy.newProxyInstance(BiddingListener.class.getClassLoader(), new Class[]{BiddingListener.class}, new b()));
            }
            e.a("bd send sus " + i10);
        } catch (Exception e10) {
            e.a("bd send sus err " + e10);
        }
    }

    public static void a(Object obj, RequestParameters requestParameters) {
        j.a(obj, "setRequestParameters", (Class<?>[]) new Class[]{RequestParameters.class}, requestParameters);
    }

    public static void a(Object obj, String str) {
        try {
            Method methodA = j.a(obj, "biddingFail", (Class<?>[]) new Class[]{String.class});
            if (methodA != null) {
                methodA.invoke(obj, str);
            } else {
                Method methodA2 = j.a(obj, "biddingSuccess", (Class<?>[]) new Class[]{LinkedHashMap.class, BiddingListener.class});
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put(MediationConstant.KEY_REASON, 203);
                methodA2.invoke(obj, linkedHashMap, Proxy.newProxyInstance(BiddingListener.class.getClassLoader(), new Class[]{BiddingListener.class}, new C0128a()));
            }
            e.a("bd send fail " + str);
        } catch (Exception e10) {
            e.a("bd send fail err " + e10);
        }
    }

    public static boolean a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, int i10) {
        return com.aggmoread.sdk.z.c.a.a.e.p.a(fVar, i10);
    }

    public static boolean a(String str) {
        try {
            String strB = b();
            if (strB.equals(str)) {
                return true;
            }
            double d10 = Double.parseDouble(strB) * 10000.0d;
            double d11 = Double.parseDouble(str) * 10000.0d;
            e.a("checkSDKSupport l " + d10 + ", s " + d11);
            return d10 >= d11;
        } catch (Exception unused) {
            return false;
        }
    }
}

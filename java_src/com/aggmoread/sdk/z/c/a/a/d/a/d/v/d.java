package com.aggmoread.sdk.z.c.a.a.d.a.d.v;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.aggmoread.sdk.z.c.a.a.d.a.d.n;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.qq.e.ads.banner2.UnifiedBannerADListener;
import com.qq.e.ads.banner2.UnifiedBannerView;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.ads.interstitial2.UnifiedInterstitialADListener;
import com.qq.e.ads.nativ.ADSize;
import com.qq.e.ads.nativ.NativeADUnifiedListener;
import com.qq.e.ads.nativ.NativeExpressAD;
import com.qq.e.ads.nativ.NativeUnifiedAD;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.ads.rewardvideo.RewardVideoADListener;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.ads.splash.SplashAD;
import com.qq.e.ads.splash.SplashADListener;
import com.qq.e.comm.listeners.ADRewardListener;
import com.qq.e.comm.pi.IBidding;
import com.sigmob.windad.WindAds;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static AtomicBoolean f4777a = new AtomicBoolean();

    static class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ InterfaceC0164d f4778a;

        a(InterfaceC0164d interfaceC0164d) {
            this.f4778a = interfaceC0164d;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (!"onReward".equals(method.getName())) {
                return null;
            }
            com.aggmoread.sdk.z.c.a.a.e.e.b("GDT_PAH_TAG", "onReward enter");
            Object obj2 = objArr[0];
            if (!(obj2 instanceof Map)) {
                return null;
            }
            this.f4778a.onReward((Map) obj2);
            return null;
        }
    }

    static class b implements InterfaceC0164d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f4779a;

        b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar) {
            this.f4779a = eVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.d.InterfaceC0164d
        public void onReward(Map<String, Object> map) {
            if (this.f4779a.f4960p.c() != null) {
                this.f4779a.f4960p.c().onReward(map);
            }
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f4780a;

        static {
            int[] iArr = new int[e.values().length];
            f4780a = iArr;
            try {
                iArr[e.SPLASH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4780a[e.UNIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4780a[e.EXPRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4780a[e.REWARD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4780a[e.INTERSTITIAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4780a[e.FULLSCREEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4780a[e.BANNER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.d$d, reason: collision with other inner class name */
    public interface InterfaceC0164d {
        void onReward(Map<String, Object> map);
    }

    public enum e {
        SPLASH(SplashAD.class),
        UNIFIED(NativeUnifiedAD.class),
        EXPRESS(NativeExpressAD.class),
        INTERSTITIAL(UnifiedInterstitialAD.class),
        REWARD(RewardVideoAD.class),
        FULLSCREEN(UnifiedInterstitialAD.class),
        BANNER(UnifiedBannerView.class);


        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Class f4789b;

        e(Class cls) {
            this.f4789b = cls;
        }

        public Class a() {
            return this.f4789b;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "AD_TYPE{cls=" + this.f4789b + '}';
        }
    }

    public static int a(Object obj) {
        int iIntValue;
        try {
            Object objA = a(obj.getClass(), "getECPM", obj);
            iIntValue = objA instanceof Integer ? ((Integer) objA).intValue() : -1;
        } catch (Exception unused) {
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("xxx", "gdt get ecpm " + iIntValue);
        return iIntValue;
    }

    public static void b(Object obj, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        com.aggmoread.sdk.z.c.a.a.c.s.c cVar;
        if (eVar == null || (cVar = eVar.f4960p) == null || cVar.c() == null) {
            return;
        }
        a(obj, eVar, fVar);
        a(obj, new b(eVar));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:34:0x01ac  */
    public static Object a(Context context, String str, String str2, e eVar, String str3, Object obj, Object... objArr) {
        Object obj2;
        Object objA;
        try {
            com.aggmoread.sdk.z.c.a.a.e.e.b("GDT_PAH_TAG", "entity token " + str3);
            if (TextUtils.isEmpty(str3) || !p.a("4.430")) {
                boolean zA = p.a("4.440");
                com.aggmoread.sdk.z.c.a.a.e.e.b("GDT_PAH_TAG", "isConstructorNoAppId = " + zA + ", type: " + eVar);
                if (zA) {
                    switch (c.f4780a[eVar.ordinal()]) {
                        case 1:
                            return new SplashAD(context, str2, (SplashADListener) obj, ((Integer) objArr[1]).intValue());
                        case 2:
                            return new NativeUnifiedAD(context, str2, (NativeADUnifiedListener) obj);
                        case 3:
                            return new NativeExpressAD(context, (ADSize) objArr[0], str2, (NativeExpressAD.NativeExpressADListener) obj);
                        case 4:
                            return new RewardVideoAD(context, str2, (RewardVideoADListener) obj, ((Boolean) objArr[0]).booleanValue());
                        case 5:
                        case 6:
                            return new UnifiedInterstitialAD(n.a(context), str2, (UnifiedInterstitialADListener) obj);
                        case 7:
                            return new UnifiedBannerView(n.a(context), str2, (UnifiedBannerADListener) obj);
                    }
                }
                Class clsA = eVar.a();
                switch (c.f4780a[eVar.ordinal()]) {
                    case 1:
                        return clsA.getConstructor(Context.class, View.class, String.class, String.class, SplashADListener.class, Integer.TYPE).newInstance(context, objArr[0], str, str2, obj, objArr[1]);
                    case 2:
                        return clsA.getConstructor(Context.class, String.class, String.class, NativeADUnifiedListener.class).newInstance(context, str, str2, obj);
                    case 3:
                        return clsA.getConstructor(Context.class, ADSize.class, String.class, String.class, NativeExpressAD.NativeExpressADListener.class).newInstance(context, objArr[0], str, str2, obj);
                    case 4:
                        return clsA.getConstructor(Context.class, String.class, String.class, RewardVideoADListener.class, Boolean.TYPE).newInstance(context, str, str2, obj, objArr[0]);
                    case 5:
                    case 6:
                        return clsA.getConstructor(Activity.class, String.class, String.class, UnifiedInterstitialADListener.class).newInstance(n.a(context), str, str2, obj);
                    case 7:
                        return clsA.getConstructor(Activity.class, String.class, String.class, UnifiedBannerADListener.class).newInstance(n.a(context), str, str2, obj);
                }
                return null;
            }
            Class clsA2 = eVar.a();
            switch (c.f4780a[eVar.ordinal()]) {
                case 1:
                    if (!TextUtils.isEmpty(str3)) {
                        Class cls = Integer.TYPE;
                        Object objA2 = a((Class<Object>) clsA2, (Class<?>[]) new Class[]{Context.class, String.class, SplashADListener.class, cls, Map.class, View.class, String.class}, context, str2, (SplashADListener) obj, Integer.valueOf(((Integer) objArr[1]).intValue()), null, null, str3);
                        if (objA2 != null) {
                            obj2 = objA2;
                        } else {
                            objA = a((Class<Object>) clsA2, (Class<?>[]) new Class[]{Context.class, String.class, SplashADListener.class, cls, String.class}, context, str2, (SplashADListener) obj, Integer.valueOf(((Integer) objArr[1]).intValue()), str3);
                            obj2 = objA;
                        }
                    } else {
                        obj2 = null;
                    }
                    break;
                case 2:
                    if (!TextUtils.isEmpty(str3)) {
                        objA = a((Class<Object>) clsA2, (Class<?>[]) new Class[]{Context.class, String.class, NativeADUnifiedListener.class, String.class}, context, str2, (NativeADUnifiedListener) obj, str3);
                        obj2 = objA;
                    } else {
                        obj2 = null;
                    }
                    break;
                case 3:
                    if (!TextUtils.isEmpty(str3)) {
                        objA = a((Class<Object>) clsA2, (Class<?>[]) new Class[]{Context.class, ADSize.class, String.class, NativeExpressAD.NativeExpressADListener.class, String.class}, context, (ADSize) objArr[0], str2, (NativeExpressAD.NativeExpressADListener) obj, str3);
                        obj2 = objA;
                    } else {
                        obj2 = null;
                    }
                    break;
                case 4:
                    if (!TextUtils.isEmpty(str3)) {
                        objA = a((Class<Object>) clsA2, (Class<?>[]) new Class[]{Context.class, String.class, RewardVideoADListener.class, Boolean.TYPE, String.class}, context, str2, (RewardVideoADListener) obj, Boolean.valueOf(((Boolean) objArr[0]).booleanValue()), str3);
                        obj2 = objA;
                    } else {
                        obj2 = null;
                    }
                    break;
                case 5:
                case 6:
                    if (!TextUtils.isEmpty(str3)) {
                        objA = a((Class<Object>) clsA2, (Class<?>[]) new Class[]{Activity.class, String.class, UnifiedInterstitialADListener.class, Map.class, String.class}, n.a(context), str2, (UnifiedInterstitialADListener) obj, null, str3);
                        obj2 = objA;
                    } else {
                        obj2 = null;
                    }
                    break;
                case 7:
                    if (!TextUtils.isEmpty(str3)) {
                        objA = a((Class<Object>) clsA2, (Class<?>[]) new Class[]{Activity.class, String.class, UnifiedBannerADListener.class, Map.class, String.class}, n.a(context), str2, (UnifiedBannerADListener) obj, null, str3);
                        obj2 = objA;
                    } else {
                        obj2 = null;
                    }
                    break;
                default:
                    obj2 = null;
                    break;
            }
            com.aggmoread.sdk.z.c.a.a.e.e.b("GDT_PAH_TAG", "entity  " + obj2);
            return obj2;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Object a(Class<?> cls, String str, Object obj) {
        return a(cls, str, null, obj, new Object[0]);
    }

    public static Object a(Class<?> cls, String str, Class<?>[] clsArr, Object obj, Object... objArr) {
        try {
            com.aggmoread.sdk.z.c.a.a.e.e.b("GDT_PAH_TAG", "obj: " + obj + ", cls " + cls);
            return cls.getMethod(str, clsArr).invoke(obj, objArr);
        } catch (Exception e10) {
            e10.printStackTrace();
            com.aggmoread.sdk.z.c.a.a.e.e.b("GDT_PAH_TAG", "err " + e10.getMessage());
            return null;
        }
    }

    private static <T> T a(Class<T> cls, Class<?>[] clsArr, Object... objArr) {
        try {
            T tNewInstance = cls.getConstructor(clsArr).newInstance(objArr);
            com.aggmoread.sdk.z.c.a.a.e.e.a("new instance success " + tNewInstance);
            return tNewInstance;
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.a("new instance fail " + e10.getMessage());
            return null;
        }
    }

    public static void a(Object obj, int i10) {
        com.aggmoread.sdk.z.c.a.a.e.e.a("GDT_PAH_TAG", "s win s = %s, p = %s", obj, Integer.valueOf(i10));
        Class<?> cls = obj.getClass();
        try {
            Method method = cls.getMethod("sendWinNotification", Map.class);
            Object obj2 = IBidding.class.getField("EXPECT_COST_PRICE").get(null);
            HashMap map = new HashMap();
            if (obj2 instanceof String) {
                com.aggmoread.sdk.z.c.a.a.e.e.b("GDT_PAH_TAG", "key_cost " + obj2);
                map.put((String) obj2, Integer.valueOf(i10));
            }
            method.invoke(obj, map);
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.a("GDT_PAH_TAG", "send map method err  = %s", e10);
            try {
                cls.getMethod("sendWinNotification", Integer.TYPE).invoke(obj, Integer.valueOf(i10));
            } catch (Exception e11) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("GDT_PAH_TAG", "send method err  = %s", e11);
            }
        }
    }

    public static void a(Object obj, int i10, int i11, String str) {
        String str2 = str;
        com.aggmoread.sdk.z.c.a.a.e.e.a("GDT_PAH_TAG", "s los s = %s,p = %s,r = %s, ad = %s", obj, Integer.valueOf(i10), Integer.valueOf(i11), str2);
        Class<?> cls = obj.getClass();
        try {
            Method method = cls.getMethod("sendLossNotification", Map.class);
            HashMap map = new HashMap();
            Field field = IBidding.class.getField(WindAds.LOSS_REASON);
            Field field2 = IBidding.class.getField("WIN_PRICE");
            Field field3 = IBidding.class.getField(WindAds.ADN_ID);
            Object obj2 = field.get(null);
            Object obj3 = field2.get(null);
            Object obj4 = field3.get(null);
            if (obj2 instanceof String) {
                com.aggmoread.sdk.z.c.a.a.e.e.b("GDT_PAH_TAG", "key_cost " + obj2);
                map.put((String) obj2, Integer.valueOf(i11));
            }
            if (obj3 instanceof String) {
                com.aggmoread.sdk.z.c.a.a.e.e.b("GDT_PAH_TAG", "key_price " + obj3);
                map.put((String) obj3, Integer.valueOf(i10));
            }
            if (obj4 instanceof String) {
                com.aggmoread.sdk.z.c.a.a.e.e.b("GDT_PAH_TAG", "key_adn " + obj4);
                map.put((String) obj4, str2);
            }
            method.invoke(obj, map);
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.a("GDT_PAH_TAG", "send map method err  = %s", e10);
            try {
                Class<?> cls2 = Integer.TYPE;
                Method method2 = cls.getMethod("sendLossNotification", cls2, cls2, String.class);
                Object[] objArr = new Object[3];
                objArr[0] = Integer.valueOf(i10);
                objArr[1] = Integer.valueOf(i11);
                if (str2 == null) {
                    str2 = "";
                }
                objArr[2] = str2;
                method2.invoke(obj, objArr);
            } catch (Exception e11) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("GDT_PAH_TAG", "err  = %s", e11);
            }
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    public static void a(Object obj, InterfaceC0164d interfaceC0164d) {
        if (ADRewardListener.class != 0) {
            try {
                Object objNewProxyInstance = Proxy.newProxyInstance(ADRewardListener.class.getClassLoader(), new Class[]{ADRewardListener.class}, new a(interfaceC0164d));
                com.aggmoread.sdk.z.c.a.a.e.e.b("GDT_PAH_TAG", "set reward listener " + ADRewardListener.class);
                obj.getClass().getMethod("setRewardListener", ADRewardListener.class).invoke(obj, objNewProxyInstance);
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.b("GDT_PAH_TAG", "err " + e10);
            }
        }
    }

    public static void a(Object obj, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        try {
            String strE = eVar.f4960p.e();
            String strA = eVar.f4960p.a();
            com.aggmoread.sdk.z.c.a.a.e.e.b("GDT_PAH_TAG", "u = " + strE + ", cd = " + strA);
            String strA2 = p.a(strA, fVar.f5003c.c(f.c.f5015a0));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" _extrasInfo = ");
            sb2.append(strA2);
            com.aggmoread.sdk.z.c.a.a.e.e.b("GDT_PAH_TAG", sb2.toString());
            obj.getClass().getMethod("setServerSideVerificationOptions", ServerSideVerificationOptions.class).invoke(obj, new ServerSideVerificationOptions.Builder().setUserId(strE).setCustomData(strA2).build());
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("xxx", "set ss ver err " + e10);
        }
    }

    public static void a(String str) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("shakable " + str);
        HashMap map = new HashMap();
        map.put("shakable", str);
        a("setExtraUserData", (Class<?>[]) new Class[]{Map.class}, map);
    }

    private static void a(String str, Class<?>[] clsArr, Object... objArr) {
        try {
            a(Class.forName("com.qq.e.comm.managers.setting.GlobalSetting"), str, clsArr, null, objArr);
            com.aggmoread.sdk.z.c.a.a.e.e.b("invoke");
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("e " + e10.getMessage());
        }
    }

    public static void a(boolean z10) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("isAgreePrivacy " + z10);
        a("setAgreePrivacyStrategy", (Class<?>[]) new Class[]{Boolean.TYPE}, Boolean.valueOf(z10));
    }
}

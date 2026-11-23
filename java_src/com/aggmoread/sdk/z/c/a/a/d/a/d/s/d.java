package com.aggmoread.sdk.z.c.a.a.d.a.d.s;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<b, com.aggmoread.sdk.z.c.a.a.d.a.d.s.b<?>> f4663a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile d f4664b;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f4665a;

        static {
            int[] iArr = new int[com.aggmoread.sdk.z.c.a.a.c.j.values().length];
            f4665a = iArr;
            try {
                iArr[com.aggmoread.sdk.z.c.a.a.c.j.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4665a[com.aggmoread.sdk.z.c.a.a.c.j.SPLASH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4665a[com.aggmoread.sdk.z.c.a.a.c.j.INTERSTITIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4665a[com.aggmoread.sdk.z.c.a.a.c.j.REWARD_VIDEO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4665a[com.aggmoread.sdk.z.c.a.a.c.j.INFORMATION_FLOW.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4665a[com.aggmoread.sdk.z.c.a.a.c.j.FULL_SCREEN_VIDEO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4665a[com.aggmoread.sdk.z.c.a.a.c.j.DRAW.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f4665a[com.aggmoread.sdk.z.c.a.a.c.j.MIX_INFORMATION_FLOW.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f4666b = new b("BANNER", 0, 1);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final b f4667c = new b("SPLASH", 1, 2);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final b f4668d = new b("INTERSTITIAL", 2, 3);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final b f4669e = new b("NATIVE_AD", 3, 4);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final b f4670f = new b("EXPRESS_AD", 4, 9);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final b f4671g = new b("REWARD_VIDEO", 5, 5);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f4672h = new b("DRAW", 6, 8);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final b f4673i = new b("FULL_SCREEN_VIDEO", 7, 7);

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final b f4674j = new b("MXI_FEED_AD", 8, 9);

        private b(String str, int i10, int i11) {
            super(str, i10);
        }
    }

    private d() {
        Map<b, com.aggmoread.sdk.z.c.a.a.d.a.d.s.b<?>> map = f4663a;
        map.put(b.f4669e, new n());
        map.put(b.f4670f, new g());
        map.put(b.f4667c, new m());
        map.put(b.f4671g, new l());
        map.put(b.f4668d, new i());
        map.put(b.f4673i, new h());
        map.put(b.f4666b, new com.aggmoread.sdk.z.c.a.a.d.a.d.s.a());
        map.put(b.f4672h, new f());
        map.put(b.f4674j, new j());
    }

    private com.aggmoread.sdk.z.c.a.a.d.a.d.s.b<?> a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        Map<b, com.aggmoread.sdk.z.c.a.a.d.a.d.s.b<?>> map;
        b bVar;
        String strC = fVar.f5003c.c(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5017b0);
        try {
            if (!TextUtils.isEmpty(strC)) {
                if (eVar.f4949e.a() != Integer.parseInt(strC)) {
                    if (eVar.f4949e.a() == com.aggmoread.sdk.z.c.a.a.c.j.DRAW.a()) {
                        map = f4663a;
                        bVar = b.f4672h;
                    } else if (eVar.f4949e.a() == com.aggmoread.sdk.z.c.a.a.c.j.MIX_INFORMATION_FLOW.a()) {
                        map = f4663a;
                        bVar = b.f4674j;
                    }
                    return map.get(bVar);
                }
                switch (a.f4665a[eVar.f4949e.ordinal()]) {
                    case 1:
                        map = f4663a;
                        bVar = b.f4666b;
                        return map.get(bVar);
                    case 2:
                        map = f4663a;
                        bVar = b.f4667c;
                        return map.get(bVar);
                    case 3:
                        map = f4663a;
                        bVar = b.f4668d;
                        return map.get(bVar);
                    case 4:
                        map = f4663a;
                        bVar = b.f4671g;
                        return map.get(bVar);
                    case 5:
                        String strA = fVar.f5003c.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.Z, "2");
                        com.aggmoread.sdk.z.c.a.a.e.e.b("xxx", "v1 " + strA + ", v2 " + eVar.f4950f);
                        if (!TextUtils.isEmpty(eVar.f4950f) && eVar.f4950f.equals(strA)) {
                            if (strA.equalsIgnoreCase("2")) {
                                map = f4663a;
                                bVar = b.f4669e;
                            } else {
                                map = f4663a;
                                bVar = b.f4670f;
                            }
                            return map.get(bVar);
                        }
                        break;
                    case 6:
                        map = f4663a;
                        bVar = b.f4673i;
                        return map.get(bVar);
                    case 7:
                        map = f4663a;
                        bVar = b.f4672h;
                        return map.get(bVar);
                    case 8:
                        map = f4663a;
                        bVar = b.f4674j;
                        return map.get(bVar);
                    default:
                        break;
                }
            }
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.a(e10.getMessage());
        }
        return null;
    }

    public boolean b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.s.b<?> bVarA = a(eVar, fVar);
        if (bVarA != null) {
            bVarA.a(eVar, fVar);
            return true;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("ADCBH", "不支持的类型!");
        return false;
    }

    public static d a() {
        if (f4664b == null) {
            synchronized (d.class) {
                if (f4664b == null) {
                    f4664b = new d();
                }
            }
        }
        return f4664b;
    }
}

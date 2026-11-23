package com.aggmoread.sdk.z.c.a.a.d.b;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f4925a;

        static {
            int[] iArr = new int[com.aggmoread.sdk.z.c.a.a.c.j.values().length];
            f4925a = iArr;
            try {
                iArr[com.aggmoread.sdk.z.c.a.a.c.j.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4925a[com.aggmoread.sdk.z.c.a.a.c.j.SPLASH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4925a[com.aggmoread.sdk.z.c.a.a.c.j.INTERSTITIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4925a[com.aggmoread.sdk.z.c.a.a.c.j.REWARD_VIDEO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4925a[com.aggmoread.sdk.z.c.a.a.c.j.INFORMATION_FLOW.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4925a[com.aggmoread.sdk.z.c.a.a.c.j.FULL_SCREEN_VIDEO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4925a[com.aggmoread.sdk.z.c.a.a.c.j.DRAW.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0090 A[Catch: Exception -> 0x00a8, TryCatch #0 {Exception -> 0x00a8, blocks: (B:3:0x0008, B:5:0x000e, B:7:0x001a, B:8:0x0024, B:10:0x0029, B:11:0x002f, B:13:0x003b, B:15:0x0061, B:17:0x0069, B:18:0x006e, B:19:0x0073, B:20:0x0078, B:21:0x007d, B:24:0x0090, B:22:0x0082, B:25:0x0095, B:27:0x00a3), top: B:35:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00b0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a9 -> B:31:0x00b0). Please report as a decompilation issue!!! */
    public final com.aggmoread.sdk.z.c.a.a.d.b.a a(e eVar, f fVar) {
        com.aggmoread.sdk.z.c.a.a.d.b.a aVarG;
        String strC = fVar.f5003c.c(f.c.f5017b0);
        try {
            if (TextUtils.isEmpty(strC)) {
                aVarG = null;
            } else if (eVar.f4949e.a() == Integer.parseInt(strC)) {
                switch (a.f4925a[eVar.f4949e.ordinal()]) {
                    case 1:
                        aVarG = b(eVar, fVar);
                        break;
                    case 2:
                        aVarG = i(eVar, fVar);
                        break;
                    case 3:
                        aVarG = f(eVar, fVar);
                        break;
                    case 4:
                        aVarG = h(eVar, fVar);
                        break;
                    case 5:
                        String strA = fVar.f5003c.a(f.c.Z, "2");
                        com.aggmoread.sdk.z.c.a.a.e.e.b("xxx", "v1 " + strA + ", v2 " + eVar.f4950f);
                        if (!TextUtils.isEmpty(eVar.f4950f) && eVar.f4950f.equals(strA)) {
                            aVarG = e(eVar, fVar);
                        } else {
                            aVarG = null;
                        }
                        break;
                    case 6:
                        aVarG = d(eVar, fVar);
                        break;
                    case 7:
                        aVarG = c(eVar, fVar);
                        break;
                    default:
                        aVarG = null;
                        break;
                }
            } else if (eVar.f4949e.a() == com.aggmoread.sdk.z.c.a.a.c.j.DRAW.a()) {
                aVarG = c(eVar, fVar);
            } else if (eVar.f4949e.a() == com.aggmoread.sdk.z.c.a.a.c.j.MIX_INFORMATION_FLOW.a()) {
                aVarG = g(eVar, fVar);
            } else {
                aVarG = null;
            }
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.a(e10.getMessage());
        }
        return aVarG == null ? new com.aggmoread.sdk.z.c.a.a.d.b.a(eVar, fVar) : aVarG;
    }

    public com.aggmoread.sdk.z.c.a.a.d.b.a b(e eVar, f fVar) {
        return null;
    }

    public com.aggmoread.sdk.z.c.a.a.d.b.a c(e eVar, f fVar) {
        return null;
    }

    public com.aggmoread.sdk.z.c.a.a.d.b.a d(e eVar, f fVar) {
        return null;
    }

    public com.aggmoread.sdk.z.c.a.a.d.b.a e(e eVar, f fVar) {
        return null;
    }

    public com.aggmoread.sdk.z.c.a.a.d.b.a f(e eVar, f fVar) {
        return null;
    }

    public com.aggmoread.sdk.z.c.a.a.d.b.a g(e eVar, f fVar) {
        return null;
    }

    public com.aggmoread.sdk.z.c.a.a.d.b.a h(e eVar, f fVar) {
        return null;
    }

    public com.aggmoread.sdk.z.c.a.a.d.b.a i(e eVar, f fVar) {
        return null;
    }

    public boolean a() {
        return false;
    }
}

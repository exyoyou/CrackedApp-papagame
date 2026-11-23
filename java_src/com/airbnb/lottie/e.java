package com.airbnb.lottie;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f5612a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f5613b = "LOTTIE";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f5614c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f5615d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f5616e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AsyncUpdates f5617f = AsyncUpdates.AUTOMATIC;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static com.airbnb.lottie.network.e f5618g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static com.airbnb.lottie.network.d f5619h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static volatile com.airbnb.lottie.network.g f5620i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static volatile com.airbnb.lottie.network.f f5621j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static ThreadLocal<com.airbnb.lottie.utils.h> f5622k;

    private e() {
    }

    public static void b(String str) {
        if (f5614c) {
            f().a(str);
        }
    }

    public static float c(String str) {
        if (f5614c) {
            return f().b(str);
        }
        return 0.0f;
    }

    public static AsyncUpdates d() {
        return f5617f;
    }

    public static boolean e() {
        return f5616e;
    }

    private static com.airbnb.lottie.utils.h f() {
        com.airbnb.lottie.utils.h hVar = f5622k.get();
        if (hVar != null) {
            return hVar;
        }
        com.airbnb.lottie.utils.h hVar2 = new com.airbnb.lottie.utils.h();
        f5622k.set(hVar2);
        return hVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ File g(Context context) {
        return new File(context.getCacheDir(), "lottie_network_cache");
    }

    @Nullable
    public static com.airbnb.lottie.network.f h(@NonNull Context context) {
        if (!f5615d) {
            return null;
        }
        final Context applicationContext = context.getApplicationContext();
        com.airbnb.lottie.network.f fVar = f5621j;
        if (fVar == null) {
            synchronized (com.airbnb.lottie.network.f.class) {
                fVar = f5621j;
                if (fVar == null) {
                    com.airbnb.lottie.network.d dVar = f5619h;
                    if (dVar == null) {
                        dVar = new com.airbnb.lottie.network.d() { // from class: com.airbnb.lottie.d
                            @Override // com.airbnb.lottie.network.d
                            public final File getCacheDir() {
                                return e.g(applicationContext);
                            }
                        };
                    }
                    fVar = new com.airbnb.lottie.network.f(dVar);
                    f5621j = fVar;
                }
            }
        }
        return fVar;
    }

    @NonNull
    public static com.airbnb.lottie.network.g i(@NonNull Context context) {
        com.airbnb.lottie.network.g gVar = f5620i;
        if (gVar == null) {
            synchronized (com.airbnb.lottie.network.g.class) {
                gVar = f5620i;
                if (gVar == null) {
                    com.airbnb.lottie.network.f fVarH = h(context);
                    com.airbnb.lottie.network.e bVar = f5618g;
                    if (bVar == null) {
                        bVar = new com.airbnb.lottie.network.b();
                    }
                    gVar = new com.airbnb.lottie.network.g(fVarH, bVar);
                    f5620i = gVar;
                }
            }
        }
        return gVar;
    }

    public static void j(com.airbnb.lottie.network.d dVar) {
        com.airbnb.lottie.network.d dVar2 = f5619h;
        if (dVar2 == null && dVar == null) {
            return;
        }
        if (dVar2 == null || !dVar2.equals(dVar)) {
            f5619h = dVar;
            f5621j = null;
        }
    }

    public static void k(AsyncUpdates asyncUpdates) {
        f5617f = asyncUpdates;
    }

    public static void l(boolean z10) {
        f5616e = z10;
    }

    public static void m(com.airbnb.lottie.network.e eVar) {
        com.airbnb.lottie.network.e eVar2 = f5618g;
        if (eVar2 == null && eVar == null) {
            return;
        }
        if (eVar2 == null || !eVar2.equals(eVar)) {
            f5618g = eVar;
            f5620i = null;
        }
    }

    public static void n(boolean z10) {
        f5615d = z10;
    }

    public static void o(boolean z10) {
        if (f5614c == z10) {
            return;
        }
        f5614c = z10;
        if (z10 && f5622k == null) {
            f5622k = new ThreadLocal<>();
        }
    }
}

package com.kwad.components.core.q;

import androidx.annotation.NonNull;
import com.ksad.annotation.invoker.InvokeBy;
import com.kwad.sdk.api.core.SpeedLimitApi;
import java.io.InputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static volatile b akr = null;
    private static volatile int aks = 204800;
    static volatile boolean akt = true;
    static volatile boolean aku;
    static volatile Set<c> akv = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    public static synchronized void a(c cVar) {
        if (akv.contains(cVar)) {
            akv.remove(cVar);
        }
    }

    public static void f(boolean z10, int i10) {
        if (i10 > 0) {
            aks = i10 * 1024;
        }
        akt = z10;
    }

    @InvokeBy(invokerClass = com.kwad.sdk.service.c.class, methodId = "initModeImplForInvoker")
    public static void register() {
        try {
            com.kwad.sdk.service.c.a(SpeedLimitApi.class, a.class);
        } catch (Throwable unused) {
        }
    }

    public static b wf() {
        if (akr == null) {
            synchronized (b.class) {
                if (akr == null) {
                    akr = new b();
                }
            }
        }
        return akr;
    }

    public static boolean wg() {
        return akt;
    }

    public static int wh() {
        return aks / 1024;
    }

    private static synchronized InputStream wrap(@NonNull InputStream inputStream) {
        c cVar;
        cVar = new c(inputStream, aks / (akv.size() + 1));
        akv.add(cVar);
        return cVar;
    }

    public static InputStream wrapInputStream(InputStream inputStream) {
        return wrap(inputStream);
    }

    public final synchronized int wi() {
        int iWj;
        iWj = 0;
        try {
            Iterator<c> it2 = akv.iterator();
            while (it2.hasNext()) {
                iWj += (int) it2.next().wj();
            }
        } catch (Exception unused) {
        }
        return iWj;
    }
}

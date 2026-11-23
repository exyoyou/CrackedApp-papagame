package com.kwad.components.core.offline.a.f.a;

import com.kwad.sdk.core.response.model.AdResultData;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static final Map<Integer, WeakReference<AdResultData>> abo = new HashMap();

    public static void a(int i10, AdResultData adResultData) {
        if (adResultData == null) {
            return;
        }
        abo.put(Integer.valueOf(i10), new WeakReference<>(adResultData));
    }

    public static AdResultData bp(int i10) {
        WeakReference<AdResultData> weakReference = abo.get(Integer.valueOf(i10));
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return weakReference.get();
    }
}

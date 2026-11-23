package com.facebook.rebound;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final l f28869b = new l(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<k, String> f28870a = new HashMap();

    l(boolean z10) {
        if (z10) {
            a(k.f28866c, "default config");
        }
    }

    public static l c() {
        return f28869b;
    }

    public boolean a(k kVar, String str) {
        if (kVar == null) {
            throw new IllegalArgumentException("springConfig is required");
        }
        if (str == null) {
            throw new IllegalArgumentException("configName is required");
        }
        if (this.f28870a.containsKey(kVar)) {
            return false;
        }
        this.f28870a.put(kVar, str);
        return true;
    }

    public Map<k, String> b() {
        return Collections.unmodifiableMap(this.f28870a);
    }

    public void d() {
        this.f28870a.clear();
    }

    public boolean e(k kVar) {
        if (kVar != null) {
            return this.f28870a.remove(kVar) != null;
        }
        throw new IllegalArgumentException("springConfig is required");
    }
}

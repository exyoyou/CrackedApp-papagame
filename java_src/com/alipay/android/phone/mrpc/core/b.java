package com.alipay.android.phone.mrpc.core;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long f6889a = -6098125857367743614L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, String> f6890b = new HashMap();

    public final String a(String str) {
        return this.f6890b.get(str);
    }

    private Map<String, String> a() {
        return this.f6890b;
    }

    public final void a(String str, String str2) {
        this.f6890b.put(str, str2);
    }

    private void a(Map<String, String> map) {
        this.f6890b = map;
    }
}

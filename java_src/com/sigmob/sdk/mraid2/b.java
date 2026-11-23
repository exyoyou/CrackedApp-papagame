package com.sigmob.sdk.mraid2;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final b f81143b = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<String, e> f81144a = new HashMap<>();

    private b() {
    }

    public static b a() {
        return f81143b;
    }

    public e b(String uuid) {
        if (TextUtils.isEmpty(uuid)) {
            return null;
        }
        return this.f81144a.get(uuid);
    }

    public e a(String uuid) {
        if (TextUtils.isEmpty(uuid)) {
            return null;
        }
        e eVar = this.f81144a.get(uuid);
        this.f81144a.remove(uuid);
        return eVar;
    }

    public void a(String uuid, e value) {
        if (TextUtils.isEmpty(uuid)) {
            return;
        }
        this.f81144a.put(uuid, value);
    }
}

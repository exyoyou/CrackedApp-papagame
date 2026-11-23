package com.aggmoread.sdk.z.c.a.a;

import android.os.Bundle;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f4352a = new Bundle();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedHashMap<String, Object> f4353b = new LinkedHashMap<>();

    public int a(String str, int i10) {
        return this.f4352a.getInt(str, i10);
    }

    public void b(String str, Object obj) {
        this.f4353b.put(str, obj);
    }

    public <T> T a(String str, T t10) {
        return (T) this.f4353b.get(str);
    }

    public boolean a(String str) {
        return this.f4352a.containsKey(str) || this.f4353b.containsKey(str);
    }
}

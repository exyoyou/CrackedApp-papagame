package com.cloudplay.messagesdk.gson;

import com.cloudplay.messagesdk.gson.internal.LinkedTreeMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
public final class f extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedTreeMap<String, d> f23754a = new LinkedTreeMap<>();

    public void a(String str, d dVar) {
        LinkedTreeMap<String, d> linkedTreeMap = this.f23754a;
        if (dVar == null) {
            dVar = e.f23753a;
        }
        linkedTreeMap.put(str, dVar);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof f) && ((f) obj).f23754a.equals(this.f23754a));
    }

    public Set<Map.Entry<String, d>> h() {
        return this.f23754a.entrySet();
    }

    public int hashCode() {
        return this.f23754a.hashCode();
    }
}

package com.cloudplay.messagesdk.network.volley;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public interface Cache {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f23972a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f23973b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f23974c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f23975d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f23976e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f23977f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public Map<String, String> f23978g = Collections.emptyMap();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public List<d> f23979h;

        public boolean a() {
            return a(System.currentTimeMillis());
        }

        boolean b(long j10) {
            return this.f23977f < j10;
        }

        boolean a(long j10) {
            return this.f23976e < j10;
        }
    }

    void clear();

    a get(String str);

    void initialize();

    void invalidate(String str, boolean z10);

    void put(String str, a aVar);

    void remove(String str);
}

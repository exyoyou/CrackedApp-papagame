package com.cmic.gen.sdk;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f24234a;

    public a(int i10) {
        this.f24234a = new ConcurrentHashMap<>(i10);
    }

    public void a(String str, byte[] bArr) {
        if (str == null || bArr == null) {
            return;
        }
        this.f24234a.put(str, bArr);
    }

    public String b(String str) {
        return b(str, "");
    }

    public int c(String str) {
        return b(str, 0);
    }

    public byte[] a(String str) {
        if (str != null) {
            return (byte[]) this.f24234a.get(str);
        }
        return null;
    }

    public String b(String str, String str2) {
        return (str == null || !this.f24234a.containsKey(str)) ? str2 : (String) this.f24234a.get(str);
    }

    public void a(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.f24234a.put(str, str2);
    }

    public void a(String str, boolean z10) {
        if (str != null) {
            this.f24234a.put(str, Boolean.valueOf(z10));
        }
    }

    public boolean b(String str, boolean z10) {
        return (str == null || !this.f24234a.containsKey(str)) ? z10 : ((Boolean) this.f24234a.get(str)).booleanValue();
    }

    public void a(String str, int i10) {
        if (str != null) {
            this.f24234a.put(str, Integer.valueOf(i10));
        }
    }

    public void a(String str, long j10) {
        if (str != null) {
            this.f24234a.put(str, Long.valueOf(j10));
        }
    }

    public int b(String str, int i10) {
        return (str == null || !this.f24234a.containsKey(str)) ? i10 : ((Integer) this.f24234a.get(str)).intValue();
    }

    public void a(com.cmic.gen.sdk.d.b bVar) {
        if (bVar != null) {
            this.f24234a.put("logBean", bVar);
        }
    }

    public com.cmic.gen.sdk.d.b a() {
        com.cmic.gen.sdk.d.b bVar = (com.cmic.gen.sdk.d.b) this.f24234a.get("logBean");
        return bVar != null ? bVar : new com.cmic.gen.sdk.d.b();
    }

    public long b(String str, long j10) {
        return (str == null || !this.f24234a.containsKey(str)) ? j10 : ((Long) this.f24234a.get(str)).longValue();
    }

    public void a(com.cmic.gen.sdk.a.a aVar) {
        if (aVar != null) {
            this.f24234a.put("current_config", aVar);
        }
    }

    public com.cmic.gen.sdk.a.a b() {
        com.cmic.gen.sdk.a.a aVar = (com.cmic.gen.sdk.a.a) this.f24234a.get("current_config");
        if (aVar != null) {
            return aVar;
        }
        com.cmic.gen.sdk.e.c.a("UmcConfigBean为空", "请核查");
        return new com.cmic.gen.sdk.a.a.C0531a().a();
    }
}

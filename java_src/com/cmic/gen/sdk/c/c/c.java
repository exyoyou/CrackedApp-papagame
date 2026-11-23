package com.cmic.gen.sdk.c.c;

import android.net.Network;
import com.cmic.gen.sdk.c.b.g;
import com.cmic.gen.sdk.e.e;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f24421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f24422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, String> f24423c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f24424d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f24425e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f24426f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Network f24427g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f24428h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f24429i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f24430j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final g f24431k;

    private c(String str, Map<String, String> map, g gVar, String str2, String str3) {
        this.f24425e = false;
        this.f24422b = str;
        this.f24431k = gVar;
        this.f24423c = map == null ? new HashMap<>() : map;
        this.f24421a = gVar == null ? "" : gVar.b().toString();
        this.f24424d = str2;
        this.f24426f = str3;
        this.f24429i = gVar != null ? gVar.a() : "";
        l();
    }

    private void l() {
        this.f24423c.put("sdkVersion", com.cmic.gen.sdk.auth.c.SDK_VERSION);
        this.f24423c.put("Content-Type", "application/json");
        this.f24423c.put("CMCC-EncryptType", "STD");
        this.f24423c.put("traceId", this.f24426f);
        this.f24423c.put("appid", this.f24429i);
        this.f24423c.put("connection", "Keep-Alive");
    }

    public void a(String str, String str2) {
        this.f24423c.put(str, str2);
    }

    public boolean b() {
        return this.f24425e;
    }

    public Map<String, String> c() {
        return this.f24423c;
    }

    public String d() {
        return this.f24421a;
    }

    public String e() {
        return this.f24424d;
    }

    public String f() {
        return this.f24426f;
    }

    public boolean g() {
        return !e.a(this.f24426f) || this.f24422b.contains("logReport") || this.f24422b.contains("uniConfig");
    }

    public Network h() {
        return this.f24427g;
    }

    long i() {
        return this.f24428h;
    }

    public boolean j() {
        int i10 = this.f24430j;
        this.f24430j = i10 + 1;
        return i10 < 2;
    }

    public g k() {
        return this.f24431k;
    }

    public String a() {
        return this.f24422b;
    }

    void a(boolean z10) {
        this.f24425e = z10;
    }

    public void a(Network network) {
        this.f24427g = network;
    }

    void a(long j10) {
        this.f24428h = j10;
    }

    public c(String str, g gVar, String str2, String str3) {
        this(str, null, gVar, str2, str3);
    }
}

package com.aggmoread.sdk.z.c.a.a.d.b;

import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class i {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static i f5117f = new b().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f5119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.k f5122e;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f5123a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f5124b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f5125c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f5126d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private com.aggmoread.sdk.z.c.a.a.c.k f5127e;

        public b() {
            new HashMap();
        }

        public b a(com.aggmoread.sdk.z.c.a.a.c.k kVar) {
            this.f5127e = kVar;
            return this;
        }

        public b a(String str) {
            this.f5126d = str;
            return this;
        }

        public i a() {
            i iVar = new i();
            iVar.f5118a = this.f5123a;
            iVar.f5119b = this.f5124b;
            iVar.f5122e = this.f5127e;
            iVar.f5120c = this.f5125c;
            iVar.f5121d = this.f5126d;
            return iVar;
        }
    }

    private i() {
        this.f5118a = -1;
        this.f5119b = false;
        this.f5120c = "";
    }

    public String b() {
        return this.f5120c;
    }

    public com.aggmoread.sdk.z.c.a.a.c.k c() {
        return this.f5122e;
    }

    public boolean d() {
        return this.f5119b;
    }

    public String toString() {
        return "SDKInitConfig{agreePrivacy='" + this.f5118a + "'useTextureView='" + this.f5119b + "'privacyController='" + this.f5122e + "'oaid='" + this.f5120c + "'authorities='" + this.f5121d + "'}";
    }

    public String a() {
        return this.f5121d;
    }
}

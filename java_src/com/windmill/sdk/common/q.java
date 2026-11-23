package com.windmill.sdk.common;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f86854a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f86855b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f86856c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f86857d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JSONObject f86858e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f86859f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f86860g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f86861h;

    public q(JSONObject check_body, String reward_url, String imp_url) {
        this.f86858e = check_body;
        this.f86859f = reward_url;
        this.f86860g = imp_url;
    }

    public String a() {
        return this.f86860g;
    }

    public String b() {
        return this.f86859f;
    }

    public String c() {
        return this.f86861h;
    }

    public JSONObject d() {
        return this.f86858e;
    }

    public int e() {
        return this.f86857d;
    }

    public void a(String m10) {
        this.f86861h = m10;
    }

    public void a(int status) {
        this.f86857d = status;
    }
}

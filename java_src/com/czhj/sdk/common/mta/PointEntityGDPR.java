package com.czhj.sdk.common.mta;

/* JADX INFO: loaded from: classes9.dex */
public abstract class PointEntityGDPR extends PointEntitySuper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f25502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f25503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f25504c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f25505d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f25506e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f25507f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f25508g;

    public String getAge() {
        return this.f25504c;
    }

    public String getAge_restricted() {
        return this.f25503b;
    }

    public String getGdpr_dialog_region() {
        return this.f25505d;
    }

    public String getGdpr_region() {
        return this.f25506e;
    }

    public String getIs_minor() {
        return this.f25508g;
    }

    public String getIs_unpersonalized() {
        return this.f25507f;
    }

    public String getUser_consent() {
        return this.f25502a;
    }

    public void setAge(String str) {
        this.f25504c = str;
    }

    public void setAge_restricted(String str) {
        this.f25503b = str;
    }

    public void setGdpr_dialog_region(String str) {
        this.f25505d = str;
    }

    public void setGdpr_region(String str) {
        this.f25506e = str;
    }

    public void setIs_minor(String str) {
        this.f25508g = str;
    }

    public void setIs_unpersonalized(String str) {
        this.f25507f = str;
    }

    public void setUser_consent(String str) {
        this.f25502a = str;
    }
}

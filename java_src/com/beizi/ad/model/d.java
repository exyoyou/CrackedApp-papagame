package com.beizi.ad.model;

import com.beizi.fusion.tool.at;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<String> f9476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f9477b;

    public List<String> a() {
        return this.f9476a;
    }

    public String b() {
        return this.f9477b;
    }

    public String toString() {
        return "{\"version\":\"" + this.f9477b + "\", \"list\":" + at.a(this.f9476a) + '}';
    }

    public void a(List<String> list) {
        this.f9476a = list;
    }

    public void a(String str) {
        this.f9477b = str;
    }
}

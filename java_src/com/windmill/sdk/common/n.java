package com.windmill.sdk.common;

import java.util.HashMap;

/* JADX INFO: loaded from: classes8.dex */
public class n implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<String, String> f86804a = new HashMap<>();

    public void a(HashMap<String, String> customGroup) {
        this.f86804a.clear();
        if (customGroup != null) {
            this.f86804a.putAll(customGroup);
        }
    }

    @Override // com.windmill.sdk.common.m
    public HashMap<String, String> a() {
        return this.f86804a;
    }
}

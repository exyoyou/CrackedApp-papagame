package com.sigmob.sdk.videoplayer;

import java.util.HashMap;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f82090a = "URL_KEY_DEFAULT";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f82091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LinkedHashMap f82092c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public HashMap<String, String> f82093d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f82094e;
    public String title;

    public g(Object url) {
        this.f82092c = new LinkedHashMap();
        this.title = "";
        this.f82093d = new HashMap<>();
        this.f82094e = false;
        this.f82092c.put("URL_KEY_DEFAULT", url);
        this.f82091b = 0;
    }

    public Object a() {
        return b(this.f82091b);
    }

    public Object b() {
        return a(this.f82091b);
    }

    public g c() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.putAll(this.f82092c);
        return new g(linkedHashMap, this.title);
    }

    public g(String url) {
        this.f82092c = new LinkedHashMap();
        this.title = "";
        this.f82093d = new HashMap<>();
        this.f82094e = false;
        this.f82092c.put("URL_KEY_DEFAULT", url);
        this.f82091b = 0;
    }

    public String a(int index) {
        int i10 = 0;
        for (Object obj : this.f82092c.keySet()) {
            if (i10 == index) {
                return obj.toString();
            }
            i10++;
        }
        return null;
    }

    public Object b(int index) {
        int i10 = 0;
        for (Object obj : this.f82092c.keySet()) {
            if (i10 == index) {
                return this.f82092c.get(obj);
            }
            i10++;
        }
        return null;
    }

    public g(String url, String title) {
        this.f82092c = new LinkedHashMap();
        this.title = "";
        this.f82093d = new HashMap<>();
        this.f82094e = false;
        this.f82092c.put("URL_KEY_DEFAULT", url);
        this.title = title;
        this.f82091b = 0;
    }

    public boolean a(Object object) {
        if (object == null) {
            return false;
        }
        return this.f82092c.containsValue(object);
    }

    public g(LinkedHashMap urlsMap) {
        this.f82092c = new LinkedHashMap();
        this.title = "";
        this.f82093d = new HashMap<>();
        this.f82094e = false;
        this.f82092c.clear();
        this.f82092c.putAll(urlsMap);
        this.f82091b = 0;
    }

    public g(LinkedHashMap urlsMap, String title) {
        this.f82092c = new LinkedHashMap();
        this.title = "";
        this.f82093d = new HashMap<>();
        this.f82094e = false;
        this.f82092c.clear();
        this.f82092c.putAll(urlsMap);
        this.title = title;
        this.f82091b = 0;
    }
}

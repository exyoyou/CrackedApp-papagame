package com.baidu.passbqt.http;

import com.baidu.passbqt.NoProguard;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class HttpHashMap implements NoProguard {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f8313a = new HashMap();

    public void a(String str) {
    }

    public String b(String str) {
        return this.f8313a.get(str);
    }

    public Map a() {
        return this.f8313a;
    }

    public void a(String str, String str2) {
        this.f8313a.put(str, str2);
    }

    public void a(Map<? extends String, ? extends String> map) {
        this.f8313a.putAll(map);
    }
}

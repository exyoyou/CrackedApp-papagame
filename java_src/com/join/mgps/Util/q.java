package com.join.mgps.Util;

import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Properties f49947a;

    private q() throws IOException {
        FileInputStream fileInputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
        Properties properties = new Properties();
        this.f49947a = properties;
        properties.load(fileInputStream);
        fileInputStream.close();
    }

    public static q i() throws IOException {
        return new q();
    }

    public boolean a(final Object key) {
        return this.f49947a.containsKey(key);
    }

    public boolean b(final Object value) {
        return this.f49947a.containsValue(value);
    }

    public Set<Map.Entry<Object, Object>> c() {
        return this.f49947a.entrySet();
    }

    public String d(final String name) {
        return this.f49947a.getProperty(name);
    }

    public String e(final String name, final String defaultValue) {
        return this.f49947a.getProperty(name, defaultValue);
    }

    public boolean f() {
        return this.f49947a.isEmpty();
    }

    public Set<Object> g() {
        return this.f49947a.keySet();
    }

    public Enumeration<Object> h() {
        return this.f49947a.keys();
    }

    public int j() {
        return this.f49947a.size();
    }

    public Collection<Object> k() {
        return this.f49947a.values();
    }
}

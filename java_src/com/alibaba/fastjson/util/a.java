package com.alibaba.fastjson.util;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.ProtectionDomain;

/* JADX INFO: loaded from: classes7.dex */
public class a extends ClassLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ProtectionDomain f6802a = (ProtectionDomain) AccessController.doPrivileged(new C0201a());

    /* JADX INFO: renamed from: com.alibaba.fastjson.util.a$a, reason: collision with other inner class name */
    static class C0201a implements PrivilegedAction<Object> {
        C0201a() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return a.class.getProtectionDomain();
        }
    }

    public a() {
        super(b());
    }

    static ClassLoader b() {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader != null) {
            try {
                contextClassLoader.loadClass(com.alibaba.fastjson.a.class.getName());
                return contextClassLoader;
            } catch (ClassNotFoundException unused) {
            }
        }
        return com.alibaba.fastjson.a.class.getClassLoader();
    }

    public Class<?> a(String str, byte[] bArr, int i10, int i11) throws ClassFormatError {
        return defineClass(str, bArr, i10, i11, f6802a);
    }

    public boolean c(Class<?> cls) {
        ClassLoader classLoader = cls.getClassLoader();
        if (classLoader == null) {
            return false;
        }
        for (ClassLoader parent = this; parent != null; parent = parent.getParent()) {
            if (parent == classLoader) {
                return false;
            }
        }
        return true;
    }

    public a(ClassLoader classLoader) {
        super(classLoader);
    }
}

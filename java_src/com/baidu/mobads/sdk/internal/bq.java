package com.baidu.mobads.sdk.internal;

import dalvik.system.DexClassLoader;

/* JADX INFO: loaded from: classes6.dex */
public class bq extends DexClassLoader {
    public bq(String str, String str2, String str3, ClassLoader classLoader) {
        super(str, str2, str3, classLoader);
    }

    @Override // java.lang.ClassLoader
    protected Class<?> loadClass(String str, boolean z10) throws ClassNotFoundException {
        Class<?> clsFindLoadedClass = findLoadedClass(str);
        if (clsFindLoadedClass != null) {
            return clsFindLoadedClass;
        }
        try {
            Class<?> clsFindClass = findClass(str);
            if (clsFindClass != null) {
                return clsFindClass;
            }
        } catch (ClassNotFoundException e10) {
            az.e("XAdDexClassLoader", "loadClass failed: " + e10.getMessage());
        }
        return super.loadClass(str, z10);
    }
}

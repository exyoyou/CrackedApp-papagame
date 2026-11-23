package com.swift.sandhook.xposedcompat.classloaders;

/* JADX INFO: loaded from: classes3.dex */
public class ProxyClassLoader extends ClassLoader {
    private final ClassLoader mClassLoader;

    public ProxyClassLoader(ClassLoader classLoader, ClassLoader classLoader2) {
        super(classLoader);
        this.mClassLoader = classLoader2;
    }

    @Override // java.lang.ClassLoader
    protected Class<?> loadClass(String str, boolean z10) throws ClassNotFoundException {
        Class<?> clsLoadClass;
        try {
            clsLoadClass = this.mClassLoader.loadClass(str);
        } catch (ClassNotFoundException unused) {
            clsLoadClass = null;
        }
        if (clsLoadClass == null && (clsLoadClass = super.loadClass(str, z10)) == null) {
            throw new ClassNotFoundException();
        }
        return clsLoadClass;
    }
}

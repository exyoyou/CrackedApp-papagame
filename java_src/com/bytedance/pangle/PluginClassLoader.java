package com.bytedance.pangle;

import androidx.annotation.Keep;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public class PluginClassLoader extends BaseDexClassLoader {
    public static final String TAG = "PluginClassLoader";
    public HashSet<String> allPluginClasses;
    public final ClassLoader hostClassLoader;
    public List<ClassLoader> otherPluginClassLoader;

    public PluginClassLoader(String str, File file, String str2, List<ClassLoader> list) {
        super(str, file, str2, ClassLoader.getSystemClassLoader().getParent());
        this.hostClassLoader = PluginClassLoader.class.getClassLoader();
        this.otherPluginClassLoader = list;
    }

    private ClassNotFoundException handleException(StringBuilder sb2, ClassNotFoundException classNotFoundException, ClassNotFoundException classNotFoundException2) {
        if (classNotFoundException == null) {
            return classNotFoundException2;
        }
        classNotFoundException.addSuppressed(classNotFoundException2);
        return classNotFoundException;
    }

    @Override // dalvik.system.BaseDexClassLoader, java.lang.ClassLoader
    public Class<?> findClass(String str) throws ClassNotFoundException {
        List<ClassLoader> list;
        HashSet<String> hashSet = this.allPluginClasses;
        Class<?> clsFindClass = null;
        if (hashSet == null || hashSet.contains(str)) {
            try {
                clsFindClass = super.findClass(str);
                e = null;
            } catch (ClassNotFoundException e10) {
                e = e10;
            }
        } else {
            e = null;
        }
        StringBuilder sb2 = new StringBuilder("loadClass from :\n");
        if (clsFindClass == null && (list = this.otherPluginClassLoader) != null) {
            Iterator<ClassLoader> it2 = list.iterator();
            while (it2.hasNext()) {
                try {
                    clsFindClass = it2.next().loadClass(str);
                } catch (ClassNotFoundException e11) {
                    e = handleException(sb2, e, e11);
                }
            }
        }
        if (clsFindClass == null) {
            try {
                clsFindClass = this.hostClassLoader.loadClass(str);
            } catch (ClassNotFoundException e12) {
                e = handleException(sb2, e, e12);
            }
        }
        if (clsFindClass != null) {
            return clsFindClass;
        }
        if (e != null) {
            throw e;
        }
        throw new ClassNotFoundException(str + " class not found in PluginClassLoader");
    }

    public void setAllPluginClasses(HashSet<String> hashSet) {
        this.allPluginClasses = hashSet;
    }

    public void setOtherPluginClassLoader(List<ClassLoader> list) {
        this.otherPluginClassLoader = list;
    }
}

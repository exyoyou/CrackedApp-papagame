package com.kwad.library.b.a;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.join.mgps.Util.o0;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends BaseDexClassLoader {
    private final List<String> aDK;
    private final List<String> aDL;
    private final ClassLoader aDM;

    public b(ClassLoader classLoader, String str, @Nullable File file, String str2, List<String> list, List<String> list2) {
        super(str, file, str2, classLoader);
        this.aDM = classLoader;
        this.aDK = list;
        this.aDL = list2;
        while (classLoader.getParent() != null) {
            classLoader = classLoader.getParent();
        }
        new StringBuilder("mParent is ").append(classLoader.getClass().getName());
    }

    @Override // dalvik.system.BaseDexClassLoader, java.lang.ClassLoader
    public final String findLibrary(String str) {
        String strFindLibrary = super.findLibrary(str);
        return (TextUtils.isEmpty(strFindLibrary) && (this.aDM instanceof BaseDexClassLoader)) ? ((BaseDexClassLoader) this.aDM).findLibrary(str) : strFindLibrary;
    }

    @Override // java.lang.ClassLoader
    protected final Class<?> loadClass(String str, boolean z10) throws ClassNotFoundException {
        List<String> list = this.aDK;
        if (list != null && list.contains(str)) {
            StringBuilder sb2 = new StringBuilder("loadClass ");
            sb2.append(str);
            sb2.append(" from host by interface");
            return super.loadClass(str, z10);
        }
        List<String> list2 = this.aDL;
        if (list2 != null) {
            Iterator<String> it2 = list2.iterator();
            while (it2.hasNext()) {
                if (str.startsWith(it2.next() + o0.f49827a)) {
                    return super.loadClass(str, z10);
                }
            }
        }
        Class<?> clsFindLoadedClass = findLoadedClass(str);
        if (clsFindLoadedClass != null) {
            return clsFindLoadedClass;
        }
        try {
            return findClass(str);
        } catch (ClassNotFoundException e10) {
            try {
                return getParent().loadClass(str);
            } catch (ClassNotFoundException e11) {
                e11.addSuppressed(e10);
                throw e11;
            }
        }
    }
}

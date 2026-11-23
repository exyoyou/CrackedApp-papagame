package org.aspectj.internal.lang.reflect;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes4.dex */
public class q {

    static class a implements ParameterizedType {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Type[] f95126b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Class f95127c;

        a(Type[] typeArr, Class cls) {
            this.f95126b = typeArr;
            this.f95127c = cls;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return this.f95126b;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f95127c.getEnclosingClass();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f95127c;
        }
    }

    public static Type[] a(String str, Class cls) throws ClassNotFoundException {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        Type[] typeArr = new Type[stringTokenizer.countTokens()];
        int i10 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            typeArr[i10] = c(stringTokenizer.nextToken().trim(), cls);
            i10++;
        }
        return typeArr;
    }

    private static Type b(String str, Class cls) throws ClassNotFoundException {
        int iIndexOf = str.indexOf(60);
        return new a(a(str.substring(iIndexOf + 1, str.lastIndexOf(62)), cls), Class.forName(str.substring(0, iIndexOf), false, cls.getClassLoader()));
    }

    public static Type c(String str, Class cls) throws ClassNotFoundException {
        try {
            return str.indexOf(SimpleComparison.LESS_THAN_OPERATION) == -1 ? ad.d.a(Class.forName(str, false, cls.getClassLoader())) : b(str, cls);
        } catch (ClassNotFoundException unused) {
            TypeVariable[] typeParameters = cls.getTypeParameters();
            for (int i10 = 0; i10 < typeParameters.length; i10++) {
                if (typeParameters[i10].getName().equals(str)) {
                    return typeParameters[i10];
                }
            }
            throw new ClassNotFoundException(str);
        }
    }
}

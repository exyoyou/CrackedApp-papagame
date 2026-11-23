package org.aspectj.internal.lang.reflect;

import ad.u;
import ad.v;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import org.aspectj.internal.lang.annotation.ajcDeclareAnnotation;
import org.aspectj.internal.lang.annotation.ajcDeclareEoW;
import org.aspectj.internal.lang.annotation.ajcDeclareParents;
import org.aspectj.internal.lang.annotation.ajcDeclarePrecedence;
import org.aspectj.internal.lang.annotation.ajcDeclareSoft;
import org.aspectj.internal.lang.annotation.ajcITD;
import org.aspectj.internal.lang.annotation.ajcPrivileged;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.DeclareError;
import org.aspectj.lang.annotation.DeclareParents;
import org.aspectj.lang.annotation.DeclarePrecedence;
import org.aspectj.lang.annotation.DeclareWarning;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.AdviceKind;
import org.aspectj.lang.reflect.DeclareAnnotation;
import org.aspectj.lang.reflect.NoSuchAdviceException;
import org.aspectj.lang.reflect.NoSuchPointcutException;
import org.aspectj.lang.reflect.PerClauseKind;

/* JADX INFO: loaded from: classes4.dex */
public class b<T> implements ad.c<T> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f95063m = "ajc$";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Class<T> f95064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private v[] f95065c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private v[] f95066d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ad.a[] f95067e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ad.a[] f95068f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ad.q[] f95069g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ad.q[] f95070h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ad.p[] f95071i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ad.p[] f95072j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ad.n[] f95073k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ad.n[] f95074l = null;

    public b(Class<T> cls) {
        this.f95064b = cls;
    }

    private void b(List<ad.i> list) {
        for (Field field : this.f95064b.getDeclaredFields()) {
            if (field.isAnnotationPresent(DeclareParents.class) && field.getType().isInterface()) {
                list.add(new e(((DeclareParents) field.getAnnotation(DeclareParents.class)).value(), field.getType().getName(), false, this));
            }
        }
    }

    private void c(List<ad.p> list, boolean z10) {
    }

    private void c0(List<ad.q> list, boolean z10) {
        if (Y()) {
            for (Field field : this.f95064b.getDeclaredFields()) {
                if (field.getType().isInterface() && field.isAnnotationPresent(DeclareParents.class) && ((DeclareParents) field.getAnnotation(DeclareParents.class)).defaultImpl() != DeclareParents.class) {
                    for (Method method : field.getType().getDeclaredMethods()) {
                        if (Modifier.isPublic(method.getModifiers()) || !z10) {
                            list.add(new k(this, ad.d.a(field.getType()), method, 1));
                        }
                    }
                }
            }
        }
    }

    private ad.a d0(Method method) {
        if (method.getAnnotations().length == 0) {
            return null;
        }
        Before before = (Before) method.getAnnotation(Before.class);
        if (before != null) {
            return new a(method, before.value(), AdviceKind.BEFORE);
        }
        After after = (After) method.getAnnotation(After.class);
        if (after != null) {
            return new a(method, after.value(), AdviceKind.AFTER);
        }
        AfterReturning afterReturning = (AfterReturning) method.getAnnotation(AfterReturning.class);
        if (afterReturning != null) {
            String strPointcut = afterReturning.pointcut();
            if (strPointcut.equals("")) {
                strPointcut = afterReturning.value();
            }
            return new a(method, strPointcut, AdviceKind.AFTER_RETURNING, afterReturning.returning());
        }
        AfterThrowing afterThrowing = (AfterThrowing) method.getAnnotation(AfterThrowing.class);
        if (afterThrowing != null) {
            String strPointcut2 = afterThrowing.pointcut();
            if (strPointcut2 == null) {
                strPointcut2 = afterThrowing.value();
            }
            return new a(method, strPointcut2, AdviceKind.AFTER_THROWING, afterThrowing.throwing());
        }
        Around around = (Around) method.getAnnotation(Around.class);
        if (around != null) {
            return new a(method, around.value(), AdviceKind.AROUND);
        }
        return null;
    }

    private v e0(Method method) {
        int iIndexOf;
        Pointcut pointcut = (Pointcut) method.getAnnotation(Pointcut.class);
        if (pointcut == null) {
            return null;
        }
        String name = method.getName();
        if (name.startsWith(f95063m) && (iIndexOf = (name = name.substring(name.indexOf("$$") + 2, name.length())).indexOf("$")) != -1) {
            name = name.substring(0, iIndexOf);
        }
        return new o(name, pointcut.value(), method, ad.d.a(method.getDeclaringClass()), pointcut.argNames());
    }

    private ad.a[] f0(Set set) {
        if (this.f95068f == null) {
            h0();
        }
        ArrayList arrayList = new ArrayList();
        for (ad.a aVar : this.f95068f) {
            if (set.contains(aVar.getKind())) {
                arrayList.add(aVar);
            }
        }
        ad.a[] aVarArr = new ad.a[arrayList.size()];
        arrayList.toArray(aVarArr);
        return aVarArr;
    }

    private ad.a[] g0(Set set) {
        if (this.f95067e == null) {
            i0();
        }
        ArrayList arrayList = new ArrayList();
        for (ad.a aVar : this.f95067e) {
            if (set.contains(aVar.getKind())) {
                arrayList.add(aVar);
            }
        }
        ad.a[] aVarArr = new ad.a[arrayList.size()];
        arrayList.toArray(aVarArr);
        return aVarArr;
    }

    private void h0() {
        Method[] methods = this.f95064b.getMethods();
        ArrayList arrayList = new ArrayList();
        for (Method method : methods) {
            ad.a aVarD0 = d0(method);
            if (aVarD0 != null) {
                arrayList.add(aVarD0);
            }
        }
        ad.a[] aVarArr = new ad.a[arrayList.size()];
        this.f95068f = aVarArr;
        arrayList.toArray(aVarArr);
    }

    private void i0() {
        Method[] declaredMethods = this.f95064b.getDeclaredMethods();
        ArrayList arrayList = new ArrayList();
        for (Method method : declaredMethods) {
            ad.a aVarD0 = d0(method);
            if (aVarD0 != null) {
                arrayList.add(aVarD0);
            }
        }
        ad.a[] aVarArr = new ad.a[arrayList.size()];
        this.f95067e = aVarArr;
        arrayList.toArray(aVarArr);
    }

    private boolean j0(Method method) {
        if (method.getName().startsWith(f95063m)) {
            return false;
        }
        if (method.getAnnotations().length == 0) {
            return true;
        }
        return (method.isAnnotationPresent(Pointcut.class) || method.isAnnotationPresent(Before.class) || method.isAnnotationPresent(After.class) || method.isAnnotationPresent(AfterReturning.class) || method.isAnnotationPresent(AfterThrowing.class) || method.isAnnotationPresent(Around.class)) ? false : true;
    }

    private ad.c<?>[] k0(Class<?>[] clsArr) {
        int length = clsArr.length;
        ad.c<?>[] cVarArr = new ad.c[length];
        for (int i10 = 0; i10 < length; i10++) {
            cVarArr[i10] = ad.d.a(clsArr[i10]);
        }
        return cVarArr;
    }

    private Class<?>[] l0(ad.c<?>[] cVarArr) {
        int length = cVarArr.length;
        Class<?>[] clsArr = new Class[length];
        for (int i10 = 0; i10 < length; i10++) {
            clsArr[i10] = cVarArr[i10].H();
        }
        return clsArr;
    }

    @Override // ad.c
    public v A(String str) throws NoSuchPointcutException {
        for (v vVar : G()) {
            if (vVar.getName().equals(str)) {
                return vVar;
            }
        }
        throw new NoSuchPointcutException(str);
    }

    @Override // ad.c
    public T[] B() {
        return this.f95064b.getEnumConstants();
    }

    @Override // ad.c
    public Constructor[] C() {
        return this.f95064b.getDeclaredConstructors();
    }

    @Override // ad.c
    public Type D() {
        return this.f95064b.getGenericSuperclass();
    }

    @Override // ad.c
    public u E() {
        if (!Y()) {
            return null;
        }
        String strValue = ((Aspect) this.f95064b.getAnnotation(Aspect.class)).value();
        if (strValue.equals("")) {
            return a0().Y() ? a0().E() : new l(PerClauseKind.SINGLETON);
        }
        if (strValue.startsWith("perthis(")) {
            return new m(PerClauseKind.PERTHIS, strValue.substring(8, strValue.length() - 1));
        }
        if (strValue.startsWith("pertarget(")) {
            return new m(PerClauseKind.PERTARGET, strValue.substring(10, strValue.length() - 1));
        }
        if (strValue.startsWith("percflow(")) {
            return new m(PerClauseKind.PERCFLOW, strValue.substring(9, strValue.length() - 1));
        }
        if (strValue.startsWith("percflowbelow(")) {
            return new m(PerClauseKind.PERCFLOWBELOW, strValue.substring(14, strValue.length() - 1));
        }
        if (strValue.startsWith("pertypewithin")) {
            return new r(PerClauseKind.PERTYPEWITHIN, strValue.substring(14, strValue.length() - 1));
        }
        throw new IllegalStateException("Per-clause not recognized: " + strValue);
    }

    @Override // ad.c
    public ad.n F(ad.c<?> cVar, ad.c<?>... cVarArr) throws NoSuchMethodException {
        for (ad.n nVar : I()) {
            try {
                if (nVar.h().equals(cVar)) {
                    ad.c<?>[] cVarArrC = nVar.c();
                    if (cVarArrC.length == cVarArr.length) {
                        for (int i10 = 0; i10 < cVarArrC.length; i10++) {
                            if (cVarArrC[i10].equals(cVarArr[i10])) {
                            }
                        }
                        return nVar;
                    }
                    continue;
                } else {
                    continue;
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        throw new NoSuchMethodException();
    }

    @Override // ad.c
    public v[] G() {
        v[] vVarArr = this.f95065c;
        if (vVarArr != null) {
            return vVarArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Method method : this.f95064b.getDeclaredMethods()) {
            v vVarE0 = e0(method);
            if (vVarE0 != null) {
                arrayList.add(vVarE0);
            }
        }
        v[] vVarArr2 = new v[arrayList.size()];
        arrayList.toArray(vVarArr2);
        this.f95065c = vVarArr2;
        return vVarArr2;
    }

    @Override // ad.c
    public Class<T> H() {
        return this.f95064b;
    }

    @Override // ad.c
    public ad.n[] I() {
        if (this.f95074l == null) {
            ArrayList arrayList = new ArrayList();
            for (Method method : this.f95064b.getDeclaredMethods()) {
                if (method.getName().contains("ajc$postInterConstructor") && method.isAnnotationPresent(ajcITD.class)) {
                    ajcITD ajcitd = (ajcITD) method.getAnnotation(ajcITD.class);
                    arrayList.add(new h(this, ajcitd.targetType(), ajcitd.modifiers(), method));
                }
            }
            ad.n[] nVarArr = new ad.n[arrayList.size()];
            this.f95074l = nVarArr;
            arrayList.toArray(nVarArr);
        }
        return this.f95074l;
    }

    @Override // ad.c
    public DeclareAnnotation[] J() {
        Annotation annotation;
        ArrayList arrayList = new ArrayList();
        for (Method method : this.f95064b.getDeclaredMethods()) {
            if (method.isAnnotationPresent(ajcDeclareAnnotation.class)) {
                ajcDeclareAnnotation ajcdeclareannotation = (ajcDeclareAnnotation) method.getAnnotation(ajcDeclareAnnotation.class);
                Annotation[] annotations = method.getAnnotations();
                int length = annotations.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        annotation = null;
                        break;
                    }
                    Annotation annotation2 = annotations[i10];
                    if (annotation2.annotationType() != ajcDeclareAnnotation.class) {
                        annotation = annotation2;
                        break;
                    }
                    i10++;
                }
                arrayList.add(new c(this, ajcdeclareannotation.kind(), ajcdeclareannotation.pattern(), annotation, ajcdeclareannotation.annotation()));
            }
        }
        if (a0().Y()) {
            arrayList.addAll(Arrays.asList(a0().J()));
        }
        DeclareAnnotation[] declareAnnotationArr = new DeclareAnnotation[arrayList.size()];
        arrayList.toArray(declareAnnotationArr);
        return declareAnnotationArr;
    }

    @Override // ad.c
    public v[] K() {
        v[] vVarArr = this.f95066d;
        if (vVarArr != null) {
            return vVarArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Method method : this.f95064b.getMethods()) {
            v vVarE0 = e0(method);
            if (vVarE0 != null) {
                arrayList.add(vVarE0);
            }
        }
        v[] vVarArr2 = new v[arrayList.size()];
        arrayList.toArray(vVarArr2);
        this.f95066d = vVarArr2;
        return vVarArr2;
    }

    @Override // ad.c
    public boolean L() {
        return this.f95064b.isEnum();
    }

    @Override // ad.c
    public boolean M() {
        return this.f95064b.isMemberClass() && Y();
    }

    @Override // ad.c
    public ad.j[] N() {
        ArrayList arrayList = new ArrayList();
        if (this.f95064b.isAnnotationPresent(DeclarePrecedence.class)) {
            arrayList.add(new f(((DeclarePrecedence) this.f95064b.getAnnotation(DeclarePrecedence.class)).value(), this));
        }
        for (Method method : this.f95064b.getDeclaredMethods()) {
            if (method.isAnnotationPresent(ajcDeclarePrecedence.class)) {
                arrayList.add(new f(((ajcDeclarePrecedence) method.getAnnotation(ajcDeclarePrecedence.class)).value(), this));
            }
        }
        if (a0().Y()) {
            arrayList.addAll(Arrays.asList(a0().N()));
        }
        ad.j[] jVarArr = new ad.j[arrayList.size()];
        arrayList.toArray(jVarArr);
        return jVarArr;
    }

    @Override // ad.c
    public Constructor O(ad.c<?>... cVarArr) throws NoSuchMethodException {
        return this.f95064b.getDeclaredConstructor(l0(cVarArr));
    }

    @Override // ad.c
    public ad.q P(String str, ad.c<?> cVar, ad.c<?>... cVarArr) throws NoSuchMethodException {
        for (ad.q qVar : s()) {
            try {
                if (qVar.getName().equals(str) && qVar.h().equals(cVar)) {
                    ad.c<?>[] cVarArrC = qVar.c();
                    if (cVarArrC.length == cVarArr.length) {
                        for (int i10 = 0; i10 < cVarArrC.length; i10++) {
                            if (cVarArrC[i10].equals(cVarArr[i10])) {
                            }
                        }
                        return qVar;
                    }
                    continue;
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        throw new NoSuchMethodException(str);
    }

    @Override // ad.c
    public ad.a Q(String str) throws NoSuchAdviceException {
        if (str.equals("")) {
            throw new IllegalArgumentException("use getAdvice(AdviceType...) instead for un-named advice");
        }
        if (this.f95068f == null) {
            h0();
        }
        for (ad.a aVar : this.f95068f) {
            if (aVar.getName().equals(str)) {
                return aVar;
            }
        }
        throw new NoSuchAdviceException(str);
    }

    @Override // ad.c
    public Method R(String str, ad.c<?>... cVarArr) throws NoSuchMethodException {
        Method method = this.f95064b.getMethod(str, l0(cVarArr));
        if (j0(method)) {
            return method;
        }
        throw new NoSuchMethodException(str);
    }

    @Override // ad.c
    public ad.c<?> S() {
        Class<?> enclosingClass = this.f95064b.getEnclosingClass();
        if (enclosingClass != null) {
            return new b(enclosingClass);
        }
        return null;
    }

    @Override // ad.c
    public Constructor T(ad.c<?>... cVarArr) throws NoSuchMethodException {
        return this.f95064b.getConstructor(l0(cVarArr));
    }

    @Override // ad.c
    public ad.a[] U(AdviceKind... adviceKindArr) {
        EnumSet enumSetAllOf;
        if (adviceKindArr.length == 0) {
            enumSetAllOf = EnumSet.allOf(AdviceKind.class);
        } else {
            EnumSet enumSetNoneOf = EnumSet.noneOf(AdviceKind.class);
            enumSetNoneOf.addAll(Arrays.asList(adviceKindArr));
            enumSetAllOf = enumSetNoneOf;
        }
        return f0(enumSetAllOf);
    }

    @Override // ad.c
    public Field V(String str) throws NoSuchFieldException {
        Field field = this.f95064b.getField(str);
        if (field.getName().startsWith(f95063m)) {
            throw new NoSuchFieldException(str);
        }
        return field;
    }

    @Override // ad.c
    public ad.n W(ad.c<?> cVar, ad.c<?>... cVarArr) throws NoSuchMethodException {
        for (ad.n nVar : g()) {
            try {
                if (nVar.h().equals(cVar)) {
                    ad.c<?>[] cVarArrC = nVar.c();
                    if (cVarArrC.length == cVarArr.length) {
                        for (int i10 = 0; i10 < cVarArrC.length; i10++) {
                            if (cVarArrC[i10].equals(cVarArr[i10])) {
                            }
                        }
                        return nVar;
                    }
                    continue;
                } else {
                    continue;
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        throw new NoSuchMethodException();
    }

    @Override // ad.c
    public Method X() {
        return this.f95064b.getEnclosingMethod();
    }

    @Override // ad.c
    public boolean Y() {
        return this.f95064b.getAnnotation(Aspect.class) != null;
    }

    @Override // ad.c
    public ad.a Z(String str) throws NoSuchAdviceException {
        if (str.equals("")) {
            throw new IllegalArgumentException("use getAdvice(AdviceType...) instead for un-named advice");
        }
        if (this.f95067e == null) {
            i0();
        }
        for (ad.a aVar : this.f95067e) {
            if (aVar.getName().equals(str)) {
                return aVar;
            }
        }
        throw new NoSuchAdviceException(str);
    }

    @Override // ad.c
    public ad.c<?> a() {
        Class<?> declaringClass = this.f95064b.getDeclaringClass();
        if (declaringClass != null) {
            return new b(declaringClass);
        }
        return null;
    }

    @Override // ad.c
    public ad.c<? super T> a0() {
        Class<? super T> superclass = this.f95064b.getSuperclass();
        if (superclass == null) {
            return null;
        }
        return new b(superclass);
    }

    @Override // ad.c
    public ad.h[] b0() {
        ArrayList arrayList = new ArrayList();
        for (Field field : this.f95064b.getDeclaredFields()) {
            try {
                if (field.isAnnotationPresent(DeclareWarning.class)) {
                    DeclareWarning declareWarning = (DeclareWarning) field.getAnnotation(DeclareWarning.class);
                    if (Modifier.isPublic(field.getModifiers()) && Modifier.isStatic(field.getModifiers())) {
                        arrayList.add(new d(declareWarning.value(), (String) field.get(null), false, this));
                    }
                } else if (field.isAnnotationPresent(DeclareError.class)) {
                    DeclareError declareError = (DeclareError) field.getAnnotation(DeclareError.class);
                    if (Modifier.isPublic(field.getModifiers()) && Modifier.isStatic(field.getModifiers())) {
                        arrayList.add(new d(declareError.value(), (String) field.get(null), true, this));
                    }
                }
            } catch (IllegalAccessException | IllegalArgumentException unused) {
            }
        }
        for (Method method : this.f95064b.getDeclaredMethods()) {
            if (method.isAnnotationPresent(ajcDeclareEoW.class)) {
                ajcDeclareEoW ajcdeclareeow = (ajcDeclareEoW) method.getAnnotation(ajcDeclareEoW.class);
                arrayList.add(new d(ajcdeclareeow.pointcut(), ajcdeclareeow.message(), ajcdeclareeow.isError(), this));
            }
        }
        ad.h[] hVarArr = new ad.h[arrayList.size()];
        arrayList.toArray(hVarArr);
        return hVarArr;
    }

    @Override // ad.c
    public int d() {
        return this.f95064b.getModifiers();
    }

    @Override // ad.c
    public ad.c<?>[] e() {
        return k0(this.f95064b.getDeclaredClasses());
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            return ((b) obj).f95064b.equals(this.f95064b);
        }
        return false;
    }

    @Override // ad.c
    public Field f(String str) throws NoSuchFieldException {
        Field declaredField = this.f95064b.getDeclaredField(str);
        if (declaredField.getName().startsWith(f95063m)) {
            throw new NoSuchFieldException(str);
        }
        return declaredField;
    }

    @Override // ad.c
    public ad.n[] g() {
        if (this.f95073k == null) {
            ArrayList arrayList = new ArrayList();
            for (Method method : this.f95064b.getMethods()) {
                if (method.getName().contains("ajc$postInterConstructor") && method.isAnnotationPresent(ajcITD.class)) {
                    ajcITD ajcitd = (ajcITD) method.getAnnotation(ajcITD.class);
                    if (Modifier.isPublic(ajcitd.modifiers())) {
                        arrayList.add(new h(this, ajcitd.targetType(), ajcitd.modifiers(), method));
                    }
                }
            }
            ad.n[] nVarArr = new ad.n[arrayList.size()];
            this.f95073k = nVarArr;
            arrayList.toArray(nVarArr);
        }
        return this.f95073k;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this.f95064b.getAnnotation(cls);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public Annotation[] getAnnotations() {
        return this.f95064b.getAnnotations();
    }

    @Override // ad.c
    public Constructor[] getConstructors() {
        return this.f95064b.getConstructors();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public Annotation[] getDeclaredAnnotations() {
        return this.f95064b.getDeclaredAnnotations();
    }

    @Override // ad.c
    public Field[] getFields() {
        Field[] fields = this.f95064b.getFields();
        ArrayList arrayList = new ArrayList();
        for (Field field : fields) {
            if (!field.getName().startsWith(f95063m) && !field.isAnnotationPresent(DeclareWarning.class) && !field.isAnnotationPresent(DeclareError.class)) {
                arrayList.add(field);
            }
        }
        Field[] fieldArr = new Field[arrayList.size()];
        arrayList.toArray(fieldArr);
        return fieldArr;
    }

    @Override // ad.c
    public ad.c<?>[] getInterfaces() {
        return k0(this.f95064b.getInterfaces());
    }

    @Override // ad.c
    public Method[] getMethods() {
        Method[] methods = this.f95064b.getMethods();
        ArrayList arrayList = new ArrayList();
        for (Method method : methods) {
            if (j0(method)) {
                arrayList.add(method);
            }
        }
        Method[] methodArr = new Method[arrayList.size()];
        arrayList.toArray(methodArr);
        return methodArr;
    }

    @Override // ad.c
    public String getName() {
        return this.f95064b.getName();
    }

    @Override // ad.c
    public Package getPackage() {
        return this.f95064b.getPackage();
    }

    @Override // ad.c
    public TypeVariable<Class<T>>[] getTypeParameters() {
        return this.f95064b.getTypeParameters();
    }

    @Override // ad.c
    public ad.p h(String str, ad.c<?> cVar) throws NoSuchFieldException {
        for (ad.p pVar : x()) {
            if (pVar.getName().equals(str)) {
                try {
                    if (pVar.h().equals(cVar)) {
                        return pVar;
                    }
                } catch (ClassNotFoundException unused) {
                    continue;
                }
            }
        }
        throw new NoSuchFieldException(str);
    }

    public int hashCode() {
        return this.f95064b.hashCode();
    }

    @Override // ad.c
    public boolean i() {
        return this.f95064b.isMemberClass() && !Y();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return this.f95064b.isAnnotationPresent(cls);
    }

    @Override // ad.c
    public boolean isArray() {
        return this.f95064b.isArray();
    }

    @Override // ad.c
    public boolean isInstance(Object obj) {
        return this.f95064b.isInstance(obj);
    }

    @Override // ad.c
    public boolean isInterface() {
        return this.f95064b.isInterface();
    }

    @Override // ad.c
    public boolean isPrimitive() {
        return this.f95064b.isPrimitive();
    }

    @Override // ad.c
    public v j(String str) throws NoSuchPointcutException {
        for (v vVar : K()) {
            if (vVar.getName().equals(str)) {
                return vVar;
            }
        }
        throw new NoSuchPointcutException(str);
    }

    @Override // ad.c
    public ad.a[] k(AdviceKind... adviceKindArr) {
        EnumSet enumSetAllOf;
        if (adviceKindArr.length == 0) {
            enumSetAllOf = EnumSet.allOf(AdviceKind.class);
        } else {
            EnumSet enumSetNoneOf = EnumSet.noneOf(AdviceKind.class);
            enumSetNoneOf.addAll(Arrays.asList(adviceKindArr));
            enumSetAllOf = enumSetNoneOf;
        }
        return g0(enumSetAllOf);
    }

    @Override // ad.c
    public ad.c<?>[] l() {
        return k0(this.f95064b.getClasses());
    }

    @Override // ad.c
    public Method m(String str, ad.c<?>... cVarArr) throws NoSuchMethodException {
        Method declaredMethod = this.f95064b.getDeclaredMethod(str, l0(cVarArr));
        if (j0(declaredMethod)) {
            return declaredMethod;
        }
        throw new NoSuchMethodException(str);
    }

    @Override // ad.c
    public Field[] n() {
        Field[] declaredFields = this.f95064b.getDeclaredFields();
        ArrayList arrayList = new ArrayList();
        for (Field field : declaredFields) {
            if (!field.getName().startsWith(f95063m) && !field.isAnnotationPresent(DeclareWarning.class) && !field.isAnnotationPresent(DeclareError.class)) {
                arrayList.add(field);
            }
        }
        Field[] fieldArr = new Field[arrayList.size()];
        arrayList.toArray(fieldArr);
        return fieldArr;
    }

    @Override // ad.c
    public ad.k[] o() {
        ArrayList arrayList = new ArrayList();
        for (Method method : this.f95064b.getDeclaredMethods()) {
            if (method.isAnnotationPresent(ajcDeclareSoft.class)) {
                ajcDeclareSoft ajcdeclaresoft = (ajcDeclareSoft) method.getAnnotation(ajcDeclareSoft.class);
                arrayList.add(new g(this, ajcdeclaresoft.pointcut(), ajcdeclaresoft.exceptionType()));
            }
        }
        if (a0().Y()) {
            arrayList.addAll(Arrays.asList(a0().o()));
        }
        ad.k[] kVarArr = new ad.k[arrayList.size()];
        arrayList.toArray(kVarArr);
        return kVarArr;
    }

    @Override // ad.c
    public boolean p() {
        return Y() && this.f95064b.isAnnotationPresent(ajcPrivileged.class);
    }

    @Override // ad.c
    public Constructor q() {
        return this.f95064b.getEnclosingConstructor();
    }

    @Override // ad.c
    public ad.p[] r() {
        List<ad.p> arrayList = new ArrayList<>();
        if (this.f95072j == null) {
            for (Method method : this.f95064b.getMethods()) {
                if (method.isAnnotationPresent(ajcITD.class)) {
                    ajcITD ajcitd = (ajcITD) method.getAnnotation(ajcITD.class);
                    if (method.getName().contains("ajc$interFieldInit") && Modifier.isPublic(ajcitd.modifiers())) {
                        try {
                            Method declaredMethod = method.getDeclaringClass().getDeclaredMethod(method.getName().replace("FieldInit", "FieldGetDispatch"), method.getParameterTypes());
                            arrayList.add(new j(this, ajcitd.targetType(), ajcitd.modifiers(), ajcitd.name(), ad.d.a(declaredMethod.getReturnType()), declaredMethod.getGenericReturnType()));
                        } catch (NoSuchMethodException unused) {
                            throw new IllegalStateException("Can't find field get dispatch method for " + method.getName());
                        }
                    }
                }
            }
            c(arrayList, true);
            ad.p[] pVarArr = new ad.p[arrayList.size()];
            this.f95072j = pVarArr;
            arrayList.toArray(pVarArr);
        }
        return this.f95072j;
    }

    @Override // ad.c
    public ad.q[] s() {
        if (this.f95070h == null) {
            List<ad.q> arrayList = new ArrayList<>();
            for (Method method : this.f95064b.getDeclaredMethods()) {
                if (method.getName().contains("ajc$interMethod$") && method.isAnnotationPresent(ajcITD.class)) {
                    ajcITD ajcitd = (ajcITD) method.getAnnotation(ajcITD.class);
                    if (Modifier.isPublic(ajcitd.modifiers())) {
                        arrayList.add(new k(this, ajcitd.targetType(), ajcitd.modifiers(), ajcitd.name(), method));
                    }
                }
            }
            c0(arrayList, true);
            ad.q[] qVarArr = new ad.q[arrayList.size()];
            this.f95070h = qVarArr;
            arrayList.toArray(qVarArr);
        }
        return this.f95070h;
    }

    @Override // ad.c
    public boolean t() {
        return this.f95064b.isLocalClass() && !Y();
    }

    public String toString() {
        return getName();
    }

    @Override // ad.c
    public ad.i[] u() {
        List<ad.i> arrayList = new ArrayList<>();
        for (Method method : this.f95064b.getDeclaredMethods()) {
            if (method.isAnnotationPresent(ajcDeclareParents.class)) {
                ajcDeclareParents ajcdeclareparents = (ajcDeclareParents) method.getAnnotation(ajcDeclareParents.class);
                arrayList.add(new e(ajcdeclareparents.targetTypePattern(), ajcdeclareparents.parentTypes(), ajcdeclareparents.isExtends(), this));
            }
        }
        b(arrayList);
        if (a0().Y()) {
            arrayList.addAll(Arrays.asList(a0().u()));
        }
        ad.i[] iVarArr = new ad.i[arrayList.size()];
        arrayList.toArray(iVarArr);
        return iVarArr;
    }

    @Override // ad.c
    public Method[] v() {
        Method[] declaredMethods = this.f95064b.getDeclaredMethods();
        ArrayList arrayList = new ArrayList();
        for (Method method : declaredMethods) {
            if (j0(method)) {
                arrayList.add(method);
            }
        }
        Method[] methodArr = new Method[arrayList.size()];
        arrayList.toArray(methodArr);
        return methodArr;
    }

    @Override // ad.c
    public ad.q w(String str, ad.c<?> cVar, ad.c<?>... cVarArr) throws NoSuchMethodException {
        for (ad.q qVar : z()) {
            try {
                if (qVar.getName().equals(str) && qVar.h().equals(cVar)) {
                    ad.c<?>[] cVarArrC = qVar.c();
                    if (cVarArrC.length == cVarArr.length) {
                        for (int i10 = 0; i10 < cVarArrC.length; i10++) {
                            if (cVarArrC[i10].equals(cVarArr[i10])) {
                            }
                        }
                        return qVar;
                    }
                    continue;
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        throw new NoSuchMethodException(str);
    }

    @Override // ad.c
    public ad.p[] x() {
        List<ad.p> arrayList = new ArrayList<>();
        if (this.f95071i == null) {
            for (Method method : this.f95064b.getDeclaredMethods()) {
                if (method.isAnnotationPresent(ajcITD.class) && method.getName().contains("ajc$interFieldInit")) {
                    ajcITD ajcitd = (ajcITD) method.getAnnotation(ajcITD.class);
                    try {
                        Method declaredMethod = this.f95064b.getDeclaredMethod(method.getName().replace("FieldInit", "FieldGetDispatch"), method.getParameterTypes());
                        arrayList.add(new j(this, ajcitd.targetType(), ajcitd.modifiers(), ajcitd.name(), ad.d.a(declaredMethod.getReturnType()), declaredMethod.getGenericReturnType()));
                    } catch (NoSuchMethodException unused) {
                        throw new IllegalStateException("Can't find field get dispatch method for " + method.getName());
                    }
                }
            }
            c(arrayList, false);
            ad.p[] pVarArr = new ad.p[arrayList.size()];
            this.f95071i = pVarArr;
            arrayList.toArray(pVarArr);
        }
        return this.f95071i;
    }

    @Override // ad.c
    public ad.p y(String str, ad.c<?> cVar) throws NoSuchFieldException {
        for (ad.p pVar : r()) {
            if (pVar.getName().equals(str)) {
                try {
                    if (pVar.h().equals(cVar)) {
                        return pVar;
                    }
                } catch (ClassNotFoundException unused) {
                    continue;
                }
            }
        }
        throw new NoSuchFieldException(str);
    }

    @Override // ad.c
    public ad.q[] z() {
        if (this.f95069g == null) {
            List<ad.q> arrayList = new ArrayList<>();
            for (Method method : this.f95064b.getDeclaredMethods()) {
                if (method.getName().contains("ajc$interMethodDispatch1$") && method.isAnnotationPresent(ajcITD.class)) {
                    ajcITD ajcitd = (ajcITD) method.getAnnotation(ajcITD.class);
                    arrayList.add(new k(this, ajcitd.targetType(), ajcitd.modifiers(), ajcitd.name(), method));
                }
            }
            c0(arrayList, false);
            ad.q[] qVarArr = new ad.q[arrayList.size()];
            this.f95069g = qVarArr;
            arrayList.toArray(qVarArr);
        }
        return this.f95069g;
    }
}

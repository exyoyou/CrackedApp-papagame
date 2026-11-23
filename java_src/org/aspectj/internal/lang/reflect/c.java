package org.aspectj.internal.lang.reflect;

import ad.a0;
import ad.y;
import java.lang.annotation.Annotation;
import org.aspectj.lang.reflect.DeclareAnnotation;

/* JADX INFO: loaded from: classes4.dex */
public class c implements DeclareAnnotation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Annotation f95075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f95076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ad.c<?> f95077c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private DeclareAnnotation.Kind f95078d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a0 f95079e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private y f95080f;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f95081a;

        static {
            int[] iArr = new int[DeclareAnnotation.Kind.values().length];
            f95081a = iArr;
            try {
                iArr[DeclareAnnotation.Kind.Type.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f95081a[DeclareAnnotation.Kind.Method.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f95081a[DeclareAnnotation.Kind.Field.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f95081a[DeclareAnnotation.Kind.Constructor.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public c(ad.c<?> cVar, String str, String str2, Annotation annotation, String str3) {
        this.f95077c = cVar;
        if (str.equals("at_type")) {
            this.f95078d = DeclareAnnotation.Kind.Type;
        } else if (str.equals("at_field")) {
            this.f95078d = DeclareAnnotation.Kind.Field;
        } else if (str.equals("at_method")) {
            this.f95078d = DeclareAnnotation.Kind.Method;
        } else {
            if (!str.equals("at_constructor")) {
                throw new IllegalStateException("Unknown declare annotation kind: " + str);
            }
            this.f95078d = DeclareAnnotation.Kind.Constructor;
        }
        if (this.f95078d == DeclareAnnotation.Kind.Type) {
            this.f95079e = new s(str2);
        } else {
            this.f95080f = new p(str2);
        }
        this.f95075a = annotation;
        this.f95076b = str3;
    }

    @Override // org.aspectj.lang.reflect.DeclareAnnotation
    public ad.c<?> a() {
        return this.f95077c;
    }

    @Override // org.aspectj.lang.reflect.DeclareAnnotation
    public Annotation b() {
        return this.f95075a;
    }

    @Override // org.aspectj.lang.reflect.DeclareAnnotation
    public a0 c() {
        return this.f95079e;
    }

    @Override // org.aspectj.lang.reflect.DeclareAnnotation
    public String d() {
        return this.f95076b;
    }

    @Override // org.aspectj.lang.reflect.DeclareAnnotation
    public y e() {
        return this.f95080f;
    }

    @Override // org.aspectj.lang.reflect.DeclareAnnotation
    public DeclareAnnotation.Kind getKind() {
        return this.f95078d;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("declare @");
        int i10 = a.f95081a[getKind().ordinal()];
        if (i10 == 1) {
            stringBuffer.append("type : ");
            stringBuffer.append(c().a());
        } else if (i10 == 2) {
            stringBuffer.append("method : ");
            stringBuffer.append(e().a());
        } else if (i10 == 3) {
            stringBuffer.append("field : ");
            stringBuffer.append(e().a());
        } else if (i10 == 4) {
            stringBuffer.append("constructor : ");
            stringBuffer.append(e().a());
        }
        stringBuffer.append(" : ");
        stringBuffer.append(d());
        return stringBuffer.toString();
    }
}

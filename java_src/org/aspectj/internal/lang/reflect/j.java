package org.aspectj.internal.lang.reflect;

import com.join.mgps.Util.o0;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes4.dex */
public class j extends i implements ad.p {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f95105e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ad.c<?> f95106f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Type f95107g;

    public j(ad.c<?> cVar, String str, int i10, String str2, ad.c<?> cVar2, Type type) {
        super(cVar, str, i10);
        this.f95105e = str2;
        this.f95106f = cVar2;
        this.f95107g = type;
    }

    @Override // ad.p
    public Type g() {
        return this.f95107g;
    }

    @Override // ad.p
    public String getName() {
        return this.f95105e;
    }

    @Override // ad.p
    public ad.c<?> getType() {
        return this.f95106f;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Modifier.toString(d()));
        stringBuffer.append(" ");
        stringBuffer.append(getType().toString());
        stringBuffer.append(" ");
        stringBuffer.append(this.f95102b);
        stringBuffer.append(o0.f49827a);
        stringBuffer.append(getName());
        return stringBuffer.toString();
    }

    public j(ad.c<?> cVar, ad.c<?> cVar2, Field field) {
        super(cVar, cVar2, field.getModifiers());
        this.f95105e = field.getName();
        this.f95106f = ad.d.a(field.getType());
        Type genericType = field.getGenericType();
        if (genericType instanceof Class) {
            this.f95107g = ad.d.a((Class) genericType);
        } else {
            this.f95107g = genericType;
        }
    }
}

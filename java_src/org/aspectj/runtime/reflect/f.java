package org.aspectj.runtime.reflect;

import com.join.mgps.Util.o0;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes4.dex */
public class f extends j implements ad.l {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    Class f95195m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Field f95196n;

    f(int i10, String str, Class cls, Class cls2) {
        super(i10, str, cls);
        this.f95195m = cls2;
    }

    @Override // ad.l
    public Class getFieldType() {
        if (this.f95195m == null) {
            this.f95195m = v(3);
        }
        return this.f95195m;
    }

    @Override // ad.l
    public Field i() {
        if (this.f95196n == null) {
            try {
                this.f95196n = a().getDeclaredField(getName());
            } catch (Exception unused) {
            }
        }
        return this.f95196n;
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String r(n nVar) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(nVar.e(d()));
        if (nVar.f95230b) {
            stringBuffer.append(nVar.g(getFieldType()));
        }
        if (nVar.f95230b) {
            stringBuffer.append(" ");
        }
        stringBuffer.append(nVar.f(a(), l()));
        stringBuffer.append(o0.f49827a);
        stringBuffer.append(getName());
        return stringBuffer.toString();
    }

    f(String str) {
        super(str);
    }
}

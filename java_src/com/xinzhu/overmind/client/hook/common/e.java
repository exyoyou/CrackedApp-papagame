package com.xinzhu.overmind.client.hook.common;

import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.f;
import java.lang.reflect.Method;
import ma.g;

/* JADX INFO: loaded from: classes8.dex */
public class e extends com.xinzhu.overmind.client.hook.e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f89297d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f89298e = -3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f89299a = getClass().getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f89300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f89301c;

    public e(String str, int i10) {
        this.f89300b = str;
        this.f89301c = i10;
    }

    @Override // com.xinzhu.overmind.client.hook.e
    protected String c() {
        return this.f89300b;
    }

    @Override // com.xinzhu.overmind.client.hook.e
    protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
        int iIntValue;
        if (objArr == null) {
            return method.invoke(obj, objArr);
        }
        int length = objArr.length;
        int i10 = this.f89301c;
        if (i10 >= length) {
            throw new RuntimeException(this.f89300b + " mReplaceUIDIndex out of range");
        }
        if (i10 != f89297d) {
            if (i10 < 0) {
                if (i10 != f89298e) {
                    throw new RuntimeException(this.f89300b + " mReplaceUIDIndex unexpected " + this.f89301c);
                }
                i10 = length - 1;
            }
            if (i10 >= 0) {
                Object obj2 = objArr[i10];
                if ((obj2 instanceof Integer) && ((iIntValue = ((Integer) obj2).intValue()) == f.getBaseVUid() || iIntValue == f.getVUid() || g.d().m(iIntValue) != null)) {
                    objArr[i10] = Integer.valueOf(Overmind.getHostUid());
                }
            }
        }
        return method.invoke(obj, objArr);
    }
}

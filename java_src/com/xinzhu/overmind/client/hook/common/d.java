package com.xinzhu.overmind.client.hook.common;

import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.server.user.MindUserHandle;
import com.xinzhu.overmind.utils.wrappers.ObjectsWrapper;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class d extends com.xinzhu.overmind.client.hook.e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f89289e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f89290f = -2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f89291g = -3;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f89292h = -4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f89293a = getClass().getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f89294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f89295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f89296d;

    public d(String str, int i10, int i11) {
        this.f89294b = str;
        this.f89295c = i10;
        this.f89296d = i11;
    }

    @Override // com.xinzhu.overmind.client.hook.e
    protected String c() {
        return this.f89294b;
    }

    @Override // com.xinzhu.overmind.client.hook.e
    protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
        int i10;
        if (objArr == null) {
            return method.invoke(obj, objArr);
        }
        int length = objArr.length;
        if (this.f89296d >= length || (i10 = this.f89295c) >= length) {
            throw new RuntimeException(this.f89294b + " mReplaceUserIdIndex or mReplacePkgIndex out of range");
        }
        int i11 = -1;
        if (i10 != f89289e) {
            if (i10 < 0) {
                if (i10 == f89291g) {
                    i10 = length - 1;
                } else {
                    if (i10 != f89290f) {
                        throw new RuntimeException(this.f89294b + " mReplacePkgIndex unexpected " + this.f89295c);
                    }
                    i10 = 0;
                    while (true) {
                        if (i10 >= objArr.length) {
                            i10 = -1;
                            break;
                        }
                        Object obj2 = objArr[i10];
                        if (obj2 instanceof String) {
                            if (Overmind.getMindPackageManager().t((String) obj2, f.getUserId())) {
                                break;
                            }
                        }
                        i10++;
                    }
                }
            }
            if (i10 >= 0) {
                if (objArr[i10] instanceof String) {
                    objArr[i10] = Overmind.getHostPkg();
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f89294b);
                    sb2.append(" mReplacePkgIndex unexpected type ");
                    sb2.append(objArr[i10].getClass());
                }
            }
        }
        int i12 = this.f89296d;
        if (i12 != f89289e) {
            if (i12 >= 0) {
                i11 = i12;
            } else if (i12 == f89291g) {
                i11 = length - 1;
            } else {
                if (i12 != f89292h) {
                    throw new RuntimeException(this.f89294b + " mReplaceUserIdIndex unexpected " + this.f89296d);
                }
                if (f.getUserId() != 0) {
                    for (int length2 = objArr.length - 1; length2 >= 0; length2--) {
                        if (ObjectsWrapper.equals(Integer.valueOf(f.getUserId()), objArr[length2])) {
                            i11 = length2;
                            break;
                        }
                    }
                }
            }
            if (i11 >= 0) {
                if (objArr[i11] instanceof Integer) {
                    objArr[i11] = Integer.valueOf(MindUserHandle.x(Overmind.getHostUid()));
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(this.f89294b);
                    sb3.append(" mReplaceUserIdIndex unexpected type ");
                    sb3.append(objArr[i11].getClass());
                }
            }
        }
        return method.invoke(obj, objArr);
    }
}

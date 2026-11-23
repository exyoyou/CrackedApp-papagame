package com.qq.e.comm.adevent;

import com.qq.e.comm.util.GDTLogger;

/* JADX INFO: loaded from: classes2.dex */
public class ADEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f78288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f78289b;

    public ADEvent(int i10, Object... objArr) {
        this.f78288a = i10;
        this.f78289b = objArr;
        if (i10 < 100) {
            a("EventId 错误" + i10);
        }
    }

    private void a(String str) {
        GDTLogger.e(str);
    }

    public <T> T getParam(int i10, Class<T> cls) {
        Object[] objArr;
        if (cls == null || (objArr = this.f78289b) == null || objArr.length <= i10) {
            return null;
        }
        T t10 = (T) objArr[i10];
        if (t10 != null) {
            if (cls.isInstance(t10)) {
                return t10;
            }
            return null;
        }
        GDTLogger.e("ADEvent 参数为空,type:" + this.f78288a);
        return null;
    }

    public int getType() {
        return this.f78288a;
    }

    public <T> T getParam(Class<T> cls) {
        return (T) getParam(0, cls);
    }
}

package com.kongzue.dialogx.util;

import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.interfaces.BaseDialog;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DialogX.IMPL_MODE f74157a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference<BaseDialog> f74158b;

    public e(DialogX.IMPL_MODE impl_mode, BaseDialog baseDialog) {
        this.f74157a = impl_mode;
        this.f74158b = new WeakReference<>(baseDialog);
    }

    public BaseDialog a() {
        WeakReference<BaseDialog> weakReference = this.f74158b;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public DialogX.IMPL_MODE b() {
        return this.f74157a;
    }

    public void c() {
        WeakReference<BaseDialog> weakReference = this.f74158b;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f74158b = null;
        this.f74157a = null;
    }

    public e d(BaseDialog baseDialog) {
        this.f74158b = new WeakReference<>(baseDialog);
        return this;
    }

    public e e(DialogX.IMPL_MODE impl_mode) {
        this.f74157a = impl_mode;
        return this;
    }
}

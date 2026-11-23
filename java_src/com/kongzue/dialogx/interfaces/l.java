package com.kongzue.dialogx.interfaces;

import android.widget.ImageView;
import com.kongzue.dialogx.interfaces.BaseDialog;

/* JADX INFO: loaded from: classes3.dex */
public abstract class l<D extends BaseDialog> extends u<D> {
    public l() {
    }

    @Override // com.kongzue.dialogx.interfaces.u
    public int a(D d10, int i10, String str) {
        return 0;
    }

    public abstract boolean c(D d10, int i10, String str, ImageView imageView);

    public l(boolean z10) {
        super(z10);
    }
}

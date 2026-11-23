package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class t1 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f67841b;

    public t1(Context context) {
        super(context);
        this.f67841b = context;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.name_check);
    }

    protected t1(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67841b = context;
    }

    public t1(Context context, int themeResId) {
        super(context, themeResId);
        this.f67841b = context;
    }
}

package com.join.mgps.customview;

import android.app.Dialog;
import android.content.Context;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class t extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f66994b;

    public t(Context context) {
        super(context);
    }

    public t(final Context context, int theme) {
        super(context, theme);
        setContentView(R.layout.my_dialog);
    }
}

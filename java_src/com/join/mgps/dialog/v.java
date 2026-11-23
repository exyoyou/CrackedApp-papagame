package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class v extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67864c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f67865d;

    public v(Context context) {
        super(context);
        this.f67863b = context;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(LayoutInflater.from(this.f67863b).inflate(R.layout.dialog_cloud_first, (ViewGroup) null));
    }

    protected v(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67863b = context;
    }

    public v(Context context, int themeResId) {
        super(context, themeResId);
        this.f67863b = context;
    }
}

package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class s0 extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67811b;

    public s0(Context context, int theme) {
        super(context, theme);
        this.f67811b = context;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(1);
        super.onCreate(savedInstanceState);
        View viewInflate = LayoutInflater.from(this.f67811b).inflate(R.layout.dialog_fight_create_server, (ViewGroup) null);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        setContentView(viewInflate);
    }

    public s0(Context context) {
        super(context);
        this.f67811b = context;
    }
}

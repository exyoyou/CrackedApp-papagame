package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class a extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67362c;

    public a(Context context, int theme) {
        super(context, theme);
        this.f67361b = context;
    }

    public void a(String txt) {
        TextView textView = this.f67362c;
        if (textView != null) {
            textView.setText(txt);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(1);
        super.onCreate(savedInstanceState);
        View viewInflate = LayoutInflater.from(this.f67361b).inflate(R.layout.dialog_fight_connect_server, (ViewGroup) null);
        this.f67362c = (TextView) viewInflate.findViewById(R.id.hint);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        setContentView(viewInflate);
    }

    public a(Context context) {
        super(context);
        this.f67361b = context;
    }
}

package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class h0 extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f67565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f67566c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f67567d;

    public h0(@NonNull Context context) {
        super(context);
        this.f67567d = 0;
    }

    public void a(View.OnClickListener clickListener) {
        this.f67565b.setOnClickListener(clickListener);
    }

    public void b(View.OnClickListener clickListener) {
        this.f67566c.setOnClickListener(clickListener);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(true);
        Window window = getWindow();
        window.setWindowAnimations(R.style.PopupAnimation_100);
        window.setBackgroundDrawableResource(17170445);
        window.setGravity(80);
        setContentView(R.layout.dialog_download_bottom_view);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -2;
        window.setAttributes(attributes);
        this.f67565b = (TextView) findViewById(R.id.downloadDialogOneTv);
        this.f67566c = (TextView) findViewById(R.id.downloadDialogTwoTv);
    }
}

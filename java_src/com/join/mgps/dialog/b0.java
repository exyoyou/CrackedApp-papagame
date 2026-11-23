package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class b0 extends AlertDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ProgressBar f67416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67417c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f67418d;

    public b0(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    public void a(String type) {
        super.show();
        this.f67418d = type;
        this.f67416b.setProgress(0);
        this.f67417c.setText(type + "压缩中(0%),请耐心等待...");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        v10.getId();
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_compress_progress);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        this.f67416b = (ProgressBar) findViewById(R.id.pb_loading);
        this.f67417c = (TextView) findViewById(R.id.tv_progress_status);
    }

    public void update(int progress) {
        this.f67416b.setProgress(progress);
        this.f67417c.setText("压缩中(" + progress + "%),请耐心等待...");
    }
}

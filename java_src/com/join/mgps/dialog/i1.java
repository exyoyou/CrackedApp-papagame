package com.join.mgps.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class i1 extends p implements View.OnClickListener, DialogInterface.OnShowListener {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f67608k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    a f67609l;

    public interface a {
        void a(i1 dialog);
    }

    public i1(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    public void m(String text) {
        this.f67608k.setText(text);
    }

    public void n(a optsClickListener) {
        this.f67609l = optsClickListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        a aVar;
        if (v10.getId() != R.id.tv_download || (aVar = this.f67609l) == null) {
            return;
        }
        aVar.a(this);
    }

    @Override // com.join.mgps.dialog.p, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_mod_download_support);
        this.f67608k = (TextView) findViewById(R.id.tv_download);
        setOnShowListener(this);
        this.f67608k.setOnClickListener(this);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialog) {
    }
}

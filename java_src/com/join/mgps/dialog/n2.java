package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.papa91.arc.interfaces.DialogListenerWrap;

/* JADX INFO: loaded from: classes3.dex */
public class n2 extends AlertDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f67700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DialogListenerWrap f67701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f67702d;

    public n2(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    public void a(DialogListenerWrap listenerWrap) {
        this.f67701c = listenerWrap;
    }

    public void b(String type) {
        show();
        this.f67702d = type;
        this.f67700b.setText(type + "上传中(0%)\n请耐心等待");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.iv_close) {
            dismiss();
        } else if (id2 == R.id.tv_commit) {
            DialogListenerWrap dialogListenerWrap = this.f67701c;
            if (dialogListenerWrap != null) {
                dialogListenerWrap.onConfirm();
            }
            dismiss();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_upload_progress);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        this.f67700b = (TextView) findViewById(R.id.tv_progress_status);
    }

    public void update(int progress) {
        this.f67700b.setText(this.f67702d + "上传中(" + progress + "%)\n请耐心等待");
    }
}

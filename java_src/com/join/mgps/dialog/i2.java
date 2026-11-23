package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.papa91.arc.interfaces.DialogListenerWrap;

/* JADX INFO: loaded from: classes3.dex */
public class i2 extends AlertDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f67610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f67611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f67612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private DialogListenerWrap f67613e;

    public i2(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    public void a(DialogListenerWrap listenerWrap) {
        this.f67613e = listenerWrap;
    }

    public void b(String content) {
        show();
        this.f67611c.setText(content);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.iv_close) {
            DialogListenerWrap dialogListenerWrap = this.f67613e;
            if (dialogListenerWrap != null) {
                dialogListenerWrap.onClose();
            }
            dismiss();
            return;
        }
        if (id2 == R.id.tv_known) {
            DialogListenerWrap dialogListenerWrap2 = this.f67613e;
            if (dialogListenerWrap2 != null) {
                dialogListenerWrap2.onConfirm();
            }
            dismiss();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_system_tip);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        this.f67610b = (ImageView) findViewById(R.id.iv_close);
        this.f67611c = (TextView) findViewById(R.id.tv_content);
        this.f67612d = (TextView) findViewById(R.id.tv_known);
        this.f67610b.setOnClickListener(this);
        this.f67612d.setOnClickListener(this);
    }
}

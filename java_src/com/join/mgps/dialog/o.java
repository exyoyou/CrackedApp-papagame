package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class o extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f67703b;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o.this.dismiss();
        }
    }

    public o(Context context) {
        super(context);
        this.f67703b = 0;
    }

    public void a(int backupNumber) {
        this.f67703b = backupNumber;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        setContentView(R.layout.backups_notice_dialog);
        TextView textView = (TextView) findViewById(R.id.tip_title);
        TextView textView2 = (TextView) findViewById(R.id.dialog_content);
        textView.setText("本地游戏恢复");
        textView2.setText("悟饭猴从本地恢复了" + this.f67703b + "款游戏到“我的>游戏”中!");
        ((Button) findViewById(R.id.dialog_button_ok)).setOnClickListener(new a());
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4 && event.getAction() == 0) {
            dismiss();
        }
        return super.onKeyDown(keyCode, event);
    }

    public o(Context context, int theme, int backupNumber) {
        super(context, theme);
        this.f67703b = backupNumber;
    }

    protected o(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67703b = 0;
    }
}

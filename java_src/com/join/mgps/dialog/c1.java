package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class c1 extends Dialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f67455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f67456c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f67457d;

    public interface a {
        void a(String pwd);

        void reset();
    }

    public c1(@NonNull Context context, String pwd, boolean isHide) {
        super(context);
        this.f67455b = pwd;
        this.f67456c = isHide;
    }

    public void a(a listener) {
        this.f67457d = listener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        a aVar;
        dismiss();
        if (v10.getId() == R.id.tvReset) {
            a aVar2 = this.f67457d;
            if (aVar2 != null) {
                aVar2.reset();
                return;
            }
            return;
        }
        if (v10.getId() != R.id.tvConfirm || (aVar = this.f67457d) == null) {
            return;
        }
        aVar.a(this.f67455b);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        Window window = getWindow();
        window.setBackgroundDrawableResource(17170445);
        window.setGravity(17);
        setContentView(R.layout.dialog_hide_app_confirm_pwd);
        TextView textView = (TextView) findViewById(R.id.tvTitle);
        if (this.f67456c) {
            textView.setText("温馨提示");
        }
        TextView textView2 = (TextView) findViewById(R.id.tvPwd);
        if (this.f67456c) {
            textView2.setText("确定解除伪装状态吗？");
            textView2.setLetterSpacing(0.1f);
        } else {
            textView2.setText(this.f67455b);
        }
        TextView textView3 = (TextView) findViewById(R.id.tvReset);
        textView3.setOnClickListener(this);
        if (this.f67456c) {
            textView3.setText("再想想");
        }
        TextView textView4 = (TextView) findViewById(R.id.tvConfirm);
        textView4.setOnClickListener(this);
        if (this.f67456c) {
            textView4.setText("确定");
        }
    }
}

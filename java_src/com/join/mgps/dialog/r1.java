package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.haima.hmcp.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a3;
import com.join.mgps.dto.ModFeedbackBean;

/* JADX INFO: loaded from: classes3.dex */
public class r1 extends AlertDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f67785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f67786c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f67787d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f67788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f67789f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ModFeedbackBean f67790g;

    public r1(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    private void c(String content) {
        ((ClipboardManager) getContext().getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(content.trim());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        com.join.mgps.Util.h0.h0(getContext()).W(getContext(), this.f67786c, this.f67785b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        com.join.mgps.Util.h0.h0(getContext()).W(getContext(), this.f67786c, this.f67785b);
    }

    public void f(String gameId, String stdGameId, ModFeedbackBean data) {
        super.show();
        this.f67786c = gameId;
        this.f67785b = stdGameId;
        this.f67790g = data;
        if (data != null) {
            this.f67787d.setText(data.getTitle());
            this.f67788e.setText(data.getContent());
            this.f67789f.setText(data.getBtn_title());
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (isShowing()) {
            new Handler().postDelayed(new Runnable() { // from class: com.join.mgps.dialog.q1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f67767b.d();
                }
            }, 200L);
        }
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        ModFeedbackBean modFeedbackBean;
        int id2 = v10.getId();
        if (id2 == R.id.close) {
            dismiss();
            new Handler().postDelayed(new Runnable() { // from class: com.join.mgps.dialog.p1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f67745b.e();
                }
            }, 200L);
        } else {
            if (id2 != R.id.launch || (modFeedbackBean = this.f67790g) == null) {
                return;
            }
            c(modFeedbackBean.getWx_num());
            a3.b(getContext()).d("客服微信已复制");
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_mod_reward);
        setCanceledOnTouchOutside(false);
        this.f67787d = (TextView) findViewById(R.id.tv_title);
        this.f67788e = (TextView) findViewById(R.id.tv_content);
        this.f67789f = (TextView) findViewById(R.id.launch);
        findViewById(R.id.close).setOnClickListener(this);
        findViewById(R.id.launch).setOnClickListener(this);
    }
}

package com.join.android.app.common.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes5.dex */
public class l extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Button f34519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f34520c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f34521d;

    public l(@NonNull Context context) {
        super(context);
        this.f34521d = false;
    }

    public boolean a() {
        return this.f34521d;
    }

    public void b() {
        this.f34521d = false;
        this.f34519b.setBackgroundResource(R.drawable.selector_blue_dialog_bg);
        this.f34519b.setText("关闭");
    }

    public void c() {
        this.f34521d = true;
        this.f34519b.setBackgroundResource(R.drawable.selector_blue_dialog_bg);
        this.f34519b.setText("智能识别");
    }

    public void d(String str) {
        this.f34520c.setText(str);
    }

    public void e(View.OnClickListener clickListener) {
        this.f34519b.setOnClickListener(clickListener);
    }

    public void f(String txt, View.OnClickListener clickListener) {
        this.f34519b.setOnClickListener(clickListener);
        this.f34519b.setText(txt);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(true);
        Window window = getWindow();
        window.setBackgroundDrawableResource(17170445);
        window.setGravity(17);
        setContentView(R.layout.dialog_localgame_two_view);
        this.f34519b = (Button) findViewById(R.id.localGameTwoBt);
        this.f34520c = (TextView) findViewById(R.id.localGameTwoContentTv);
    }
}

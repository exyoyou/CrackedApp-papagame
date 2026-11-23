package com.join.mgps.customview;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.t2;

/* JADX INFO: loaded from: classes3.dex */
public class p extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f66712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f66713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f66714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f66715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f66716f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Button f66717g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Button f66718h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f66719i;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            p.this.dismiss();
        }
    }

    public p(@NonNull Context context) {
        super(context);
        this.f66719i = "";
    }

    public void a(View.OnClickListener clickListener) {
        this.f66714d.setOnClickListener(clickListener);
    }

    public void b(String gameName) {
        this.f66719i = gameName;
        this.f66713c.setText("（1）创建热点，设置名称为\"" + gameName + "\"；");
        this.f66715e.setText("（2）设置密码为\"12345678\"；");
    }

    public void c(String gameName) {
        this.f66719i = gameName;
        this.f66714d.setVisibility(8);
        this.f66713c.setText("（1）寻找名称以\"" + gameName + "\"开头的热点；");
        this.f66715e.setText("（2）加入密码为\"12345678\"；");
        this.f66716f.setText("（3）连接热点后，返回悟饭游戏厅（请确保本机热点处于关闭状态）。");
    }

    public void d(View.OnClickListener clickListener) {
        e("", clickListener);
    }

    public void e(String txt, View.OnClickListener clickListener) {
        this.f66717g.setOnClickListener(clickListener);
        if (t2.h(txt)) {
            return;
        }
        this.f66717g.setText(txt);
    }

    public void f(String txt) {
        this.f66712b.setText(txt);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(true);
        int dimension = (int) getContext().getResources().getDimension(R.dimen.wdp915);
        int dimension2 = (int) getContext().getResources().getDimension(R.dimen.wdp424);
        Window window = getWindow();
        window.setBackgroundDrawableResource(17170445);
        window.setLayout(dimension, dimension2);
        window.setGravity(17);
        setContentView(R.layout.dialog_message_view);
        this.f66712b = (TextView) findViewById(R.id.dialogMessageTitleTx);
        this.f66713c = (TextView) findViewById(R.id.dialogMessagOneTx);
        this.f66714d = (TextView) findViewById(R.id.dialogMessagCopyTx);
        this.f66715e = (TextView) findViewById(R.id.dialogMessagTwoTx);
        this.f66716f = (TextView) findViewById(R.id.dialogMessagThreeTx);
        this.f66717g = (Button) findViewById(R.id.dialogMessagBt);
        this.f66718h = (Button) findViewById(R.id.dialogMessagCloseBt);
        this.f66714d.getPaint().setFlags(8);
        this.f66718h.setOnClickListener(new a());
    }
}

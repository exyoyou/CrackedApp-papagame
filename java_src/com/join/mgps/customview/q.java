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
public class q extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f66796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f66797c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f66798d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f66799e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f66800f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Button f66801g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Button f66802h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Button f66803i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f66804j;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            q.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            q.this.dismiss();
        }
    }

    public q(@NonNull Context context) {
        super(context, R.style.MyDialog);
        this.f66804j = "";
    }

    public void a(View.OnClickListener clickListener) {
        this.f66798d.setOnClickListener(clickListener);
    }

    public void b(String gameName) {
        this.f66804j = gameName;
        this.f66797c.setText("（1）创建热点，设置名称为\"" + gameName + "\"；");
        this.f66799e.setText("（2）设置密码为\"12345678\"；");
    }

    public void c(String gameName) {
        this.f66804j = gameName;
        this.f66798d.setVisibility(8);
        this.f66797c.setText("（1）寻找名称以\"" + gameName + "\"开头的热点；");
        this.f66799e.setText("（2）加入密码为\"12345678\"；");
        this.f66800f.setText("（3）连接热点后，返回悟饭游戏厅（请确保本机热点处于关闭状态）。");
    }

    public void d(View.OnClickListener clickListener) {
        e("", clickListener);
    }

    public void e(String txt, View.OnClickListener clickListener) {
        this.f66801g.setOnClickListener(clickListener);
        if (t2.h(txt)) {
            return;
        }
        this.f66801g.setText(txt);
    }

    public void f(String txt) {
        this.f66796b.setText(txt);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(true);
        Window window = getWindow();
        window.setBackgroundDrawableResource(17170445);
        window.setGravity(17);
        setContentView(R.layout.dialog_message_view1);
        this.f66796b = (TextView) findViewById(R.id.dialogMessageTitleTx);
        this.f66797c = (TextView) findViewById(R.id.dialogMessagOneTx);
        this.f66798d = (TextView) findViewById(R.id.dialogMessagCopyTx);
        this.f66799e = (TextView) findViewById(R.id.dialogMessagTwoTx);
        this.f66800f = (TextView) findViewById(R.id.dialogMessagThreeTx);
        this.f66801g = (Button) findViewById(R.id.dialogMessagBt);
        this.f66802h = (Button) findViewById(R.id.dialogMessagCloseBt);
        Button button = (Button) findViewById(R.id.dialog_button_cancle);
        this.f66803i = button;
        button.setOnClickListener(new a());
        this.f66798d.getPaint().setFlags(8);
        Button button2 = this.f66802h;
        if (button2 != null) {
            button2.setOnClickListener(new b());
        }
    }
}

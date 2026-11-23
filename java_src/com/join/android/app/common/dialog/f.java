package com.join.android.app.common.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.extention.MobclickAgentKt;

/* JADX INFO: loaded from: classes5.dex */
public class f extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Button f34480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f34481c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f34482d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f34483e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f34484f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f34485g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f34486h;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.pref.h.n(f.this.getContext()).U(false);
            f.this.dismiss();
        }
    }

    class b implements View.OnClickListener {

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                f.this.dismiss();
            }
        }

        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f.this.f34484f.setVisibility(4);
            f.this.f34485g.setImageResource(R.drawable.ic_local_game_scan);
            f.this.f34482d.setText("扫描提示");
            f.this.f34481c.setText("如再次需要扫描，请前往【我的游戏】点击本地游戏按钮。");
            f.this.f34480b.setText("我知道了");
            f.this.f34480b.setOnClickListener(new a());
        }
    }

    public f(@NonNull Context context, int style) {
        super(context);
        this.f34486h = style;
    }

    public void f(View.OnClickListener clickListener) {
        this.f34480b.setOnClickListener(clickListener);
    }

    public void g(String txt, View.OnClickListener clickListener) {
        this.f34480b.setOnClickListener(clickListener);
        this.f34480b.setText(txt);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        Window window = getWindow();
        window.setBackgroundDrawableResource(17170445);
        window.setGravity(17);
        setContentView(R.layout.dialog_localgame_one_view);
        this.f34480b = (Button) findViewById(R.id.localGameOneBt);
        this.f34482d = (TextView) findViewById(R.id.localGameOneTitleTv);
        this.f34481c = (TextView) findViewById(R.id.localGameOneContentTv);
        this.f34483e = (TextView) findViewById(R.id.localGameOneNotTv);
        this.f34484f = (ImageView) findViewById(R.id.localGameOneCloseTv);
        this.f34485g = (ImageView) findViewById(R.id.localGameOneTopIv);
        this.f34483e.setOnClickListener(new a());
        this.f34484f.setOnClickListener(new b());
        int i10 = this.f34486h;
        if (i10 == 0) {
            setCancelable(true);
            this.f34482d.setText("本地游戏运行帮助");
            this.f34481c.setText("悟饭支持本地扫描了，下载文件至'Download'文件夹，点击下方的扫描游戏，即可添加游戏至我的游戏。");
            this.f34484f.setVisibility(4);
            return;
        }
        if (i10 == 1) {
            MobclickAgentKt.onEvent(getContext(), "onFindNewFile");
            setCancelable(false);
            this.f34482d.setText("新增文件提示");
            this.f34481c.setText("检测到'Download'目录下有新增zip文件，是否进行扫描识别？");
            this.f34484f.setVisibility(0);
        }
    }
}

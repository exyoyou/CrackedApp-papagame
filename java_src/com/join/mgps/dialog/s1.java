package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.CloudGameIndexActivity_;
import com.join.mgps.activity.ModGameIndexActivity_;

/* JADX INFO: loaded from: classes3.dex */
public class s1 extends AlertDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f67812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f67813c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f67814d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f67815e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    DownloadTask f67816f;

    public s1(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    private void c() {
        Context context = getContext();
        if (APKUtils.P(this.f67816f)) {
            APKUtils.w(getContext(), this.f67816f);
            return;
        }
        if (!(com.join.android.app.common.utils.q.x() instanceof ModGameIndexActivity_) && !(com.join.android.app.common.utils.q.x() instanceof CloudGameIndexActivity_)) {
            ModGameIndexActivity_.intent(context).a("modStdDialog").b(this.f67813c).d(this.f67812b).start();
            return;
        }
        Intent intent = new Intent(p5.a.f96224u0);
        intent.putExtra("from", "modStdDialog");
        context.sendBroadcast(intent);
    }

    public void a(String stdGameId) {
        this.f67812b = stdGameId;
        show();
    }

    public void b(String gameId, String stdGameId) {
        this.f67813c = gameId;
        this.f67812b = stdGameId;
        show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.close) {
            dismiss();
        } else if (id2 == R.id.launch) {
            dismiss();
            c();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_mod_standard);
        setCanceledOnTouchOutside(false);
        this.f67814d = (TextView) findViewById(R.id.textView102);
        this.f67815e = (TextView) findViewById(R.id.launch);
        findViewById(R.id.close).setOnClickListener(this);
        findViewById(R.id.launch).setOnClickListener(this);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        DownloadTask downloadTaskG = q5.f.M().G(this.f67813c);
        this.f67816f = downloadTaskG;
        if (downloadTaskG == null || !APKUtils.O(downloadTaskG)) {
            return;
        }
        this.f67814d.setText("如自动安装无法正常运行，请尝试手动安装");
        this.f67815e.setText("立即安装");
    }
}

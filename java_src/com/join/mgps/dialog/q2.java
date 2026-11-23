package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CloudGameIndexActivity_;
import com.join.mgps.activity.ModGameIndexActivity_;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.enums.Dtype;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;

/* JADX INFO: loaded from: classes3.dex */
public class q2 extends AlertDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SimpleDraweeView f67768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f67769c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f67770d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f67771e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Button f67772f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f67773g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LinearLayout f67774h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    DownloadTask f67775i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    EMUApkTable f67776j;

    public q2(@NonNull Context context) {
        super(context);
    }

    private void d() {
        if (APKUtils.P(this.f67775i)) {
            APKUtils.w(getContext(), this.f67775i);
            return;
        }
        if (APKUtils.K(this.f67775i)) {
            if ((com.join.android.app.common.utils.q.x() instanceof ModGameIndexActivity_) || (com.join.android.app.common.utils.q.x() instanceof CloudGameIndexActivity_)) {
                Intent intent = new Intent(p5.a.f96224u0);
                intent.putExtra("from", "modStdDialog");
                getContext().sendBroadcast(intent);
            } else {
                ModInfoBean modInfoBean = this.f67775i.getModInfoBean();
                if (modInfoBean != null) {
                    String mod_game_id = modInfoBean.getMod_game_id();
                    ModGameIndexActivity_.intent(getContext()).a("modStdDialog").b(mod_game_id).d(modInfoBean.getMain_game_id()).start();
                }
            }
        }
    }

    public void a(DownloadTask task, EMUApkTable table) {
        super.show();
        this.f67775i = task;
        this.f67776j = table;
        if (task != null) {
            com.join.android.app.common.utils.l.h(this.f67768b, table.getLogo());
            this.f67769c.setText("免root空间");
            com.join.mgps.va.overmind.i.f73262g.g();
            this.f67770d.setText(getContext().getResources().getString(R.string.str_va_support_install_more));
            c(this.f67775i);
        }
    }

    public void b(CommonGameInfoBean infoBean, EMUApkTable table) {
        super.show();
        this.f67776j = table;
        if (infoBean == null || infoBean.getG_info() == null) {
            return;
        }
        if (infoBean.getG_info() != null) {
            com.join.android.app.common.utils.l.h(this.f67768b, table.getLogo());
            this.f67769c.setText("免root空间");
            com.join.mgps.va.overmind.i.H();
            this.f67770d.setText(getContext().getResources().getString(R.string.str_va_support_install_more));
        }
        if (infoBean.getDownloadTask() != null) {
            c(infoBean.getDownloadTask());
        }
    }

    void c(DownloadTask task) {
        if (APKUtils.P(task)) {
            if (!com.join.android.app.common.utils.g.t0(getContext()).f(getContext(), task.getPackageName(), APKUtils.DEVICE_TYPE.REAL)) {
                boolean z10 = true;
                if (task.getCost_type() != 1) {
                    if (!Dtype.androidobb.name().equals(task.getRomType()) && !Dtype.androiddata.name().equals(task.getRomType()) && !Dtype.androidobbdata.name().equals(task.getRomType())) {
                        z10 = false;
                    }
                    if (Build.VERSION.SDK_INT < 30 || !z10) {
                        this.f67774h.setVisibility(0);
                        return;
                    } else {
                        this.f67774h.setVisibility(8);
                        return;
                    }
                }
            }
            this.f67774h.setVisibility(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.btn_install) {
            EMUApkTable eMUApkTable = this.f67776j;
            if (eMUApkTable != null) {
                UtilsMy.q1(eMUApkTable, getContext());
            }
            com.papa.sim.statistic.t.l(getContext()).R1(Event.clickVMInstall32Tips, new Ext().setGameId(this.f67775i.getCrc_link_type_val()));
            dismiss();
            return;
        }
        if (id2 == R.id.iv_close) {
            dismiss();
        } else if (id2 == R.id.tv_install_local) {
            if (this.f67775i != null) {
                d();
            }
            dismiss();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        getWindow().setBackgroundDrawableResource(17170445);
        setContentView(R.layout.dialog_va_ext_support);
        this.f67768b = (SimpleDraweeView) findViewById(R.id.appIcon);
        this.f67769c = (TextView) findViewById(R.id.appName);
        this.f67770d = (TextView) findViewById(R.id.tv_install_tip);
        this.f67771e = (TextView) findViewById(R.id.tv_install_local);
        this.f67772f = (Button) findViewById(R.id.btn_install);
        this.f67773g = (ImageView) findViewById(R.id.iv_close);
        this.f67774h = (LinearLayout) findViewById(R.id.ll_install_local);
        this.f67772f.setOnClickListener(this);
        this.f67773g.setOnClickListener(this);
        this.f67771e.setOnClickListener(this);
    }
}

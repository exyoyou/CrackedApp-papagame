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
import androidx.cardview.widget.CardView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CloudGameIndexActivity_;
import com.join.mgps.activity.ModGameIndexActivity_;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.enums.Dtype;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;

/* JADX INFO: loaded from: classes3.dex */
public class r2 extends AlertDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SimpleDraweeView f67791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f67792c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f67793d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f67794e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Button f67795f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f67796g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LinearLayout f67797h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LinearLayout f67798i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private LinearLayout f67799j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f67800k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f67801l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private CardView f67802m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    DownloadTask f67803n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    EMUApkTable f67804o;

    public r2(@NonNull Context context) {
        super(context);
    }

    private void d() {
        if (APKUtils.P(this.f67803n)) {
            APKUtils.w(getContext(), this.f67803n);
            return;
        }
        if (APKUtils.K(this.f67803n)) {
            if ((com.join.android.app.common.utils.q.x() instanceof ModGameIndexActivity_) || (com.join.android.app.common.utils.q.x() instanceof CloudGameIndexActivity_)) {
                Intent intent = new Intent(p5.a.f96224u0);
                intent.putExtra("from", "modStdDialog");
                getContext().sendBroadcast(intent);
            } else {
                ModInfoBean modInfoBean = this.f67803n.getModInfoBean();
                if (modInfoBean != null) {
                    String mod_game_id = modInfoBean.getMod_game_id();
                    ModGameIndexActivity_.intent(getContext()).a("modStdDialog").b(mod_game_id).d(modInfoBean.getMain_game_id()).start();
                }
            }
        }
    }

    public void a(DownloadTask task, EMUApkTable table) {
        super.show();
        this.f67803n = task;
        this.f67804o = table;
        if (task != null) {
            com.join.android.app.common.utils.l.h(this.f67791b, table.getLogo());
            this.f67792c.setText("温馨提示");
            com.join.mgps.va.overmind.i.f73262g.g();
            this.f67793d.setText(getContext().getResources().getString(R.string.str_va_support_install_tip));
            if (this.f67803n.isCloudGame()) {
                this.f67795f.setVisibility(8);
                this.f67797h.setVisibility(8);
                this.f67798i.setVisibility(0);
                this.f67799j.setVisibility(0);
            } else {
                this.f67795f.setVisibility(0);
                this.f67797h.setVisibility(0);
                this.f67798i.setVisibility(8);
                this.f67799j.setVisibility(8);
            }
            ExtBean extBean = new ExtBean();
            extBean.setTypeCode(EventP.TypeCode.page.name());
            extBean.setChatId(EventP.ChatId.expVMInstall32TwoTips.name()).setResourceId(this.f67803n.getCrc_link_type_val().replace("cld_", "")).setGameId(this.f67803n.getCrc_link_type_val().replace("cld_", ""));
            extBean.setParent(null);
            extBean.buildScene();
            com.papa.sim.statistic.t.l(getContext()).R1(Event.commonExp, extBean.toExt());
        }
    }

    public void b(CommonGameInfoBean infoBean, EMUApkTable table) {
        super.show();
        this.f67804o = table;
        if (infoBean == null || infoBean.getG_info() == null || infoBean.getG_info() == null) {
            return;
        }
        com.join.android.app.common.utils.l.h(this.f67791b, table.getLogo());
        this.f67792c.setText("温馨提示");
        com.join.mgps.va.overmind.i.H();
        this.f67793d.setText(getContext().getResources().getString(R.string.str_va_support_install_tip));
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
                        this.f67797h.setVisibility(0);
                        return;
                    } else {
                        this.f67797h.setVisibility(8);
                        return;
                    }
                }
            }
            this.f67797h.setVisibility(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.btn_install || id2 == R.id.tv_install_local_3) {
            EMUApkTable eMUApkTable = this.f67804o;
            if (eMUApkTable != null) {
                UtilsMy.q1(eMUApkTable, getContext());
            }
            Ext ext = new Ext();
            ext.setGameId(this.f67803n.getCrc_link_type_val());
            ext.setFrom("1");
            com.papa.sim.statistic.t.l(getContext()).R1(Event.clickVMInstall32TwoTips, ext);
            dismiss();
            return;
        }
        if (id2 == R.id.iv_close) {
            dismiss();
            return;
        }
        if (id2 == R.id.tv_install_local || id2 == R.id.tv_install_local_2) {
            if (this.f67803n != null) {
                d();
                Ext ext2 = new Ext();
                ext2.setGameId(this.f67803n.getCrc_link_type_val());
                ext2.setFrom("2");
                com.papa.sim.statistic.t.l(getContext()).R1(Event.clickVMInstall32TwoTips, ext2);
            }
            dismiss();
            return;
        }
        if (id2 == R.id.ll_cloud_launch) {
            dismiss();
            DownloadTask downloadTask = this.f67803n;
            if (downloadTask != null) {
                String crc_link_type_val = downloadTask.getCrc_link_type_val();
                if (this.f67803n.isMod()) {
                    crc_link_type_val = this.f67803n.getModInfoBean().getMod_game_id();
                }
                ExtBean extBean = new ExtBean();
                extBean.setTypeCode(EventP.TypeCode.cloudGame.name());
                extBean.setChatId(EventP.ChatId.expVMInstall32TwoTips.name()).setResourceId(this.f67803n.getCrc_link_type_val().replace("cld_", "")).setGameId(this.f67803n.getCrc_link_type_val().replace("cld_", ""));
                extBean.setParent(null);
                extBean.buildScene();
                com.join.mgps.Util.w0.h().s(getContext(), crc_link_type_val, extBean);
                com.papa.sim.statistic.t.l(getContext()).R1(Event.gameStart, extBean.toExt());
            }
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        getWindow().setBackgroundDrawableResource(17170445);
        setContentView(R.layout.dialog_va_ext_support_install_tip);
        this.f67791b = (SimpleDraweeView) findViewById(R.id.appIcon);
        this.f67792c = (TextView) findViewById(R.id.appName);
        this.f67793d = (TextView) findViewById(R.id.tv_install_tip);
        this.f67794e = (TextView) findViewById(R.id.tv_install_local);
        this.f67795f = (Button) findViewById(R.id.btn_install);
        this.f67796g = (ImageView) findViewById(R.id.iv_close);
        this.f67797h = (LinearLayout) findViewById(R.id.ll_install_local);
        this.f67798i = (LinearLayout) findViewById(R.id.ll_cloud_launch);
        this.f67799j = (LinearLayout) findViewById(R.id.ll_install_local_2);
        this.f67801l = (TextView) findViewById(R.id.tv_install_local_2);
        this.f67800k = (TextView) findViewById(R.id.tv_install_local_3);
        CardView cardView = (CardView) findViewById(R.id.cv_tips);
        this.f67802m = cardView;
        cardView.setVisibility(8);
        this.f67795f.setOnClickListener(this);
        this.f67796g.setOnClickListener(this);
        this.f67794e.setOnClickListener(this);
        this.f67800k.setOnClickListener(this);
        this.f67801l.setOnClickListener(this);
        this.f67798i.setOnClickListener(this);
    }
}

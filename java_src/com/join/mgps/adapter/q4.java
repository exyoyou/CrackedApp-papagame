package com.join.mgps.adapter;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.MyGameManagerActivity;
import com.join.mgps.activity.MyGameUpdateManagerActivity_;
import com.join.mgps.activity.mygame.MyGameGuesslikeActivity_;
import com.join.mgps.activity.mygame.data.RecommendGameListBean;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dialog.PlugInstallDialog_;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class q4 extends com.join.mgps.base.a<g, com.join.mgps.base.b> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f63064p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f63065q = 2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f63066r = 3;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f63067s = 4;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f63068t = 5;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f63069u = 6;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Context f63070h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f63071i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f63072j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f63073k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f63074l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    f f63075m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private CommonGameInfoBean f63076n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f63077o;

    class a implements BaseQuickAdapter.m {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.join.mgps.base.BaseQuickAdapter.m
        public int a(GridLayoutManager gridLayoutManager, int position) {
            return ((g) q4.this.getItem(position)).e() ? gridLayoutManager.getSpanCount() : ((g) q4.this.getItem(position)).b();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f63079b;

        b(final DownloadTask val$downloadTask) {
            this.f63079b = val$downloadTask;
        }

        void a(Context context) {
            DownloadTask downloadTask = this.f63079b;
            if (downloadTask != null && (downloadTask.getStatus() == 3 || this.f63079b.getStatus() == 1 || this.f63079b.getStatus() == 6)) {
                com.php25.PDownload.d.c(this.f63079b, context);
            }
            String crc_link_type_val = this.f63079b.getCrc_link_type_val();
            com.join.mgps.Util.a3.b(context).d("已接入专属通道，加速成功！");
            UtilsMy.H4(context, crc_link_type_val);
            UtilsMy.G2(context, crc_link_type_val);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.CenterAccelerationDownload, new Ext());
            a(v10.getContext());
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f63081b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.b f63082c;

        c(final DownloadTask val$downloadTask, final com.join.mgps.base.b val$helper) {
            this.f63081b = val$downloadTask;
            this.f63082c = val$helper;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommonGameInfoBean ad_info = this.f63081b.getAd_info();
            if (ad_info != null) {
                IntentUtil.getInstance().intentActivity(q4.this.f63070h, ad_info.getIntentDataBean());
            }
            q4.this.m0(this.f63082c, false);
            this.f63081b.setAd_info_switch(0);
            q5.f.M().m(this.f63081b);
        }
    }

    class d extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f63084b;

        d(final DownloadTask val$downloadTask) {
            this.f63084b = val$downloadTask;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            UtilsMy.delete(new File(com.join.mgps.Util.z.f50178q, this.f63084b.getPackageName()));
            UtilsMy.delete(new File(com.join.mgps.Util.z.f50179r, this.f63084b.getPackageName()));
            UtilsMy.delete(new File(this.f63084b.getGameZipPath()));
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        DownloadTask f63086b;

        public e(DownloadTask downloadTask) {
            this.f63086b = downloadTask;
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0032  */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z10;
            DownloadTask downloadTask = this.f63086b;
            if (downloadTask == null) {
                return;
            }
            if (downloadTask.getPlugin_num() != null) {
                if (this.f63086b.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            boolean z11 = this.f63086b.getFileType() != null && this.f63086b.getFileType().equals(Dtype.chajian.name());
            if (this.f63086b.getFileType() != null) {
                this.f63086b.getFileType().equals(Dtype.android.name());
            }
            if (z10) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f63086b.getDown_url_remote());
                UtilsMy.j3(this.f63086b, q4.this.f63070h);
                IntentUtil.getInstance().intentActivity(q4.this.f63070h, intentDateBean);
                return;
            }
            DownloadTask downloadTask2 = this.f63086b;
            int status = downloadTask2 != null ? downloadTask2.getStatus() : 0;
            if (UtilsMy.w0(this.f63086b.getPay_game_amount(), this.f63086b.getCrc_link_type_val()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.l(q4.this.f63070h, this.f63086b);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            if (z11) {
                                return;
                            }
                            UtilsMy.k4(q4.this.f63070h, this.f63086b);
                            return;
                        }
                        if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (com.join.android.app.common.utils.m.j(q4.this.f63070h)) {
                                        UtilsMy.O4(q4.this.f63070h, this.f63086b);
                                        return;
                                    } else {
                                        com.join.mgps.Util.a3.b(q4.this.f63070h).d("无网络连接");
                                        return;
                                    }
                                }
                                if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.m.j(q4.this.f63070h)) {
                                                com.join.mgps.Util.a3.b(q4.this.f63070h).d("无网络连接");
                                                break;
                                            } else if (!z11 || this.f63086b.getDown_type() != 2) {
                                                UtilsMy.X2(q4.this.f63070h, this.f63086b);
                                                break;
                                            } else if (!TextUtils.isEmpty(this.f63086b.getCrc_link_type_val())) {
                                                DownloadTask downloadTaskG = q5.f.M().G(this.f63086b.getCrc_link_type_val());
                                                if (downloadTaskG != null) {
                                                    this.f63086b.setId(downloadTaskG.getId());
                                                    com.php25.PDownload.d.b(this.f63086b);
                                                    UtilsMy.V4(this.f63086b, downloadTaskG);
                                                }
                                                UtilsMy.q1(t6.p.o().n(this.f63086b.getPlugin_num()), q4.this.f63070h);
                                                break;
                                            }
                                            break;
                                        case 11:
                                            if (z11 && this.f63086b.getDown_type() == 2 && ConstantIntEnum.PS2.value() != Integer.parseInt(this.f63086b.getPlugin_num())) {
                                                EMUApkTable eMUApkTableN = t6.p.o().n(this.f63086b.getPlugin_num());
                                                if (eMUApkTableN != null) {
                                                    if (!com.join.android.app.common.utils.o.C(eMUApkTableN)) {
                                                        PlugInstallDialog_.intent(q4.this.f63070h).c(eMUApkTableN).a(this.f63086b).b(2).start();
                                                    } else {
                                                        PlugInstallDialog_.intent(q4.this.f63070h).c(eMUApkTableN).a(this.f63086b).start();
                                                        com.join.android.app.common.servcie.j.f().w(q4.this.f63070h, this.f63086b);
                                                    }
                                                }
                                            } else {
                                                UtilsMy.w4(this.f63086b, q4.this.f63070h);
                                            }
                                            break;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(this.f63086b, q4.this.f63070h);
                    return;
                }
                com.php25.PDownload.d.i(this.f63086b);
                return;
            }
            if (z11) {
                UtilsMy.s1(t6.p.o().n(this.f63086b.getPlugin_num()), q4.this.f63070h);
                return;
            }
            if (UtilsMy.y0(this.f63086b.getPay_game_amount(), this.f63086b.getCrc_link_type_val()) > 0) {
                UtilsMy.z4(q4.this.f63070h, this.f63086b.getCrc_link_type_val());
                return;
            }
            if (this.f63086b.getDown_status() == 5) {
                UtilsMy.l1(q4.this.f63070h, this.f63086b);
                return;
            }
            if (!TextUtils.isEmpty(this.f63086b.getUrl()) || q4.this.f63076n == null) {
                Context context = q4.this.f63070h;
                DownloadTask downloadTask3 = this.f63086b;
                UtilsMy.U0(context, downloadTask3, downloadTask3.getTp_down_url(), this.f63086b.getOther_down_switch(), this.f63086b.getCdn_down_switch());
                return;
            }
            q4.this.f63076n.set_from(152);
            q4.this.f63076n.set_from_type(152);
            q4 q4Var = q4.this;
            UtilsMy.U2(q4Var.f63070h, q4Var.f63076n);
            Ext ext = new Ext();
            ext.setGameId(this.f63086b.getCrc_link_type_val());
            com.papa.sim.statistic.t.l(q4.this.f63070h).R1(Event.clickGameDownload, ext);
        }
    }

    public interface f {
        void a(String gameId);

        void b(String gameId);

        void c(int position, DownloadTask downloadTask);

        void onLongClick(String gameId);

        void onSpeedUp(String gameId);
    }

    public q4(Context context) {
        super(null);
        this.f63071i = "";
        this.f63072j = false;
        this.f63073k = false;
        this.f63074l = -1;
        this.f63070h = context;
        r(1, R.layout.fragment_my_game_item_update_v1);
        r(2, R.layout.fragment_my_game_item_guess_like);
        r(3, R.layout.fragment_my_game_item_game_v1);
        r(4, R.layout.fragment_my_game_item_footer);
        r(5, R.layout.fragment_my_game_item_plug);
        r(6, R.layout.fragment_my_game_item_game_v1);
        setSpanSizeLookup(new a());
    }

    private void H(com.join.mgps.base.b helper, g item) {
        helper.setText(R.id.count, "共" + ((Integer) item.a()).intValue() + "款游戏");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void I(com.join.mgps.base.b helper, g item) {
        DownloadTask downloadTask = (DownloadTask) item.a();
        if (downloadTask == null) {
            return;
        }
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) helper.getView(R.id.icon);
        if (simpleDraweeView.getTag() == null || !TextUtils.equals(simpleDraweeView.getTag().toString(), downloadTask.getPortraitURL())) {
            com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.icon), downloadTask.getPortraitURL());
            simpleDraweeView.setTag(downloadTask.getPortraitURL());
        }
        helper.setText(R.id.name, downloadTask.getShowName());
        int status = downloadTask.getStatus();
        if (status == 8) {
            ((ProgressBar) helper.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
        } else {
            ((ProgressBar) helper.getView(R.id.progressBar)).setProgress(0);
        }
        if (status == 5) {
            helper.setGone(R.id.notOpen, !downloadTask.isOpen());
            CommonGameInfoBean ad_info = downloadTask.getAd_info();
            if (ad_info != null && downloadTask.isOpen() && downloadTask.getAd_info_switch() == 1) {
                helper.setText(R.id.tv_gift_desc, ad_info.getTitle());
            }
        } else {
            helper.setGone(R.id.notOpen, false);
        }
        g0(helper, downloadTask);
        if (helper.getLayoutPosition() < getItemCount() && ((g) getItem(helper.getLayoutPosition())).f63092f) {
            helper.setGone(R.id.speedUp, false);
        } else if (!M(downloadTask)) {
            helper.setGone(R.id.speedUp, false);
        } else {
            helper.setGone(R.id.speedUp, true);
            helper.getView(R.id.speedUp).setOnClickListener(new b(downloadTask));
        }
    }

    private void J(com.join.mgps.base.b helper, g item) {
        if (item.a() == null) {
            return;
        }
        RecommendGameListBean recommendGameListBean = (RecommendGameListBean) item.a();
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.p4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f63000b.T(view);
            }
        });
        List<CommonGameInfoBean> recommend_list = recommendGameListBean.getRecommend_list();
        SimpleDraweeView[] simpleDraweeViewArr = {(SimpleDraweeView) helper.getView(R.id.icon1), (SimpleDraweeView) helper.getView(R.id.icon2), (SimpleDraweeView) helper.getView(R.id.icon1)};
        for (int i10 = 0; i10 < 3; i10++) {
            if (i10 >= recommend_list.size()) {
                simpleDraweeViewArr[i10].setVisibility(8);
            } else {
                simpleDraweeViewArr[i10].setVisibility(0);
                com.join.android.app.common.utils.l.o(simpleDraweeViewArr[i10], recommend_list.get(i10).getBig_pic());
            }
        }
    }

    private void K(com.join.mgps.base.b helper, g item) {
        DownloadTask downloadTask = (DownloadTask) item.a();
        if (downloadTask == null) {
            return;
        }
        com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.icon), downloadTask.getPortraitURL());
        helper.setText(R.id.name, downloadTask.getShowName());
        if (downloadTask.getStatus() == 8) {
            ((ProgressBar) helper.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
        } else {
            ((ProgressBar) helper.getView(R.id.progressBar)).setProgress(0);
        }
        g0(helper, downloadTask);
    }

    private void L(com.join.mgps.base.b helper, g item) {
        helper.setText(R.id.count, ((Integer) item.a()).intValue() + "款游戏需更新");
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.o4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                q4.U(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T(View view) {
        MyGameGuesslikeActivity_.intent(view.getContext()).start();
        Context context = this.f63070h;
        if (context instanceof MGMainActivity) {
            com.papa.sim.statistic.t.l(context).R1(Event.onclickTabGuessuLike, new Ext());
        }
        Context context2 = this.f63070h;
        if (context2 instanceof MyGameManagerActivity) {
            com.papa.sim.statistic.t.l(context2).R1(Event.onclickCentreGuessuLike, new Ext());
        }
        this.f63073k = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void U(View view) {
        MyGameUpdateManagerActivity_.intent(view.getContext()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V(DownloadTask downloadTask, View view) {
        f fVar = this.f63075m;
        if (fVar != null) {
            fVar.b(downloadTask.getCrc_link_type_val());
        } else if (downloadTask.getFileType() == null || !downloadTask.getFileType().equals(Dtype.chajian.name())) {
            IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(this.f63070h, downloadTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void W(com.join.mgps.base.b bVar, DownloadTask downloadTask, View view) {
        if (this.f63075m != null) {
            if (bVar.getItemViewType() == 3) {
                this.f63075m.a(downloadTask.getCrc_link_type_val());
            } else if (bVar.getItemViewType() == 6) {
                this.f63075m.c(bVar.getLayoutPosition(), downloadTask);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y(boolean z10, DownloadTask downloadTask, Dialog dialog, View view) {
        if (z10 && com.join.android.app.common.utils.g.t0(this.f63070h).e(this.f63070h, downloadTask.getPackageName())) {
            com.join.android.app.common.utils.g.t0(this.f63070h).o0(this.f63070h, downloadTask.getPackageName());
        } else {
            O(downloadTask);
            UtilsMy.U4(downloadTask);
            notifyDataSetChanged();
        }
        dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean Z(final DownloadTask downloadTask, View view) {
        final boolean z10;
        f fVar = this.f63075m;
        if (fVar != null) {
            fVar.onLongClick(downloadTask.getCrc_link_type_val());
            return true;
        }
        final com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f63070h, R.style.MyDialog);
        tVar.setContentView(R.layout.delete_center_dialog);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) tVar.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) tVar.findViewById(R.id.dialog_content);
        textView.setText("删除游戏");
        String fileType = downloadTask.getFileType();
        if (fileType == null || !fileType.equals(Dtype.android.name())) {
            textView2.setText("你确定要删除该游戏及文件？");
            button.setText("删除");
            z10 = false;
        } else {
            if (com.join.android.app.common.utils.g.t0(this.f63070h).e(this.f63070h, downloadTask.getPackageName())) {
                textView2.setText("你确定要卸载该游戏？");
                button.setText("卸载");
            } else {
                textView2.setText("你确定要删除该游戏？");
                button.setText("删除");
            }
            z10 = true;
        }
        ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.m4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                tVar.dismiss();
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.n4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f62828b.Y(z10, downloadTask, tVar, view2);
            }
        });
        tVar.show();
        return true;
    }

    private void k0(com.join.mgps.base.b helper, boolean show) {
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) helper.getView(R.id.icon);
        ViewGroup.LayoutParams layoutParams = simpleDraweeView.getLayoutParams();
        TextView textView = (TextView) helper.getView(R.id.name);
        if (show) {
            layoutParams.width = (int) this.mContext.getResources().getDimension(R.dimen.wdp120);
            ((TextView) helper.getView(R.id.name)).setTextSize(0, this.f63070h.getResources().getDimension(R.dimen.wdp24));
            textView.setMaxLines(1);
            textView.setSingleLine(true);
        } else {
            textView.setSingleLine(false);
            textView.setMaxLines(2);
            layoutParams.width = (int) this.mContext.getResources().getDimension(R.dimen.wdp156);
            ((TextView) helper.getView(R.id.name)).setTextSize(0, this.f63070h.getResources().getDimension(R.dimen.wdp28));
        }
        simpleDraweeView.setLayoutParams(layoutParams);
        helper.setGone(R.id.install, false);
        helper.setGone(R.id.ll_gift, show);
        helper.setGone(R.id.progressBar, false);
        helper.setGone(R.id.v_bottom, show);
        helper.setGone(R.id.tv_down_speed, false);
        helper.setGone(R.id.desc, false);
    }

    private void l0(com.join.mgps.base.b helper) {
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) helper.getView(R.id.icon);
        ViewGroup.LayoutParams layoutParams = simpleDraweeView.getLayoutParams();
        layoutParams.width = (int) this.mContext.getResources().getDimension(R.dimen.wdp120);
        simpleDraweeView.setLayoutParams(layoutParams);
        TextView textView = (TextView) helper.getView(R.id.name);
        textView.setMaxLines(1);
        textView.setSingleLine(true);
        ((TextView) helper.getView(R.id.name)).setTextSize(0, this.f63070h.getResources().getDimension(R.dimen.wdp24));
        helper.setGone(R.id.install, true);
        helper.setGone(R.id.progressBar, false);
        helper.setGone(R.id.v_bottom, true);
        helper.setGone(R.id.ll_gift, false);
        helper.setGone(R.id.tv_down_speed, false);
        helper.setGone(R.id.desc, false);
        TextView textView2 = (TextView) helper.getView(R.id.install);
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) textView2.getLayoutParams();
        layoutParams2.startToStart = R.id.v_bottom;
        ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = 0;
        textView2.setLayoutParams(layoutParams2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0(com.join.mgps.base.b helper, boolean show) {
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) helper.getView(R.id.icon);
        ViewGroup.LayoutParams layoutParams = simpleDraweeView.getLayoutParams();
        TextView textView = (TextView) helper.getView(R.id.install);
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) textView.getLayoutParams();
        TextView textView2 = (TextView) helper.getView(R.id.name);
        if (show) {
            layoutParams.width = (int) this.mContext.getResources().getDimension(R.dimen.wdp120);
            ((TextView) helper.getView(R.id.name)).setTextSize(0, this.f63070h.getResources().getDimension(R.dimen.wdp24));
            layoutParams2.startToStart = -1;
            ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = (int) this.mContext.getResources().getDimension(R.dimen.wdp25);
            textView2.setMaxLines(1);
            textView2.setSingleLine(true);
        } else {
            layoutParams2.startToStart = R.id.v_bottom;
            layoutParams.width = (int) this.mContext.getResources().getDimension(R.dimen.wdp156);
            ((TextView) helper.getView(R.id.name)).setTextSize(0, this.f63070h.getResources().getDimension(R.dimen.wdp28));
            ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = (int) this.mContext.getResources().getDimension(R.dimen.wdp25);
            textView2.setMaxLines(2);
            textView2.setSingleLine(false);
        }
        simpleDraweeView.setLayoutParams(layoutParams);
        textView.setLayoutParams(layoutParams2);
        helper.setGone(R.id.ll_gift, false);
        helper.setGone(R.id.install, show);
        helper.setGone(R.id.progressBar, show);
        helper.setGone(R.id.v_bottom, show);
        helper.setGone(R.id.desc, show);
    }

    boolean M(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return false;
        }
        if (downloadTask.getStatus() != 2 && downloadTask.getStatus() != 3) {
            return false;
        }
        if (UtilsMy.q2(this.f63070h, downloadTask.getCrc_link_type_val()) || new PrefDef_(this.f63070h).downloadSpeedUpGameSize().d().intValue() > downloadTask.getActual_size()) {
            return false;
        }
        return TextUtils.isEmpty(downloadTask.getFileType()) || !downloadTask.getFileType().equals(Dtype.chajian.name());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public void convert(@NonNull com.join.mgps.base.b helper, g item) {
        int iC = item.c();
        if (iC == 1) {
            L(helper, item);
            return;
        }
        if (iC == 2) {
            J(helper, item);
            return;
        }
        if (iC == 3) {
            I(helper, item);
            return;
        }
        if (iC == 5) {
            K(helper, item);
        } else if (iC == 4) {
            H(helper, item);
        } else if (iC == 6) {
            I(helper, item);
        }
    }

    public void O(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.php25.PDownload.d.a(downloadTask);
        try {
            if (!TextUtils.isEmpty(downloadTask.getRomType()) && (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name()))) {
                new d(downloadTask).start();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        P(downloadTask);
    }

    public void P(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        try {
            Iterator it2 = getData().iterator();
            while (it2.hasNext()) {
                g gVar = (g) it2.next();
                if (gVar.c() == 3 && ((DownloadTask) gVar.a()).getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    it2.remove();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        notifyDataSetChanged();
    }

    public f Q() {
        return this.f63075m;
    }

    public boolean R() {
        return this.f63072j;
    }

    public boolean S() {
        return this.f63073k;
    }

    void a0() {
        List<DownloadTask> listA0 = q5.f.M().a0(this.f63070h);
        DownloadTask downloadTask = null;
        if (listA0 != null && listA0.size() > 0) {
            long finishTime = 0;
            for (DownloadTask downloadTask2 : listA0) {
                if (finishTime == 0 || finishTime < downloadTask2.getFinishTime()) {
                    finishTime = downloadTask2.getFinishTime();
                    downloadTask = downloadTask2;
                }
            }
            if (downloadTask != null) {
                this.f63071i = downloadTask.getCrc_link_type_val();
                return;
            }
            return;
        }
        List<DownloadTask> listD = q5.f.M().d();
        Iterator<DownloadTask> it2 = listD.iterator();
        while (it2.hasNext()) {
            if (it2.next().getCrc_link_type_val().length() <= 3) {
                it2.remove();
            }
        }
        long openTime = 0;
        for (DownloadTask downloadTask3 : listD) {
            if (downloadTask3.getStatus() == 5 && (openTime == 0 || openTime < downloadTask3.getOpenTime())) {
                openTime = downloadTask3.getOpenTime();
                downloadTask = downloadTask3;
            }
        }
        if (downloadTask != null) {
            this.f63071i = downloadTask.getCrc_link_type_val();
        } else {
            this.f63071i = "";
        }
    }

    public void b0(CommonGameInfoBean adAppBean) {
        this.f63076n = adAppBean;
    }

    public void c0(boolean canShowHighlight) {
        this.f63072j = canShowHighlight;
    }

    public void d0(boolean canShowRecommBadge) {
        this.f63073k = canShowRecommBadge;
    }

    public void e0(String corner_mark_pic) {
        this.f63077o = corner_mark_pic;
    }

    void f0(TextView textView, int number) {
        if (textView == null) {
            return;
        }
        if (number < 1) {
            textView.setVisibility(8);
            return;
        }
        textView.setVisibility(0);
        Resources resources = textView.getResources();
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) textView.getLayoutParams();
        if (number < 10) {
            ((ViewGroup.MarginLayoutParams) layoutParams).width = resources.getDimensionPixelOffset(R.dimen.wdp32);
            ((ViewGroup.MarginLayoutParams) layoutParams).height = resources.getDimensionPixelOffset(R.dimen.wdp32);
            textView.setLayoutParams(layoutParams);
            textView.setCompoundDrawables(null, null, null, null);
            textView.setBackgroundResource(R.drawable.mygame_big_round);
            textView.setPadding(0, 0, 0, 1);
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = resources.getDimensionPixelOffset(R.dimen.wdp32);
            textView.setGravity(17);
            textView.setLayoutParams(layoutParams);
            textView.setCompoundDrawables(null, null, null, null);
            textView.setBackgroundResource(R.drawable.message_round1);
            int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.wdp10);
            textView.setPadding(dimensionPixelOffset, 0, dimensionPixelOffset, 1);
        }
        textView.setText(number + "");
    }

    void g0(final com.join.mgps.base.b helper, final DownloadTask downloadTask) {
        helper.getView(R.id.ll_gift).setOnClickListener(new c(downloadTask, helper));
        if (downloadTask.getStatus() == 5 || downloadTask.getStatus() == 0) {
            helper.itemView.setOnClickListener(new e(downloadTask));
        } else {
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.j4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f62492b.V(downloadTask, view);
                }
            });
        }
        helper.getView(R.id.install).setOnClickListener(new e(downloadTask));
        helper.setGone(R.id.imageView61, helper.getItemViewType() == 3).setGone(R.id.icCloseAd, helper.getItemViewType() == 6).setGone(R.id.icCornerAd, helper.getItemViewType() == 6);
        if (helper.getView(R.id.icCornerAd).getVisibility() == 0) {
            com.join.android.app.common.utils.l.q((SimpleDraweeView) helper.getView(R.id.icCornerAd), this.f63077o, com.facebook.drawee.drawable.s.c.f27287d);
        }
        helper.getView(R.id.more).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.k4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f62624b.W(helper, downloadTask, view);
            }
        });
        helper.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.join.mgps.adapter.l4
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f62694b.Z(downloadTask, view);
            }
        });
        i0(helper, downloadTask);
    }

    void h0(TextView view, DownloadTask downloadTask) {
        if (downloadTask == null || TextUtils.isEmpty(downloadTask.getPlugin_num())) {
            return;
        }
        if (downloadTask.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
            view.setBackgroundResource(R.drawable.recom_blue_butn);
            view.setText("开始");
            view.setTextColor(this.f63070h.getResources().getColor(R.color.app_blue_color));
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0034  */
    void i0(com.join.mgps.base.b helper, DownloadTask downloadTask) {
        boolean z10;
        if (downloadTask == null) {
            return;
        }
        boolean z11 = false;
        if (downloadTask.getPlugin_num() != null) {
            if (downloadTask.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        helper.setGone(R.id.install, true);
        helper.setEnabled(R.id.install, true);
        if (z10) {
            h0((TextView) helper.getView(R.id.install), downloadTask);
            return;
        }
        int status = downloadTask.getStatus();
        long j10 = (long) (Double.parseDouble(downloadTask.getShowSize()) * 1024.0d * 1024.0d);
        if (UtilsMy.w0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 27) {
                helper.setText(R.id.install, "暂停中");
                m0(helper, true);
                return;
            }
            if (status == 48) {
                helper.setBackgroundRes(R.id.install, R.drawable.btn_download_3ca4fd_stroke_1px);
                helper.setText(R.id.install, "安装中");
                helper.setTextColor(R.id.install, this.f63070h.getResources().getColor(R.color.app_blue_color));
                l0(helper);
                return;
            }
            if (status == 2) {
                UtilsMy.U4(downloadTask);
                helper.setBackgroundRes(R.id.install, R.drawable.btn_download_3ca4fd_stroke_1px);
                helper.setText(R.id.install, "暂停");
                helper.setTextColor(R.id.install, this.f63070h.getResources().getColor(R.color.app_blue_color));
                if (downloadTask.getSize() == 0) {
                    helper.setText(R.id.desc, UtilsMy.d(downloadTask.getCurrentSize(), "#.0") + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                } else {
                    helper.setText(R.id.desc, UtilsMy.d(downloadTask.getCurrentSize(), "#.0") + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                }
                ((ProgressBar) helper.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                m0(helper, true);
                return;
            }
            if (status != 3) {
                if (status == 5) {
                    if (downloadTask.getAd_info() != null && downloadTask.isOpen() && downloadTask.getAd_info_switch() == 1) {
                        z11 = true;
                    }
                    k0(helper, z11);
                    return;
                }
                if (status != 6) {
                    if (status != 7) {
                        if (status == 42) {
                            l0(helper);
                            return;
                        }
                        if (status != 43) {
                            switch (status) {
                                case 9:
                                    helper.setBackgroundRes(R.id.install, R.drawable.btn_download_3ca4fd_stroke_1px);
                                    helper.setText(R.id.install, "更新");
                                    helper.setTextColor(R.id.install, this.f63070h.getResources().getColor(R.color.app_blue_color));
                                    l0(helper);
                                    break;
                                case 10:
                                    helper.setBackgroundRes(R.id.install, R.drawable.btn_download_3ca4fd_stroke_1px);
                                    helper.setText(R.id.install, "等待");
                                    helper.setTextColor(R.id.install, this.f63070h.getResources().getColor(R.color.app_blue_color));
                                    helper.setText(R.id.desc, UtilsMy.d(downloadTask.getCurrentSize(), "#.0") + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                    try {
                                        ((ProgressBar) helper.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                    helper.setText(R.id.desc, "等待中");
                                    m0(helper, true);
                                    break;
                                case 11:
                                    helper.setBackgroundRes(R.id.install, R.drawable.btn_download_3ca4fd_stroke_1px);
                                    helper.setText(R.id.install, "安装");
                                    helper.setTextColor(R.id.install, this.f63070h.getResources().getColor(R.color.app_blue_color));
                                    l0(helper);
                                    break;
                                case 12:
                                    helper.setText(R.id.desc, "解压中..");
                                    ((ProgressBar) helper.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                                    helper.setBackgroundRes(R.id.install, R.drawable.extract);
                                    helper.setText(R.id.install, "解压中");
                                    helper.setTextColor(R.id.install, -4868683);
                                    m0(helper, true);
                                    break;
                                case 13:
                                    helper.setText(R.id.desc, "点击重新解压");
                                    ((ProgressBar) helper.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                                    helper.setBackgroundRes(R.id.install, R.drawable.reextract);
                                    helper.setText(R.id.install, "解压");
                                    helper.setTextColor(R.id.install, this.f63070h.getResources().getColor(R.color.app_grey_color));
                                    l0(helper);
                                    break;
                                default:
                                    String strU1 = UtilsMy.U1(downloadTask);
                                    if (downloadTask.getSp_tag_info() != null && downloadTask.getSp_tag_info().getModel() != null) {
                                        strU1 = downloadTask.getSp_tag_info().getModel().getName();
                                    }
                                    helper.setText(R.id.desc, strU1);
                                    helper.setTextColor(R.id.desc, Color.parseColor("#FFA8A8A8"));
                                    m0(helper, false);
                                    break;
                            }
                            return;
                        }
                    }
                }
            }
            helper.setBackgroundRes(R.id.install, R.drawable.btn_download_3ca4fd_stroke_1px);
            helper.setText(R.id.install, "继续");
            helper.setTextColor(R.id.install, this.f63070h.getResources().getColor(R.color.app_blue_color));
            try {
                if (downloadTask.getSize() == 0) {
                    helper.setText(R.id.desc, UtilsMy.d(downloadTask.getCurrentSize(), "#.0") + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                } else {
                    helper.setText(R.id.desc, UtilsMy.d(downloadTask.getCurrentSize(), "#.0") + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                }
                ((ProgressBar) helper.getView(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            helper.setText(R.id.desc, "暂停中");
            m0(helper, true);
            return;
        }
        helper.setBackgroundRes(R.id.install, R.drawable.btn_download_3ca4fd_stroke_1px);
        UtilsMy.w0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val());
        UtilsMy.n3((TextView) helper.getView(R.id.install), helper.getView(R.id.install), downloadTask);
        helper.setTextColor(R.id.install, this.f63070h.getResources().getColor(R.color.app_blue_color));
        m0(helper, false);
    }

    public void j0(f onGameClickListener) {
        this.f63075m = onGameClickListener;
    }

    public static class g implements j6.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f63088b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Object f63089c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f63090d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f63091e = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f63092f;

        public g(int viewType, Object obj) {
            this.f63088b = viewType;
            this.f63089c = obj;
        }

        public <O> O a() {
            return (O) this.f63089c;
        }

        public int b() {
            return this.f63091e;
        }

        public int c() {
            return this.f63088b;
        }

        public boolean d() {
            return this.f63092f;
        }

        public boolean e() {
            return this.f63090d;
        }

        public void f(boolean canShowShortcut) {
            this.f63092f = canShowShortcut;
        }

        public void g(boolean fullSpan) {
            this.f63090d = fullSpan;
        }

        @Override // j6.b
        public int getItemType() {
            return this.f63088b;
        }

        public void h(Object obj) {
            this.f63089c = obj;
        }

        public void i(int span) {
            this.f63091e = span;
        }

        public void j(int viewType) {
            this.f63088b = viewType;
        }

        public g(int viewType, Object obj, boolean canShowShortcut) {
            this.f63088b = viewType;
            this.f63089c = obj;
            this.f63092f = canShowShortcut;
        }
    }
}

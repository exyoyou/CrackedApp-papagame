package com.join.mgps.adapter;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
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
import com.join.mgps.activity.mygame.data.DataGameListBean;
import com.join.mgps.activity.recomend.GamedownRecomendItemBean;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dialog.PlugInstallDialog_;
import com.join.mgps.dto.CloudGameBanner;
import com.join.mgps.dto.CollectionSevenListBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.view.GlideImageLoader;
import com.youth.banner.Banner;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class i4 extends BaseAdapter {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f62355l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f62356m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f62357n = 2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f62358o = 3;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f62359p = 4;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f62360q = 5;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f62361r = 6;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f62362s = 7;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f62363t = 8;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f62364u = 9;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f62365v = 10;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f62366w = 11;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f62367x = 12;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f62368y = 13;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f62369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f62370c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f62371d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f62372e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f62373f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f62374g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    List<f> f62375h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    e f62376i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private CommonGameInfoBean f62377j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f62378k;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f62379b;

        a(final DownloadTask val$downloadTask) {
            this.f62379b = val$downloadTask;
        }

        void a(Context context) {
            DownloadTask downloadTask = this.f62379b;
            if (downloadTask != null && (downloadTask.getStatus() == 3 || this.f62379b.getStatus() == 1 || this.f62379b.getStatus() == 6)) {
                com.php25.PDownload.d.c(this.f62379b, context);
            }
            String crc_link_type_val = this.f62379b.getCrc_link_type_val();
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

    class b implements Animation.AnimationListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f62381b;

        b(final View val$view) {
            this.f62381b = val$view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f62381b.setVisibility(8);
            i4.this.f62373f = -1;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            this.f62381b.setVisibility(0);
        }
    }

    class c extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f62383b;

        c(final DownloadTask val$downloadTask) {
            this.f62383b = val$downloadTask;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            UtilsMy.delete(new File(com.join.mgps.Util.z.f50178q, this.f62383b.getPackageName()));
            UtilsMy.delete(new File(com.join.mgps.Util.z.f50179r, this.f62383b.getPackageName()));
            UtilsMy.delete(new File(this.f62383b.getGameZipPath()));
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        DownloadTask f62385b;

        public d(DownloadTask downloadTask) {
            this.f62385b = downloadTask;
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0032  */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z10;
            DownloadTask downloadTask = this.f62385b;
            if (downloadTask == null) {
                return;
            }
            if (downloadTask.getPlugin_num() != null) {
                if (this.f62385b.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            boolean z11 = this.f62385b.getFileType() != null && this.f62385b.getFileType().equals(Dtype.chajian.name());
            if (this.f62385b.getFileType() != null) {
                this.f62385b.getFileType().equals(Dtype.android.name());
            }
            if (z10) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f62385b.getDown_url_remote());
                UtilsMy.j3(this.f62385b, i4.this.f62369b);
                IntentUtil.getInstance().intentActivity(i4.this.f62369b, intentDateBean);
                return;
            }
            DownloadTask downloadTask2 = this.f62385b;
            int status = downloadTask2 != null ? downloadTask2.getStatus() : 0;
            if (UtilsMy.w0(this.f62385b.getPay_game_amount(), this.f62385b.getCrc_link_type_val()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.l(i4.this.f62369b, this.f62385b);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            if (z11) {
                                return;
                            }
                            ExtBean resourceId = new ExtBean().setGameId(this.f62385b.getCrc_link_type_val().replace("cld_", "")).setTypeCode((this.f62385b.isCloudTask() ? EventP.TypeCode.cloudGame : EventP.TypeCode.game).name()).setFirstModule(EventP.FirstModel.meTab.name()).setSecondModule((i4.this.f62374g == 1 ? EventP.SecondModel.myCloudGame : EventP.SecondModel.myGame).name()).setResourceId(this.f62385b.getCrc_link_type_val().replace("cld_", ""));
                            Context context = i4.this.f62369b;
                            DownloadTask downloadTask3 = this.f62385b;
                            UtilsMy.q4(context, downloadTask3, String.valueOf(downloadTask3.get_from()), resourceId);
                            return;
                        }
                        if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (com.join.android.app.common.utils.m.j(i4.this.f62369b)) {
                                        UtilsMy.O4(i4.this.f62369b, this.f62385b);
                                        return;
                                    } else {
                                        com.join.mgps.Util.a3.b(i4.this.f62369b).d("无网络连接");
                                        return;
                                    }
                                }
                                if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.m.j(i4.this.f62369b)) {
                                                com.join.mgps.Util.a3.b(i4.this.f62369b).d("无网络连接");
                                                break;
                                            } else if (!z11) {
                                                UtilsMy.X2(i4.this.f62369b, this.f62385b);
                                                break;
                                            } else if (!TextUtils.isEmpty(this.f62385b.getCrc_link_type_val())) {
                                                DownloadTask downloadTaskG = q5.f.M().G(this.f62385b.getCrc_link_type_val());
                                                if (downloadTaskG != null) {
                                                    this.f62385b.setId(downloadTaskG.getId());
                                                    com.php25.PDownload.d.b(this.f62385b);
                                                    UtilsMy.V4(this.f62385b, downloadTaskG);
                                                }
                                                UtilsMy.q1(t6.p.o().n(this.f62385b.getPlugin_num()), i4.this.f62369b);
                                                break;
                                            }
                                            break;
                                        case 11:
                                            if (z11 && this.f62385b.getDown_type() == 2 && ConstantIntEnum.PS2.value() != Integer.parseInt(this.f62385b.getPlugin_num())) {
                                                EMUApkTable eMUApkTableN = t6.p.o().n(this.f62385b.getPlugin_num());
                                                if (eMUApkTableN != null) {
                                                    if (!com.join.android.app.common.utils.o.C(eMUApkTableN)) {
                                                        PlugInstallDialog_.intent(i4.this.f62369b).c(eMUApkTableN).a(this.f62385b).b(2).start();
                                                    } else {
                                                        PlugInstallDialog_.intent(i4.this.f62369b).c(eMUApkTableN).a(this.f62385b).start();
                                                        com.join.android.app.common.servcie.j.f().w(i4.this.f62369b, this.f62385b);
                                                    }
                                                }
                                            } else {
                                                UtilsMy.w4(this.f62385b, i4.this.f62369b);
                                            }
                                            break;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(this.f62385b, i4.this.f62369b);
                    return;
                }
                com.php25.PDownload.d.i(this.f62385b);
                return;
            }
            if (z11) {
                UtilsMy.s1(t6.p.o().n(this.f62385b.getPlugin_num()), i4.this.f62369b);
                return;
            }
            if (UtilsMy.y0(this.f62385b.getPay_game_amount(), this.f62385b.getCrc_link_type_val()) > 0) {
                UtilsMy.z4(i4.this.f62369b, this.f62385b.getCrc_link_type_val());
                return;
            }
            if (UtilsMy.o1(i4.this.f62369b, this.f62385b)) {
                return;
            }
            if (this.f62385b.getDown_status() == 5) {
                UtilsMy.l1(i4.this.f62369b, this.f62385b);
                return;
            }
            if (!TextUtils.isEmpty(this.f62385b.getUrl()) || i4.this.f62377j == null) {
                if (TextUtils.isEmpty(this.f62385b.getUrl()) && this.f62385b.getAd_info() != null) {
                    UtilsMy.U2(i4.this.f62369b, this.f62385b.getAd_info());
                    return;
                }
                Context context2 = i4.this.f62369b;
                DownloadTask downloadTask4 = this.f62385b;
                UtilsMy.U0(context2, downloadTask4, downloadTask4.getTp_down_url(), this.f62385b.getOther_down_switch(), this.f62385b.getCdn_down_switch());
                return;
            }
            i4.this.f62377j.set_from(152);
            i4.this.f62377j.set_from_type(152);
            i4 i4Var = i4.this;
            UtilsMy.U2(i4Var.f62369b, i4Var.f62377j);
            Ext ext = new Ext();
            ext.setGameId(this.f62385b.getCrc_link_type_val());
            com.papa.sim.statistic.t.l(i4.this.f62369b).R1(Event.clickGameDownload, ext);
        }
    }

    public interface e {
        void onAddShortcutClick(DownloadTask downloadTask);

        void onClick(String gameId, DownloadTask downloadTask);

        void onLongClick(String gameId);

        void onMore(String gameId, DownloadTask downloadTask);

        void onSpeedUp(String gameId);
    }

    class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f62390a;

        g() {
        }
    }

    public class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SimpleDraweeView f62392a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f62393b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f62394c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f62395d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f62396e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f62397f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f62398g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public DownloadNormalView f62399h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public View f62400i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public View f62401j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public View f62402k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public View f62403l;

        public h() {
        }
    }

    class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SimpleDraweeView f62405a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f62406b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SimpleDraweeView f62407c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f62408d;

        i() {
        }
    }

    public class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SimpleDraweeView f62410a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ProgressBar f62411b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f62412c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f62413d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f62414e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f62415f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f62416g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f62417h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f62418i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public View f62419j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public View f62420k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public View f62421l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public View f62422m;

        public j() {
        }
    }

    class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f62424a;

        k() {
        }
    }

    public i4(Context context) {
        this.f62369b = context;
    }

    private View A(int position, View convertView, ViewGroup parent) {
        com.join.mgps.base.b bVar;
        if (convertView != null) {
            bVar = (com.join.mgps.base.b) convertView.getTag();
        } else {
            convertView = LayoutInflater.from(this.f62369b).inflate(R.layout.item_my_cloud_game_banner, parent, false);
            convertView.setBackgroundColor(-1);
            bVar = new com.join.mgps.base.b(convertView);
            convertView.setTag(bVar);
        }
        t(bVar, (ArrayList) getItem(position));
        return convertView;
    }

    private View B(int position, View convertView, ViewGroup parent) {
        SimpleDraweeView simpleDraweeView;
        if (convertView != null) {
            simpleDraweeView = (SimpleDraweeView) convertView.getTag();
        } else {
            convertView = LayoutInflater.from(this.f62369b).inflate(R.layout.fragment_my_game_item_classic_hj_ad, parent, false);
            simpleDraweeView = (SimpleDraweeView) convertView.findViewById(R.id.classic_hj_ad_image);
            convertView.setTag(simpleDraweeView);
        }
        final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) getItem(position);
        if (commonGameInfoBean == null) {
            return convertView;
        }
        String onlineGAmeAdPic = commonGameInfoBean.getOnlineGAmeAdPic();
        if (!TextUtils.isEmpty(onlineGAmeAdPic)) {
            com.join.android.app.common.utils.l.o(simpleDraweeView, onlineGAmeAdPic);
        }
        convertView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.r3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f63104b.U(commonGameInfoBean, view);
            }
        });
        return convertView;
    }

    private View C(int position, View convertView, ViewGroup parent) {
        com.join.mgps.base.b bVar;
        if (convertView != null) {
            bVar = (com.join.mgps.base.b) convertView.getTag();
        } else {
            convertView = LayoutInflater.from(this.f62369b).inflate(R.layout.item_collection_seven_game_list, parent, false);
            convertView.setBackgroundColor(-1);
            bVar = new com.join.mgps.base.b(convertView);
            convertView.setTag(bVar);
        }
        f0(bVar, (CollectionSevenListBean) getItem(position));
        return convertView;
    }

    private View D(View convertView, ViewGroup parent) {
        if (convertView != null) {
            return convertView;
        }
        g gVar = new g();
        View viewInflate = LayoutInflater.from(this.f62369b).inflate(R.layout.fragment_my_game_item_cloud_title, parent, false);
        viewInflate.setTag(gVar);
        return viewInflate;
    }

    private View E(int position, View convertView, ViewGroup parent) {
        com.join.mgps.base.b bVar;
        if (convertView != null) {
            bVar = (com.join.mgps.base.b) convertView.getTag();
        } else {
            convertView = LayoutInflater.from(this.f62369b).inflate(R.layout.item_papa_cloud_game_title, parent, false);
            convertView.setBackgroundColor(-1);
            bVar = new com.join.mgps.base.b(convertView);
            convertView.setTag(bVar);
        }
        bVar.setText(R.id.tv_text, getItem(position) + "");
        return convertView;
    }

    private View F(View convertView, ViewGroup parent) {
        if (convertView != null) {
            return convertView;
        }
        View viewInflate = LayoutInflater.from(this.f62369b).inflate(R.layout.item_divier_20, parent, false);
        viewInflate.setBackgroundColor(-1);
        viewInflate.setTag(new com.join.mgps.base.b(viewInflate));
        return viewInflate;
    }

    private View G(View convertView, ViewGroup parent) {
        if (convertView != null) {
            return convertView;
        }
        View viewInflate = LayoutInflater.from(this.f62369b).inflate(R.layout.item_my_cloud_game_empty, parent, false);
        viewInflate.setBackgroundColor(-1);
        viewInflate.setTag(new com.join.mgps.base.b(viewInflate));
        return viewInflate;
    }

    private View H(int position, View convertView, ViewGroup parent) {
        g gVar;
        if (convertView != null) {
            gVar = (g) convertView.getTag();
        } else {
            g gVar2 = new g();
            View viewInflate = LayoutInflater.from(this.f62369b).inflate(R.layout.fragment_my_game_item_footer, parent, false);
            gVar2.f62390a = (TextView) viewInflate.findViewById(R.id.count);
            viewInflate.setTag(gVar2);
            gVar = gVar2;
            convertView = viewInflate;
        }
        int iIntValue = ((Integer) getItem(position)).intValue();
        gVar.f62390a.setText("共" + iIntValue + "款游戏");
        return convertView;
    }

    private View I(int position, View convertView, ViewGroup parent) {
        h hVar;
        if (convertView != null) {
            hVar = (h) convertView.getTag();
        } else {
            h hVar2 = new h();
            View viewInflate = LayoutInflater.from(this.f62369b).inflate(R.layout.fragment_my_game_item_game, parent, false);
            hVar2.f62392a = (SimpleDraweeView) viewInflate.findViewById(R.id.icon);
            hVar2.f62402k = viewInflate.findViewById(R.id.notOpen);
            hVar2.f62393b = (TextView) viewInflate.findViewById(R.id.desc);
            hVar2.f62394c = (TextView) viewInflate.findViewById(R.id.speedUp);
            hVar2.f62395d = (TextView) viewInflate.findViewById(R.id.addShortcut);
            hVar2.f62399h = (DownloadNormalView) viewInflate.findViewById(R.id.dv_install);
            hVar2.f62396e = (TextView) viewInflate.findViewById(R.id.name);
            hVar2.f62397f = (TextView) viewInflate.findViewById(R.id.count);
            hVar2.f62400i = viewInflate.findViewById(R.id.more);
            hVar2.f62401j = viewInflate.findViewById(R.id.focus);
            hVar2.f62398g = (TextView) viewInflate.findViewById(R.id.tv_archive_time);
            hVar2.f62403l = viewInflate;
            viewInflate.setTag(hVar2);
            hVar = hVar2;
            convertView = viewInflate;
        }
        DownloadTask downloadTask = (DownloadTask) getItem(position);
        if (downloadTask == null) {
            return convertView;
        }
        SimpleDraweeView simpleDraweeView = hVar.f62392a;
        if (simpleDraweeView.getTag() == null || !TextUtils.equals(simpleDraweeView.getTag().toString(), downloadTask.getPortraitURL())) {
            com.join.android.app.common.utils.l.o(simpleDraweeView, downloadTask.getPortraitURL());
            simpleDraweeView.setTag(downloadTask.getPortraitURL());
        }
        hVar.f62396e.setText(downloadTask.getShowName());
        if (downloadTask.getStatus() != 5 || downloadTask.isOpen()) {
            hVar.f62402k.setVisibility(8);
        } else {
            hVar.f62402k.setVisibility(0);
        }
        if (this.f62371d) {
            if (TextUtils.isEmpty(this.f62370c) || !this.f62370c.equals(downloadTask.getCrc_link_type_val())) {
                hVar.f62401j.setVisibility(8);
                hVar.f62401j.clearAnimation();
            } else {
                this.f62373f = position;
                t0(hVar.f62401j);
                this.f62371d = false;
            }
        } else if (this.f62373f != position) {
            hVar.f62401j.setVisibility(8);
            hVar.f62401j.clearAnimation();
        }
        if (com.join.mgps.Util.t2.i(downloadTask.getCloudArchiveTime())) {
            hVar.f62398g.setVisibility(0);
            hVar.f62398g.setText("上次存档：" + downloadTask.getCloudArchiveTime());
        } else {
            hVar.f62398g.setVisibility(8);
        }
        m0(hVar, downloadTask, position);
        if ((position >= this.f62375h.size() || !this.f62375h.get(position).f62389c) && v(downloadTask)) {
            hVar.f62394c.setVisibility(0);
            int iT1 = UtilsMy.t1(this.f62369b, downloadTask.getCrc_link_type_val());
            if (iT1 > 0) {
                hVar.f62397f.setVisibility(0);
                hVar.f62397f.setText(iT1 + "");
            } else {
                hVar.f62397f.setVisibility(8);
            }
            hVar.f62394c.setOnClickListener(new a(downloadTask));
        } else {
            hVar.f62394c.setVisibility(8);
            hVar.f62397f.setVisibility(8);
        }
        return convertView;
    }

    private View J(int position, View convertView, ViewGroup parent) {
        final i iVar;
        if (convertView != null) {
            iVar = (i) convertView.getTag();
        } else {
            i iVar2 = new i();
            View viewInflate = LayoutInflater.from(this.f62369b).inflate(R.layout.fragment_my_game_item_guess_like, parent, false);
            iVar2.f62405a = (SimpleDraweeView) viewInflate.findViewById(R.id.icon1);
            iVar2.f62406b = (SimpleDraweeView) viewInflate.findViewById(R.id.icon2);
            iVar2.f62407c = (SimpleDraweeView) viewInflate.findViewById(R.id.icon3);
            iVar2.f62408d = (TextView) viewInflate.findViewById(R.id.count);
            viewInflate.setTag(iVar2);
            iVar = iVar2;
            convertView = viewInflate;
        }
        convertView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.e4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f62057b.V(view);
            }
        });
        if (getItem(position) == null) {
            return convertView;
        }
        DataGameListBean dataGameListBean = (DataGameListBean) getItem(position);
        convertView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.f4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f62105b.W(iVar, view);
            }
        });
        List<GamedownRecomendItemBean> gameList = dataGameListBean.getGameList();
        SimpleDraweeView[] simpleDraweeViewArr = {iVar.f62407c, iVar.f62406b, iVar.f62405a};
        for (int i10 = 0; i10 < 3; i10++) {
            if (i10 >= gameList.size()) {
                simpleDraweeViewArr[i10].setVisibility(8);
            } else {
                simpleDraweeViewArr[i10].setVisibility(0);
                com.join.android.app.common.utils.l.h(simpleDraweeViewArr[i10], gameList.get(i10).getIco_remote());
            }
        }
        if ((gameList != null ? dataGameListBean.getGameCount() : 0) <= 3 || !this.f62372e) {
            iVar.f62408d.setVisibility(8);
        } else {
            iVar.f62408d.setVisibility(0);
        }
        return convertView;
    }

    private View K(int position, View convertView, ViewGroup parent) {
        j jVar;
        if (convertView != null) {
            jVar = (j) convertView.getTag();
        } else {
            j jVar2 = new j();
            View viewInflate = LayoutInflater.from(this.f62369b).inflate(R.layout.fragment_my_game_item_plug, parent, false);
            jVar2.f62410a = (SimpleDraweeView) viewInflate.findViewById(R.id.icon);
            jVar2.f62411b = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
            jVar2.f62412c = (TextView) viewInflate.findViewById(R.id.desc);
            jVar2.f62413d = (TextView) viewInflate.findViewById(R.id.speedUp);
            jVar2.f62415f = (TextView) viewInflate.findViewById(R.id.install);
            jVar2.f62416g = (TextView) viewInflate.findViewById(R.id.name);
            jVar2.f62419j = viewInflate.findViewById(R.id.more);
            jVar2.f62422m = viewInflate;
            viewInflate.setTag(jVar2);
            jVar = jVar2;
            convertView = viewInflate;
        }
        DownloadTask downloadTask = (DownloadTask) getItem(position);
        if (downloadTask == null) {
            return convertView;
        }
        com.join.android.app.common.utils.l.h(jVar.f62410a, downloadTask.getPortraitURL());
        jVar.f62416g.setText(downloadTask.getShowName());
        if (downloadTask.getStatus() == 8) {
            jVar.f62411b.setProgress((int) downloadTask.getProgress());
        } else {
            jVar.f62411b.setProgress(0);
        }
        u(jVar, downloadTask, position);
        return convertView;
    }

    private View L(int position, View convertView, ViewGroup parent) {
        k kVar;
        if (convertView != null) {
            kVar = (k) convertView.getTag();
        } else {
            k kVar2 = new k();
            View viewInflate = LayoutInflater.from(this.f62369b).inflate(R.layout.fragment_my_game_item_update, parent, false);
            kVar2.f62424a = (TextView) viewInflate.findViewById(R.id.count);
            viewInflate.setTag(kVar2);
            kVar = kVar2;
            convertView = viewInflate;
        }
        int iIntValue = ((Integer) getItem(position)).intValue();
        kVar.f62424a.setText(iIntValue + "款游戏需更新");
        convertView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.z3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                i4.X(view);
            }
        });
        return convertView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void O(ArrayList arrayList, int i10) {
        if (com.join.mgps.Util.t2.i(((CloudGameBanner) arrayList.get(i10)).getVip_url())) {
            IntentUtil.getInstance().goShareWebActivity(this.f62369b, ((CloudGameBanner) arrayList.get(i10)).getVip_url());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P(DownloadTask downloadTask, View view) {
        e eVar = this.f62376i;
        if (eVar != null) {
            eVar.onClick(downloadTask.getCrc_link_type_val(), downloadTask);
        } else if (downloadTask.getFileType() == null || !downloadTask.getFileType().equals(Dtype.chajian.name())) {
            IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(this.f62369b, downloadTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q(DownloadTask downloadTask, View view) {
        e eVar = this.f62376i;
        if (eVar != null) {
            eVar.onMore(downloadTask.getCrc_link_type_val(), downloadTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S(boolean z10, DownloadTask downloadTask, Dialog dialog, View view) {
        if (z10 && com.join.android.app.common.utils.g.t0(this.f62369b).e(this.f62369b, downloadTask.getPackageName())) {
            com.join.android.app.common.utils.g.t0(this.f62369b).o0(this.f62369b, downloadTask.getPackageName());
        } else {
            w(downloadTask);
            UtilsMy.U4(downloadTask);
            notifyDataSetChanged();
        }
        dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean T(final DownloadTask downloadTask, View view) {
        final boolean z10;
        e eVar = this.f62376i;
        if (eVar != null) {
            eVar.onLongClick(downloadTask.getCrc_link_type_val());
            return true;
        }
        final com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f62369b, R.style.MyDialog);
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
            if (com.join.android.app.common.utils.g.t0(this.f62369b).e(this.f62369b, downloadTask.getPackageName())) {
                textView2.setText("你确定要卸载该游戏？");
                button.setText("卸载");
            } else {
                textView2.setText("你确定要删除该游戏？");
                button.setText("删除");
            }
            z10 = true;
        }
        ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.t3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                tVar.dismiss();
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.u3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f63222b.S(z10, downloadTask, tVar, view2);
            }
        });
        tVar.show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U(CommonGameInfoBean commonGameInfoBean, View view) {
        try {
            IntentUtil.getInstance().intentActivity(this.f62369b, commonGameInfoBean.getIntentDataBean());
            com.papa.sim.statistic.t.l(this.f62369b).R1(Event.commonClick, commonGameInfoBean.getExtBean().copy().buildScene().toExt());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V(View view) {
        MyGameGuesslikeActivity_.intent(view.getContext()).start();
        Context context = this.f62369b;
        if (context instanceof MGMainActivity) {
            com.papa.sim.statistic.t.l(context).R1(Event.onclickTabGuessuLike, new Ext());
        }
        Context context2 = this.f62369b;
        if (context2 instanceof MyGameManagerActivity) {
            com.papa.sim.statistic.t.l(context2).R1(Event.onclickCentreGuessuLike, new Ext());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void W(i iVar, View view) {
        MyGameGuesslikeActivity_.intent(view.getContext()).start();
        Context context = this.f62369b;
        if (context instanceof MGMainActivity) {
            com.papa.sim.statistic.t.l(context).R1(Event.onclickTabGuessuLike, new Ext());
        }
        Context context2 = this.f62369b;
        if (context2 instanceof MyGameManagerActivity) {
            com.papa.sim.statistic.t.l(context2).R1(Event.onclickCentreGuessuLike, new Ext());
        }
        this.f62372e = false;
        iVar.f62408d.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void X(View view) {
        MyGameUpdateManagerActivity_.intent(view.getContext()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y(CommonGameInfoBean commonGameInfoBean, View view) {
        IntentUtil.getInstance().intentActivity(this.f62369b, commonGameInfoBean.getIntentDataBean());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z(boolean z10, DownloadTask downloadTask, Dialog dialog, View view) {
        if (z10 && com.join.android.app.common.utils.g.t0(this.f62369b).e(this.f62369b, downloadTask.getPackageName())) {
            com.join.android.app.common.utils.g.t0(this.f62369b).o0(this.f62369b, downloadTask.getPackageName());
        } else {
            w(downloadTask);
            UtilsMy.U4(downloadTask);
            notifyDataSetChanged();
        }
        dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a0(final DownloadTask downloadTask, View view) {
        final boolean z10;
        e eVar = this.f62376i;
        if (eVar != null) {
            eVar.onLongClick(downloadTask.getCrc_link_type_val());
            return true;
        }
        final com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f62369b, R.style.MyDialog);
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
            if (com.join.android.app.common.utils.g.t0(this.f62369b).e(this.f62369b, downloadTask.getPackageName())) {
                textView2.setText("你确定要卸载该游戏？");
                button.setText("卸载");
            } else {
                textView2.setText("你确定要删除该游戏？");
                button.setText("删除");
            }
            z10 = true;
        }
        ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.v3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                tVar.dismiss();
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.w3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f63349b.Z(z10, downloadTask, tVar, view2);
            }
        });
        tVar.show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b0(DownloadTask downloadTask, View view) {
        e eVar = this.f62376i;
        if (eVar != null) {
            eVar.onClick(downloadTask.getCrc_link_type_val(), downloadTask);
        } else if (downloadTask.getFileType() == null || !downloadTask.getFileType().equals(Dtype.chajian.name())) {
            IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(this.f62369b, downloadTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c0(DownloadTask downloadTask, View view) {
        e eVar = this.f62376i;
        if (eVar != null) {
            eVar.onMore(downloadTask.getCrc_link_type_val(), downloadTask);
        }
    }

    private void f0(com.join.mgps.base.b helper, CollectionSevenListBean bean) {
        if (bean.getItem() == null || !(bean.getItem() instanceof CommonGameInfoBean)) {
            helper.itemView.setVisibility(8);
            return;
        }
        final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) bean.getItem();
        GInfoBean g_info = commonGameInfoBean.getG_info();
        if (g_info == null) {
            helper.itemView.setVisibility(8);
            return;
        }
        helper.itemView.setVisibility(0);
        ((DownloadNormalView) helper.getView(R.id.dv_view)).f(new m6.c(this.f62369b, commonGameInfoBean));
        helper.setText(R.id.tv_text_1, g_info.getName());
        helper.setText(R.id.tv_text_3, UtilsMy.R1(commonGameInfoBean.getSpTagInfo(), g_info.getTag_info(), " | "));
        helper.setText(R.id.tv_text_2, commonGameInfoBean.getShowScore());
        helper.setText(R.id.tv_text_5, TextUtils.isEmpty(g_info.getInfo()) ? "" : g_info.getInfo());
        if (commonGameInfoBean.giftSwitch()) {
            helper.setGone(R.id.iv_1, true);
        } else {
            helper.setGone(R.id.iv_1, false);
        }
        com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.sdv_image), TextUtils.isEmpty(g_info.getGif_ico()) ? g_info.getIco() : g_info.getGif_ico());
        if (!TextUtils.isEmpty(g_info.getApp_size())) {
            if (g_info.isHmCloud()) {
                helper.setGone(R.id.tv_text_4, false);
            } else {
                helper.setGone(R.id.tv_text_4, true);
            }
            try {
                long j10 = (long) (Double.parseDouble(g_info.getApp_size()) * 1024.0d * 1024.0d);
                if (j10 > 0) {
                    helper.setText(R.id.tv_text_4, UtilsMy.c(j10));
                }
            } catch (Exception unused) {
            }
        }
        if (commonGameInfoBean.isH5Game()) {
            helper.setGone(R.id.g_1, false);
            helper.setGone(R.id.tv_text_3, false);
            helper.setGone(R.id.tv_text_4, false);
        } else {
            helper.setGone(R.id.g_1, true);
            helper.setGone(R.id.tv_text_3, true);
            helper.setGone(R.id.tv_text_4, true);
        }
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.x3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f63859b.Y(commonGameInfoBean, view);
            }
        });
    }

    private void t(com.join.mgps.base.b helper, final ArrayList<CloudGameBanner> items) {
        try {
            Banner banner = (Banner) helper.getView(R.id.banner);
            ArrayList arrayList = new ArrayList();
            Iterator<CloudGameBanner> it2 = items.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().getPic_path());
            }
            if (TextUtils.equals((CharSequence) banner.getTag(), "personal_banner")) {
                return;
            }
            banner.z(arrayList).y(new GlideImageLoader()).D(new ya.b() { // from class: com.join.mgps.adapter.y3
                @Override // ya.b
                public final void OnBannerClick(int i10) {
                    this.f63983b.O(items, i10);
                }
            });
            banner.setTag("personal_banner");
            if (items.size() > 0) {
                banner.I();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public boolean M() {
        return this.f62371d;
    }

    public boolean N() {
        return this.f62372e;
    }

    void g0() {
        List<DownloadTask> listA0 = q5.f.M().a0(this.f62369b);
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
                this.f62370c = downloadTask.getCrc_link_type_val();
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
            this.f62370c = downloadTask.getCrc_link_type_val();
        } else {
            this.f62370c = "";
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<f> list = this.f62375h;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        if (position < this.f62375h.size()) {
            return this.f62375h.get(position).a();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return position < this.f62375h.size() ? this.f62375h.get(position).b() : super.getItemViewType(position);
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == 0) {
            return L(position, convertView, parent);
        }
        if (itemViewType == 1) {
            return J(position, convertView, parent);
        }
        if (itemViewType == 2) {
            return I(position, convertView, parent);
        }
        if (itemViewType == 4) {
            return K(position, convertView, parent);
        }
        if (itemViewType == 3) {
            return H(position, convertView, parent);
        }
        if (itemViewType == 5) {
            return I(position, convertView, parent);
        }
        if (itemViewType == 6) {
            return I(position, convertView, parent);
        }
        if (itemViewType == 7) {
            return D(convertView, parent);
        }
        if (itemViewType == 8) {
            return C(position, convertView, parent);
        }
        if (itemViewType == 9) {
            return G(convertView, parent);
        }
        if (itemViewType == 10) {
            return A(position, convertView, parent);
        }
        if (itemViewType == 11) {
            return F(convertView, parent);
        }
        if (itemViewType == 12) {
            return E(position, convertView, parent);
        }
        if (itemViewType == 13) {
            return B(position, convertView, parent);
        }
        return null;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 14;
    }

    public void h0(CommonGameInfoBean adAppBean) {
        this.f62377j = adAppBean;
    }

    public void i0(boolean canShowHighlight) {
        this.f62371d = canShowHighlight;
    }

    public void j0(boolean canShowRecommBadge) {
        this.f62372e = canShowRecommBadge;
    }

    public void k0(String corner_mark_pic) {
        this.f62378k = corner_mark_pic;
    }

    void l0(TextView textView, int number) {
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

    void m0(h holder, final DownloadTask downloadTask, int position) {
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.w0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
            status = 43;
        }
        if (status == 8) {
            holder.f62393b.setText(downloadTask.getProgress() + "% · " + downloadTask.getSpeed());
        } else if (status == 12) {
            holder.f62393b.setText("解压中...");
        } else if (status != 13) {
            String strU1 = UtilsMy.U1(downloadTask);
            if (downloadTask.getSp_tag_info() != null && downloadTask.getSp_tag_info().getModel() != null) {
                strU1 = downloadTask.getSp_tag_info().getModel().getName();
            }
            if (downloadTask.isCloudGame()) {
                holder.f62393b.setText(UtilsMy.T1(downloadTask.getSp_tag_info(), downloadTask.getTipBeans(), " · "));
            } else {
                holder.f62393b.setText(strU1);
            }
            holder.f62393b.setTextColor(Color.parseColor("#FFA8A8A8"));
        } else {
            holder.f62393b.setText("解压失败");
            holder.f62393b.setTextColor(Color.parseColor("#FFFF4D4D"));
        }
        holder.f62403l.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.b4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f61258b.b0(downloadTask, view);
            }
        });
        holder.f62400i.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.c4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f61375b.c0(downloadTask, view);
            }
        });
        holder.f62403l.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.join.mgps.adapter.d4
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f61894b.a0(downloadTask, view);
            }
        });
        p0(holder, downloadTask);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0033  */
    /* JADX WARN: Code duplicated, block: B:57:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:59:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:60:0x0211  */
    /* JADX WARN: Code duplicated, block: B:63:0x0236 A[Catch: Exception -> 0x0288, TryCatch #0 {Exception -> 0x0288, blocks: (B:61:0x022c, B:63:0x0236, B:65:0x027d, B:64:0x025a), top: B:84:0x022c }] */
    /* JADX WARN: Code duplicated, block: B:64:0x025a A[Catch: Exception -> 0x0288, TryCatch #0 {Exception -> 0x0288, blocks: (B:61:0x022c, B:63:0x0236, B:65:0x027d, B:64:0x025a), top: B:84:0x022c }] */
    /* JADX WARN: Code duplicated, block: B:77:0x032f  */
    /* JADX WARN: Code duplicated, block: B:79:0x035d  */
    /* JADX WARN: Code duplicated, block: B:80:0x0360  */
    /* JADX WARN: Instruction removed from duplicated block: B:63:0x0236, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:64:0x025a, please report this as an issue */
    void n0(j holder, DownloadTask downloadTask, int position) {
        boolean z10;
        String str;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getPlugin_num() != null) {
            if (downloadTask.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        boolean z11 = downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.chajian.name());
        if (downloadTask.getFileType() != null) {
            downloadTask.getFileType().equals(Dtype.android.name());
        }
        holder.f62415f.setVisibility(0);
        holder.f62415f.setEnabled(true);
        if (z10) {
            o0(holder.f62415f, downloadTask);
        } else {
            int status = downloadTask.getStatus();
            long j10 = (long) (Double.parseDouble(downloadTask.getShowSize()) * 1024.0d * 1024.0d);
            if (UtilsMy.w0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
                status = 43;
            }
            if (status == 0) {
                holder.f62415f.setBackgroundResource(R.drawable.recom_blue_butn);
                UtilsMy.w0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val());
                TextView textView = holder.f62415f;
                UtilsMy.n3(textView, textView, downloadTask);
                holder.f62415f.setTextColor(this.f62369b.getResources().getColor(R.color.app_blue_color));
                TextView textView2 = holder.f62415f;
                if (getItemViewType(position) == 5) {
                    str = "试玩";
                } else {
                    str = "获取";
                }
                textView2.setText(str);
            } else if (status == 27) {
                holder.f62415f.setText("暂停中");
            } else if (status == 48) {
                holder.f62415f.setBackgroundResource(R.drawable.recom_blue_butn);
                holder.f62415f.setText("安装中");
                holder.f62415f.setTextColor(this.f62369b.getResources().getColor(R.color.app_blue_color));
            } else if (status == 2) {
                UtilsMy.U4(downloadTask);
                holder.f62415f.setBackgroundResource(R.drawable.recom_blue_butn);
                holder.f62415f.setText("暂停");
                holder.f62415f.setTextColor(this.f62369b.getResources().getColor(R.color.app_blue_color));
                if (downloadTask.getSize() == 0) {
                    holder.f62412c.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                } else {
                    holder.f62412c.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                }
                holder.f62411b.setProgress((int) downloadTask.getProgress());
            } else if (status == 3) {
                holder.f62415f.setBackgroundResource(R.drawable.recom_blue_butn);
                holder.f62415f.setText("继续");
                holder.f62415f.setTextColor(this.f62369b.getResources().getColor(R.color.app_blue_color));
                try {
                    if (downloadTask.getSize() == 0) {
                        holder.f62412c.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    } else {
                        holder.f62412c.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    }
                    holder.f62411b.setProgress((int) downloadTask.getProgress());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                holder.f62412c.setText("暂停中");
            } else if (status == 5) {
                holder.f62415f.setBackgroundResource(R.drawable.recom_maincolor_butn);
                holder.f62415f.setText(this.f62369b.getResources().getString(R.string.download_status_finished));
                holder.f62415f.setTextColor(this.f62369b.getResources().getColor(R.color.app_main_color));
                if (z11) {
                    holder.f62413d.setVisibility(8);
                    holder.f62415f.setText("已安装");
                    holder.f62415f.setBackgroundResource(R.drawable.recom_grey_butn);
                    holder.f62415f.setEnabled(false);
                    holder.f62415f.setTextColor(Color.parseColor("#A1A1A1"));
                }
            } else if (status == 6) {
                holder.f62415f.setBackgroundResource(R.drawable.recom_blue_butn);
                holder.f62415f.setText("继续");
                holder.f62415f.setTextColor(this.f62369b.getResources().getColor(R.color.app_blue_color));
                if (downloadTask.getSize() == 0) {
                    holder.f62412c.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                } else {
                    holder.f62412c.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                }
                holder.f62411b.setProgress((int) downloadTask.getProgress());
                holder.f62412c.setText("暂停中");
            } else if (status == 7) {
                holder.f62415f.setBackgroundResource(R.drawable.recom_blue_butn);
                UtilsMy.w0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val());
                TextView textView3 = holder.f62415f;
                UtilsMy.n3(textView3, textView3, downloadTask);
                holder.f62415f.setTextColor(this.f62369b.getResources().getColor(R.color.app_blue_color));
                TextView textView4 = holder.f62415f;
                if (getItemViewType(position) == 5) {
                    str = "试玩";
                } else {
                    str = "获取";
                }
                textView4.setText(str);
            } else if (status == 42) {
                holder.f62415f.setBackgroundResource(R.drawable.recom_maincolor_butn);
                holder.f62415f.setText(this.f62369b.getResources().getString(R.string.download_status_finished));
                holder.f62415f.setTextColor(this.f62369b.getResources().getColor(R.color.app_main_color));
                if (z11) {
                    holder.f62413d.setVisibility(8);
                    holder.f62415f.setText("已安装");
                    holder.f62415f.setBackgroundResource(R.drawable.recom_grey_butn);
                    holder.f62415f.setEnabled(false);
                    holder.f62415f.setTextColor(Color.parseColor("#A1A1A1"));
                }
            } else if (status != 43) {
                switch (status) {
                    case 9:
                        holder.f62415f.setBackgroundResource(R.drawable.recom_green_butn);
                        holder.f62415f.setText("更新");
                        holder.f62415f.setTextColor(this.f62369b.getResources().getColor(R.color.app_green_color));
                        break;
                    case 10:
                        holder.f62415f.setBackgroundResource(R.drawable.recom_blue_butn);
                        holder.f62415f.setText("等待");
                        holder.f62415f.setTextColor(this.f62369b.getResources().getColor(R.color.app_blue_color));
                        holder.f62412c.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        try {
                            holder.f62411b.setProgress((int) downloadTask.getProgress());
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                        holder.f62412c.setText("等待中");
                        break;
                    case 11:
                        holder.f62415f.setBackgroundResource(R.drawable.recom_green_butn);
                        holder.f62415f.setText("安装");
                        holder.f62415f.setTextColor(this.f62369b.getResources().getColor(R.color.app_green_color));
                        break;
                    case 12:
                        holder.f62412c.setText("解压中..");
                        holder.f62411b.setProgress((int) downloadTask.getProgress());
                        holder.f62415f.setBackgroundResource(R.drawable.extract);
                        holder.f62415f.setText("解压中");
                        holder.f62415f.setTextColor(-4868683);
                        break;
                    case 13:
                        holder.f62412c.setText("点击重新解压");
                        holder.f62411b.setProgress((int) downloadTask.getProgress());
                        holder.f62415f.setBackgroundResource(R.drawable.reextract);
                        holder.f62415f.setText("解压");
                        holder.f62415f.setTextColor(this.f62369b.getResources().getColor(R.color.app_grey_color));
                        break;
                }
            } else {
                holder.f62415f.setBackgroundResource(R.drawable.recom_blue_butn);
                UtilsMy.w0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val());
                TextView textView5 = holder.f62415f;
                UtilsMy.n3(textView5, textView5, downloadTask);
                holder.f62415f.setTextColor(this.f62369b.getResources().getColor(R.color.app_blue_color));
                TextView textView6 = holder.f62415f;
                if (getItemViewType(position) == 5) {
                    str = "试玩";
                } else {
                    str = "获取";
                }
                textView6.setText(str);
            }
        }
        holder.f62415f.setOnClickListener(new d(downloadTask));
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        g0();
        super.notifyDataSetChanged();
    }

    void o0(TextView view, DownloadTask downloadTask) {
        if (downloadTask == null || TextUtils.isEmpty(downloadTask.getPlugin_num())) {
            return;
        }
        if (downloadTask.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
            view.setBackgroundResource(R.drawable.recom_blue_butn);
            view.setText("开始");
            view.setTextColor(this.f62369b.getResources().getColor(R.color.app_blue_color));
            view.setOnClickListener(new d(downloadTask));
        }
    }

    void p0(h holder, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        DownloadNormalView downloadNormalView = holder.f62399h;
        if (downloadNormalView instanceof DownloadNormalView) {
            downloadNormalView.f(new m6.c(this.f62369b, downloadTask));
        }
    }

    public void q0(List<f> items) {
        if (items == null) {
            return;
        }
        this.f62375h.clear();
        if (items.size() > 0) {
            this.f62375h.addAll(items);
        }
    }

    public void r0(e onGameClickListener) {
        this.f62376i = onGameClickListener;
    }

    public void s0(int scene) {
        this.f62374g = scene;
    }

    public void t0(View view) {
        if (view == null) {
            return;
        }
        final AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(2000L);
        alphaAnimation.setAnimationListener(new b(view));
        view.setAnimation(alphaAnimation);
        view.postDelayed(new Runnable() { // from class: com.join.mgps.adapter.a4
            @Override // java.lang.Runnable
            public final void run() {
                alphaAnimation.start();
            }
        }, 150L);
    }

    void u(j holder, final DownloadTask downloadTask, int position) {
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.w0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
            status = 43;
        }
        if (status == 8) {
            holder.f62412c.setText(downloadTask.getProgress() + "% · " + downloadTask.getSpeed());
        } else if (status == 12) {
            holder.f62412c.setText("解压中...");
        } else if (status != 13) {
            String strU1 = UtilsMy.U1(downloadTask);
            if (downloadTask.getSp_tag_info() != null && downloadTask.getSp_tag_info().getModel() != null) {
                strU1 = downloadTask.getSp_tag_info().getModel().getName();
            }
            if (downloadTask.isCloudGame()) {
                holder.f62412c.setText(UtilsMy.T1(downloadTask.getSp_tag_info(), downloadTask.getTipBeans(), " · "));
            } else {
                holder.f62412c.setText(strU1);
            }
            holder.f62412c.setTextColor(Color.parseColor("#FFA8A8A8"));
        } else {
            holder.f62412c.setText("解压失败");
            holder.f62412c.setTextColor(Color.parseColor("#FFFF4D4D"));
        }
        holder.f62422m.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.g4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f62208b.P(downloadTask, view);
            }
        });
        holder.f62419j.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.h4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f62251b.Q(downloadTask, view);
            }
        });
        holder.f62422m.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.join.mgps.adapter.s3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f63132b.T(downloadTask, view);
            }
        });
        n0(holder, downloadTask, position);
    }

    boolean v(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return false;
        }
        if (downloadTask.getStatus() != 2 && downloadTask.getStatus() != 3) {
            return false;
        }
        if (UtilsMy.q2(this.f62369b, downloadTask.getCrc_link_type_val()) || new PrefDef_(this.f62369b).downloadSpeedUpGameSize().d().intValue() > downloadTask.getActual_size()) {
            return false;
        }
        return TextUtils.isEmpty(downloadTask.getFileType()) || !downloadTask.getFileType().equals(Dtype.chajian.name());
    }

    public void w(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.php25.PDownload.d.a(downloadTask);
        try {
            if (!TextUtils.isEmpty(downloadTask.getRomType()) && (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name()))) {
                new c(downloadTask).start();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        x(downloadTask);
    }

    public void x(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        try {
            Iterator<f> it2 = this.f62375h.iterator();
            while (it2.hasNext()) {
                f next = it2.next();
                if (next.b() == 2 || next.b() == 5) {
                    if (next.b() == 6 && ((DownloadTask) next.a()).getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                        it2.remove();
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        notifyDataSetChanged();
    }

    public List<f> y() {
        if (this.f62375h == null) {
            this.f62375h = new ArrayList();
        }
        return this.f62375h;
    }

    public e z() {
        return this.f62376i;
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f62387a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f62388b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f62389c;

        public f(int viewType, Object obj) {
            this.f62387a = viewType;
            this.f62388b = obj;
        }

        public Object a() {
            return this.f62388b;
        }

        public int b() {
            return this.f62387a;
        }

        public boolean c() {
            return this.f62389c;
        }

        public void d(boolean canShowShortcut) {
            this.f62389c = canShowShortcut;
        }

        public void e(Object obj) {
            this.f62388b = obj;
        }

        public void f(int viewType) {
            this.f62387a = viewType;
        }

        public f(int viewType, Object obj, boolean canShowShortcut) {
            this.f62387a = viewType;
            this.f62388b = obj;
            this.f62389c = canShowShortcut;
        }
    }
}

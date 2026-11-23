package com.join.mgps.fragment;

import android.content.Context;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionDataBeanInfo;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import java.io.File;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.collection_three_item)
public class s extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f70813c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f70814d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    TextView f70815e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    TextView f70816f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    Button f70817g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    RelativeLayout f70818h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f70819i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    ImageView f70820j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    TextView f70821k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    ProgressBar f70822l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Context f70823m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private CollectionDataBeanInfo f70824n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private CollectionBeanSub f70825o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private DownloadTask f70826p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    com.join.mgps.rpc.e f70827q;

    @Receiver(actions = {p5.a.G, p5.a.I})
    void M(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        updateButn();
    }

    void N(int p10) {
        this.f70822l.setProgress(p10);
        this.f70821k.setText(p10 + "%");
    }

    public void O(CollectionDataBeanInfo data) {
        this.f70824n = data;
        this.f70825o = data.getSub().get(0);
    }

    @UiThread
    void P() {
        if (this.f70825o != null) {
            com.join.android.app.common.utils.l.h(this.f70813c, this.f70824n.getMain().getTpl_pic());
            com.join.android.app.common.utils.l.f(this.f70814d, R.drawable.main_normal_icon, this.f70825o.getIco_remote(), com.join.android.app.common.utils.l.E(this.f70823m));
            this.f70816f.setText(this.f70825o.getGame_name());
            this.f70815e.setText(this.f70825o.getInfo());
        }
        updateButn();
    }

    @AfterViews
    void afterViews() {
        this.f70827q = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.Util.j0.a().d(this);
        this.f70823m = getActivity();
        if (this.f70825o != null) {
            DownloadTask downloadTaskG = q5.f.M().G(this.f70825o.getGame_id());
            this.f70826p = downloadTaskG;
            if (downloadTaskG == null) {
                this.f70826p = this.f70825o.buildDownloadTask();
                if (UtilsMy.p0(this.f70825o.getTag_info())) {
                    this.f70826p.setFileType(Dtype.android.name());
                    if (com.join.android.app.common.utils.g.t0(this.f70823m).e(this.f70823m, this.f70825o.getPackage_name())) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f70823m).n(this.f70823m, this.f70825o.getPackage_name());
                        if (!com.join.mgps.Util.t2.i(this.f70825o.getVer()) || aVarN.d() >= Integer.parseInt(this.f70825o.getVer())) {
                            this.f70826p.setStatus(5);
                        } else {
                            this.f70826p.setStatus(9);
                        }
                    } else {
                        this.f70826p.setStatus(0);
                    }
                } else {
                    this.f70826p.setStatus(0);
                }
            } else {
                downloadTaskG.setScreenshot_pic(this.f70825o.getScreenshot_pic());
            }
        }
        P();
    }

    @Click
    void instalButtomButn() {
        DownloadTask downloadTask = this.f70826p;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.f70826p != null && UtilsMy.x0(this.f70825o.getPay_tag_info(), this.f70825o.getCrc_sign_id()) > 0) {
            status = 43;
        }
        DownloadTask downloadTask2 = this.f70826p;
        if (downloadTask2 == null) {
            return;
        }
        if (downloadTask2 != null && (status == 2 || status == 10)) {
            downloadTask2.setStatus(3);
            com.php25.PDownload.d.i(this.f70826p);
        } else {
            if (status == 12) {
                return;
            }
            if (status == 13) {
                com.php25.PDownload.d.l(getActivity(), this.f70826p);
                return;
            }
            if (status == 5) {
                UtilsMy.k4(this.f70823m, downloadTask2);
            } else if (status == 9) {
                if (!com.join.android.app.common.utils.m.j(this.f70823m)) {
                    com.join.mgps.Util.a3.b(this.f70823m).d("无网络连接");
                    return;
                }
                int downloadType = this.f70826p.getDownloadType();
                if (downloadType == 0 || downloadType == 1) {
                    if (this.f70826p.getCrc_link_type_val() == null || this.f70826p.getCrc_link_type_val().equals("")) {
                        return;
                    }
                    DownloadTask downloadTask3 = this.f70826p;
                    UtilsMy.W4(downloadTask3, downloadTask3.getCrc_link_type_val());
                    com.php25.PDownload.d.b(this.f70826p);
                    this.f70826p.setVer(this.f70825o.getVer());
                    this.f70826p.setVer_name(this.f70825o.getVer_name());
                    this.f70826p.setUrl(this.f70825o.getDown_url_remote());
                    this.f70826p.setCfg_ver(this.f70825o.getCfg_ver());
                    this.f70826p.setCfg_ver_name(this.f70825o.getCfg_ver_name());
                    this.f70826p.setCfg_down_url(this.f70825o.getCfg_down_url());
                    if (UtilsMy.z0(this.f70825o.getPay_tag_info(), this.f70825o.getCrc_sign_id()) > 0) {
                        UtilsMy.z4(getActivity(), this.f70826p.getCrc_link_type_val());
                    } else {
                        UtilsMy.z1(this.f70826p, this.f70825o);
                        if (!UtilsMy.o1(this.f70823m, this.f70826p)) {
                            if (this.f70825o.getDown_status() == 5) {
                                UtilsMy.l1(this.f70823m, this.f70826p);
                            } else {
                                UtilsMy.U0(this.f70823m, this.f70826p, this.f70825o.getTp_down_url(), this.f70825o.getOther_down_switch(), this.f70825o.getCdn_down_switch());
                            }
                        }
                    }
                } else if (downloadType == 2) {
                    UtilsMy.R4(this.f70826p);
                }
            } else if (status == 42) {
                if (downloadTask2.getCrc_link_type_val() == null || this.f70826p.getCrc_link_type_val().equals("")) {
                    return;
                }
                DownloadTask downloadTask4 = this.f70826p;
                UtilsMy.W4(downloadTask4, downloadTask4.getCrc_link_type_val());
                this.f70826p.setVer(this.f70825o.getVer());
                this.f70826p.setVer_name(this.f70825o.getVer_name());
                this.f70826p.setUrl(this.f70825o.getDown_url_remote());
                this.f70826p.setCfg_ver(this.f70825o.getCfg_ver());
                this.f70826p.setCfg_ver_name(this.f70825o.getCfg_ver_name());
                this.f70826p.setCfg_down_url(this.f70825o.getCfg_down_url());
                UtilsMy.O4(this.f70823m, this.f70826p);
            } else if (11 == status) {
                UtilsMy.w4(downloadTask2, this.f70823m);
            } else {
                if (UtilsMy.z0(this.f70825o.getPay_tag_info(), this.f70825o.getCrc_sign_id()) > 0) {
                    UtilsMy.z4(getActivity(), this.f70826p.getCrc_link_type_val());
                } else {
                    UtilsMy.z1(this.f70826p, this.f70825o);
                    if (!UtilsMy.o1(this.f70823m, this.f70826p)) {
                        if (this.f70825o.getDown_status() == 5) {
                            UtilsMy.l1(this.f70823m, this.f70826p);
                        } else {
                            UtilsMy.U0(this.f70823m, this.f70826p, this.f70825o.getTp_down_url(), this.f70825o.getOther_down_switch(), this.f70825o.getCdn_down_switch());
                        }
                    }
                }
                this.f70826p.setStatus(2);
            }
        }
        updateButn();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0064  */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        if (downloadTaskA != null && this.f70826p != null && downloadTaskA.getCrc_link_type_val().equals(this.f70826p.getCrc_link_type_val())) {
            this.f70826p = downloadTaskA;
            int iC = downloadTaskEvent.c();
            if (iC == 5) {
                if (this.f70826p != null && downloadTaskA.getCrc_link_type_val().equals(this.f70826p.getCrc_link_type_val())) {
                    this.f70826p = downloadTaskA;
                }
            } else if (iC == 8) {
                DownloadTask downloadTask = this.f70826p;
                if (downloadTask != null && downloadTask.getPath() != null) {
                    UtilsMy.U4(this.f70826p);
                    this.f70822l.setProgress((int) this.f70826p.getProgress());
                    this.f70821k.setText(this.f70826p.getProgress() + "%");
                    return;
                }
            } else if (iC == 11) {
                if (this.f70826p != null) {
                    this.f70826p = downloadTaskA;
                }
            }
        }
        updateButn();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        DownloadTask downloadTaskG = q5.f.M().G(this.f70825o.getGame_id());
        if (downloadTaskG == null || this.f70826p == null) {
            return;
        }
        this.f70826p = downloadTaskG;
        if (!downloadTaskG.getFileType().equals(Dtype.android.name()) || this.f70826p.getStatus() != 5) {
            this.f70826p.setStatus(downloadTaskG.getStatus());
        } else if (Boolean.valueOf(com.join.android.app.common.utils.g.t0(this.f70823m).e(this.f70823m, this.f70826p.getPackageName())).booleanValue()) {
            APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f70823m).n(this.f70823m, this.f70826p.getPackageName());
            if (!com.join.mgps.Util.t2.i(this.f70826p.getVer()) || aVarN.d() >= Integer.parseInt(this.f70826p.getVer())) {
                this.f70826p.setStatus(5);
            } else {
                this.f70826p.setStatus(9);
            }
        } else {
            this.f70826p.setStatus(11);
        }
        updateButn();
    }

    @Click
    void progress_layout() {
        DownloadTask downloadTask = this.f70826p;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            this.f70826p.setStatus(3);
            com.php25.PDownload.d.i(this.f70826p);
            updateButn();
        } else if (this.f70826p.getStatus() == 3 || this.f70826p.getStatus() == 6) {
            com.php25.PDownload.d.c(this.f70826p, this.f70823m);
            this.f70826p.setStatus(2);
            updateButn();
        }
    }

    @UiThread
    void showInstallButn() {
        this.f70819i.setVisibility(0);
        this.f70818h.setVisibility(8);
    }

    @UiThread
    void showProgress() {
        this.f70819i.setVisibility(8);
        this.f70818h.setVisibility(0);
    }

    @UiThread
    void updateButn() {
        if (this.f70825o == null || this.f70826p == null) {
            return;
        }
        this.f70817g.setBackgroundResource(R.drawable.detial_simple_install_selecter);
        DownloadTask downloadTask = this.f70826p;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.x0(this.f70825o.getPay_tag_info(), this.f70825o.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (this.f70826p.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
            this.f70817g.setBackgroundResource(R.drawable.recom_blue_butn);
            this.f70817g.setText("开始");
            this.f70817g.setTextColor(getResources().getColor(R.color.app_blue_color));
            return;
        }
        if (status == 12) {
            showInstallButn();
            this.f70817g.setText("解压中..");
            this.f70817g.setTextColor(-1);
            this.f70820j.setImageResource(R.drawable.extract);
            return;
        }
        if (status == 13) {
            showInstallButn();
            this.f70817g.setText("解压");
            this.f70817g.setTextColor(-1);
            this.f70820j.setImageResource(R.drawable.reextract);
            return;
        }
        if (status == 9) {
            showInstallButn();
            this.f70817g.setText("更新");
            this.f70817g.setTextColor(-1);
            this.f70820j.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 11) {
            showInstallButn();
            this.f70817g.setText("安装");
            this.f70820j.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 5 || status == 42) {
            showInstallButn();
            this.f70817g.setBackgroundResource(R.drawable.detial_simple_open_selecter);
            this.f70817g.setText(this.f70823m.getResources().getString(R.string.download_status_finished));
            this.f70817g.setTextColor(-1);
            this.f70820j.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 2) {
            showProgress();
            this.f70820j.setImageResource(R.drawable.detail_comment_download_pause);
            if (new File(this.f70826p.getPath()).exists()) {
                int iJ = (int) com.php25.PDownload.d.j(this.f70826p.getPath(), this.f70826p.getSize());
                this.f70822l.setProgress(iJ);
                this.f70821k.setText(iJ + "%");
                return;
            }
            return;
        }
        if (status == 3) {
            showProgress();
            this.f70820j.setImageResource(R.drawable.detail_comment_download_continue);
            if (new File(this.f70826p.getPath()).exists()) {
                N((int) com.php25.PDownload.d.j(this.f70826p.getPath(), this.f70826p.getSize()));
                return;
            }
            return;
        }
        if (status == 10) {
            showInstallButn();
            this.f70817g.setText("等待\u3000" + this.f70825o.getSize() + "M");
            this.f70817g.setTextColor(-1);
            this.f70820j.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 43) {
            showInstallButn();
            if (this.f70825o.getPay_tag_info() == null || this.f70825o.getPay_tag_info().getPay_game_amount() <= 0 || t6.e0.o().p(this.f70825o.getCrc_sign_id())) {
                this.f70817g.setText(this.f70823m.getResources().getString(R.string.download_status_download) + "\u3000" + this.f70825o.getSize() + "M");
            } else {
                Button button = this.f70817g;
                button.setText(button.getResources().getString(R.string.pay_game_amount, this.f70825o.getPay_tag_info().getPayGameAmount()));
            }
            this.f70817g.setTextColor(-1);
            this.f70820j.setImageResource(R.drawable.detail_comment_download_continue);
            CollectionBeanSub collectionBeanSub = this.f70825o;
            if (collectionBeanSub != null) {
                UtilsMy.x0(collectionBeanSub.getPay_tag_info(), this.f70825o.getCrc_sign_id());
                UtilsMy.t3(this.f70817g, this.f70825o);
                return;
            }
            return;
        }
        if (status == 48) {
            showInstallButn();
            this.f70817g.setText(this.f70823m.getResources().getString(R.string.download_status_installing));
            return;
        }
        showInstallButn();
        if (this.f70825o.getPay_tag_info() == null || this.f70825o.getPay_tag_info().getPay_game_amount() <= 0 || t6.e0.o().p(this.f70825o.getCrc_sign_id())) {
            this.f70817g.setText(this.f70823m.getResources().getString(R.string.download_status_download) + "\u3000" + this.f70825o.getSize() + "M");
        } else {
            Button button2 = this.f70817g;
            button2.setText(button2.getResources().getString(R.string.pay_game_amount, this.f70825o.getPay_tag_info().getPayGameAmount()));
        }
        this.f70817g.setTextColor(-1);
        this.f70820j.setImageResource(R.drawable.detail_comment_download_continue);
        CollectionBeanSub collectionBeanSub2 = this.f70825o;
        if (collectionBeanSub2 != null) {
            UtilsMy.x0(collectionBeanSub2.getPay_tag_info(), this.f70825o.getCrc_sign_id());
            UtilsMy.t3(this.f70817g, this.f70825o);
        }
    }
}

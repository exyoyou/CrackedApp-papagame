package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.HtmlTextView;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.GameDiscoverBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.List;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
public class CardFragment extends a implements View.OnClickListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected GameDiscoverBean f68235d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected ImageView f68236e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected RelativeLayout f68237f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Button f68238g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LinearLayout f68239h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LinearLayout f68240i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ImageView f68241j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected SimpleDraweeView f68242k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected ImageView f68243l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected HtmlTextView f68244m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected TextView f68245n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected TextView f68246o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected TextView f68247p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private DownloadTask f68248q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private RelativeLayout f68249r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ProgressBar f68250s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TextView f68251t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private BroadcastReceiver f68252u = new BroadcastReceiver() { // from class: com.join.mgps.fragment.CardFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                return;
            }
            String action = intent.getAction();
            CollectionBeanSub collectionBeanSub = intent.getSerializableExtra("gameData") != null ? (CollectionBeanSub) intent.getSerializableExtra("gameData") : null;
            if (action.equals(p5.a.G) || action.equals(p5.a.I)) {
                if (collectionBeanSub != null) {
                    PurchasedListTable purchasedListTableN = t6.e0.o().n(collectionBeanSub.getGame_id());
                    if (purchasedListTableN == null) {
                        purchasedListTableN = new PurchasedListTable();
                    }
                    purchasedListTableN.setGame_id(collectionBeanSub.getGame_id());
                    t6.e0.o().m(purchasedListTableN);
                }
                CardFragment.this.updateButn();
            }
        }
    };

    public static CardFragment O(GameDiscoverBean discoverBean) {
        CardFragment cardFragment = new CardFragment();
        cardFragment.R(discoverBean);
        return cardFragment;
    }

    @Override // com.join.mgps.fragment.a
    protected void M(View paramView) {
        this.f68238g.setOnClickListener(this);
        this.f68249r.setOnClickListener(this);
        this.f68237f.setOnClickListener(this);
    }

    @Override // com.join.mgps.fragment.a
    protected View N(LayoutInflater paramLayoutInflater) {
        com.join.mgps.Util.j0.a().d(this);
        View viewInflate = paramLayoutInflater.inflate(R.layout.fragment_card, (ViewGroup) null);
        this.f68237f = (RelativeLayout) viewInflate.findViewById(R.id.box_card);
        this.f68236e = (ImageView) viewInflate.findViewById(R.id.image_bottom_edge);
        this.f68242k = (SimpleDraweeView) viewInflate.findViewById(R.id.image_cover);
        this.f68247p = (TextView) viewInflate.findViewById(R.id.text_title);
        this.f68245n = (TextView) viewInflate.findViewById(R.id.text_subtitle);
        this.f68244m = (HtmlTextView) viewInflate.findViewById(R.id.text_digest);
        this.f68243l = (ImageView) viewInflate.findViewById(R.id.image_tag);
        this.f68246o = (TextView) viewInflate.findViewById(R.id.date_tag);
        this.f68238g = (Button) viewInflate.findViewById(R.id.instalButtomButn);
        this.f68241j = (ImageView) viewInflate.findViewById(R.id.butn_showdownload);
        this.f68249r = (RelativeLayout) viewInflate.findViewById(R.id.progressbarLayout);
        this.f68239h = (LinearLayout) viewInflate.findViewById(R.id.progress_layout);
        this.f68240i = (LinearLayout) viewInflate.findViewById(R.id.detialDownBottom);
        this.f68250s = (ProgressBar) viewInflate.findViewById(R.id.butnProgressBar);
        this.f68251t = (TextView) viewInflate.findViewById(R.id.percent);
        try {
            this.f68247p.setText(this.f68235d.getGame_name());
            this.f68245n.setText(this.f68235d.getDiscover().getTitle());
            this.f68244m.setTextViewHtml(this.f68235d.getDiscover().getIntro());
            this.f68246o.setText(new SimpleDateFormat("MM月dd日 EEEE").format(Long.valueOf(this.f68235d.getDiscover().getAddtimes() * 1000)));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        P();
        updateButn();
        return viewInflate;
    }

    protected void P() {
        GameDiscoverBean gameDiscoverBean;
        GameDiscoverBean gameDiscoverBean2 = this.f68235d;
        if (gameDiscoverBean2 == null || com.join.mgps.Util.t2.h(gameDiscoverBean2.getPlugin_num()) || getActivity() == null || (gameDiscoverBean = this.f68235d) == null) {
            return;
        }
        com.join.android.app.common.utils.l.h(this.f68242k, gameDiscoverBean.getDiscover().getPic());
    }

    void Q(int p10) {
        this.f68250s.setProgress(p10);
        this.f68251t.setText(p10 + "%");
    }

    public void R(GameDiscoverBean data) {
        this.f68235d = data;
    }

    @Override // com.join.mgps.fragment.a
    protected void initData() {
        boolean z10;
        GameDiscoverBean gameDiscoverBean = this.f68235d;
        if (gameDiscoverBean != null) {
            if (gameDiscoverBean.getMod_info() == null) {
                DownloadTask downloadTaskG = q5.f.M().G(this.f68235d.getCrc_sign_id());
                this.f68248q = downloadTaskG;
                if (downloadTaskG != null) {
                    downloadTaskG.setDownloadType(this.f68235d.getDownloadType());
                    this.f68248q.setScreenshot_pic(this.f68235d.getScreenshot_pic());
                    return;
                }
                this.f68248q = this.f68235d.getDownloadtaskDown();
                if (!UtilsMy.p0(this.f68235d.getTag_info())) {
                    this.f68248q.setStatus(0);
                    return;
                }
                this.f68248q.setFileType(Dtype.android.name());
                com.join.android.app.common.utils.g gVarT0 = com.join.android.app.common.utils.g.t0(getActivity());
                FragmentActivity activity = getActivity();
                String package_name = this.f68235d.getPackage_name();
                APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
                if (!gVarT0.f(activity, package_name, device_type)) {
                    this.f68248q.setStatus(0);
                    return;
                }
                APKUtils.a aVarO = com.join.android.app.common.utils.g.t0(getActivity()).o(getActivity(), this.f68235d.getPackage_name(), device_type);
                if (!com.join.mgps.Util.t2.i(this.f68235d.getVer()) || aVarO.d() >= Integer.parseInt(this.f68235d.getVer())) {
                    this.f68248q.setStatus(5);
                    return;
                } else {
                    this.f68248q.setStatus(9);
                    return;
                }
            }
            List<DownloadTask> listH = this.f68235d.getMod_info() != null ? q5.f.M().H(this.f68235d.getMod_info().getMod_game_id(), this.f68235d.getMod_info().getMain_game_id()) : q5.f.M().I(this.f68235d.getPackage_name());
            DownloadTask downloadTaskG2 = null;
            if (listH != null && listH.size() > 0) {
                boolean z11 = false;
                loop0: while (true) {
                    z10 = false;
                    for (DownloadTask downloadTask : listH) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z11 = com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.g.t0(getContext()).f(getContext(), downloadTask.getPackageName(), APKUtils.DEVICE_TYPE.ALL) && downloadTask.getStatus() == 5) {
                            z10 = true;
                        }
                    }
                    break loop0;
                }
                if (z11 && z10) {
                    downloadTaskG2 = q5.f.M().G(this.f68235d.getCrc_sign_id());
                } else if (z11) {
                    if (this.f68235d.getMod_info() != null) {
                        downloadTaskG2 = q5.f.M().G(this.f68235d.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    downloadTaskG2 = q5.f.M().G(this.f68235d.getCrc_sign_id());
                } else {
                    downloadTaskG2 = this.f68235d.getMod_info() != null ? q5.f.M().G(this.f68235d.getMod_info().getMod_game_id()) : null;
                    if (downloadTaskG2 == null) {
                        downloadTaskG2 = q5.f.M().G(this.f68235d.getCrc_sign_id());
                    }
                }
            }
            this.f68248q = downloadTaskG2;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(p5.a.G);
            intentFilter.addAction(p5.a.I);
            getActivity().registerReceiver(this.f68252u, intentFilter);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        super.onAttach(context);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DownloadTask downloadTask;
        int id2 = view.getId();
        if (id2 == R.id.box_card) {
            if (this.f68235d.getCrc_sign_id() != null) {
                IntentUtil.getInstance().goGameDetialActivity(getActivity(), this.f68235d.getCrc_sign_id(), this.f68235d.getGame_info_tpl_type(), this.f68235d.getSp_tpl_two_position(), 115);
                return;
            }
            return;
        }
        if (id2 != R.id.instalButtomButn) {
            if (id2 == R.id.progressbarLayout && (downloadTask = this.f68248q) != null) {
                if (downloadTask.getStatus() == 2) {
                    com.php25.PDownload.d.i(this.f68248q);
                    updateButn();
                    return;
                } else {
                    if (this.f68248q.getStatus() == 3 || this.f68248q.getStatus() == 6) {
                        com.php25.PDownload.d.c(this.f68248q, getActivity());
                        updateButn();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        DownloadTask downloadTask2 = this.f68248q;
        if (downloadTask2 == null || downloadTask2.getStatus() == 0) {
            UtilsMy.T2(getContext(), this.f68235d);
            return;
        }
        DownloadTask downloadTask3 = this.f68248q;
        int status = downloadTask3 != null ? downloadTask3.getStatus() : 0;
        if (UtilsMy.x0(this.f68235d.getPay_tag_info(), this.f68235d.getCrc_sign_id()) > 0) {
            status = 43;
        }
        DownloadTask downloadTask4 = this.f68248q;
        if (downloadTask4 != null && (status == 2 || status == 10)) {
            com.php25.PDownload.d.i(downloadTask4);
            return;
        }
        if (status == 12) {
            return;
        }
        if (status == 13) {
            com.php25.PDownload.d.l(getActivity(), this.f68248q);
            return;
        }
        if (status == 5) {
            UtilsMy.o4(getActivity(), this.f68248q, this.f68235d.getExtBean().buildScene());
            return;
        }
        if (status == 9) {
            if (!com.join.android.app.common.utils.m.j(getActivity())) {
                com.join.mgps.Util.a3.b(getActivity()).d("无网络连接");
                return;
            }
            int downloadType = this.f68248q.getDownloadType();
            if (downloadType != 0 && downloadType != 1) {
                if (downloadType != 2) {
                    return;
                }
                UtilsMy.R4(this.f68248q);
                return;
            }
            if (this.f68248q.getCrc_link_type_val() == null || this.f68248q.getCrc_link_type_val().equals("")) {
                return;
            }
            DownloadTask downloadTask5 = this.f68248q;
            UtilsMy.W4(downloadTask5, downloadTask5.getCrc_link_type_val());
            com.php25.PDownload.d.b(this.f68248q);
            this.f68248q.setVer(this.f68235d.getVer());
            this.f68248q.setVer_name(this.f68235d.getVer_name());
            this.f68248q.setUrl(this.f68235d.getDown_url_remote());
            this.f68248q.setCfg_ver(this.f68235d.getCfg_ver());
            this.f68248q.setCfg_ver_name(this.f68235d.getCfg_ver_name());
            this.f68248q.setCfg_down_url(this.f68235d.getCfg_down_url());
            if (UtilsMy.z0(this.f68235d.getPay_tag_info(), this.f68235d.getCrc_sign_id()) > 0) {
                UtilsMy.z4(getActivity(), this.f68248q.getCrc_link_type_val());
                return;
            }
            UtilsMy.C1(this.f68248q, this.f68235d);
            if (UtilsMy.o1(getActivity(), this.f68248q)) {
                return;
            }
            if (this.f68235d.getDown_status() == 5) {
                UtilsMy.l1(getActivity(), this.f68248q);
                return;
            } else {
                UtilsMy.U0(getActivity(), this.f68248q, this.f68235d.getTp_down_url(), this.f68235d.getOther_down_switch(), this.f68235d.getCdn_down_switch());
                return;
            }
        }
        if (status == 42) {
            if (downloadTask4.getCrc_link_type_val() == null || this.f68248q.getCrc_link_type_val().equals("")) {
                return;
            }
            DownloadTask downloadTask6 = this.f68248q;
            UtilsMy.W4(downloadTask6, downloadTask6.getCrc_link_type_val());
            this.f68248q.setVer(this.f68235d.getVer());
            this.f68248q.setVer_name(this.f68235d.getVer_name());
            this.f68248q.setUrl(this.f68235d.getDown_url_remote());
            this.f68248q.setCfg_ver(this.f68235d.getCfg_ver());
            this.f68248q.setCfg_ver_name(this.f68235d.getCfg_ver_name());
            this.f68248q.setCfg_down_url(this.f68235d.getCfg_down_url());
            UtilsMy.O4(getContext(), this.f68248q);
            return;
        }
        if (11 == status) {
            UtilsMy.w4(downloadTask4, getActivity());
            return;
        }
        if (27 == status || 48 == status) {
            return;
        }
        if (43 == status) {
            if (UtilsMy.z0(this.f68235d.getPay_tag_info(), this.f68235d.getCrc_sign_id()) > 0) {
                UtilsMy.z4(getActivity(), this.f68248q.getCrc_link_type_val());
                return;
            }
            UtilsMy.C1(this.f68248q, this.f68235d);
            if (UtilsMy.o1(getActivity(), this.f68248q)) {
                return;
            }
            if (this.f68235d.getDown_status() == 5) {
                UtilsMy.l1(getActivity(), this.f68248q);
                return;
            } else {
                UtilsMy.U0(getActivity(), this.f68248q, this.f68235d.getTp_down_url(), this.f68235d.getOther_down_switch(), this.f68235d.getCdn_down_switch());
                return;
            }
        }
        if (UtilsMy.z0(this.f68235d.getPay_tag_info(), this.f68235d.getCrc_sign_id()) > 0) {
            UtilsMy.z4(getActivity(), this.f68248q.getCrc_link_type_val());
            return;
        }
        UtilsMy.C1(this.f68248q, this.f68235d);
        if (UtilsMy.o1(getActivity(), this.f68248q)) {
            return;
        }
        if (this.f68235d.getDown_status() == 5) {
            UtilsMy.l1(getActivity(), this.f68248q);
        } else {
            UtilsMy.U0(getActivity(), this.f68248q, this.f68235d.getTp_down_url(), this.f68235d.getOther_down_switch(), this.f68235d.getCdn_down_switch());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f68242k.setImageBitmap(null);
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f68242k.setImageBitmap(null);
        try {
            getActivity().unregisterReceiver(this.f68252u);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        super.onDestroyView();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0081  */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        if (downloadTaskA != null && this.f68248q != null && downloadTaskA.getCrc_link_type_val().equals(this.f68248q.getCrc_link_type_val())) {
            this.f68248q = downloadTaskA;
            downloadTaskA.setStatus(downloadTaskA.getStatus());
            this.f68248q.setPath(downloadTaskA.getPath());
            this.f68248q.setSize(downloadTaskA.getSize());
        }
        int iC = downloadTaskEvent.c();
        if (iC == 5) {
            if (downloadTaskA != null && this.f68248q != null && downloadTaskA.getCrc_link_type_val().equals(this.f68248q.getCrc_link_type_val())) {
                this.f68248q = downloadTaskA;
            }
        } else if (iC == 8) {
            DownloadTask downloadTask = this.f68248q;
            if (downloadTask != null && downloadTask.getPath() != null) {
                UtilsMy.U4(this.f68248q);
                this.f68250s.setProgress((int) this.f68248q.getProgress());
                this.f68251t.setText(this.f68248q.getProgress() + "%");
                return;
            }
        } else if (iC == 11 || iC == 48) {
            if (downloadTaskA != null) {
                this.f68248q = downloadTaskA;
            }
        }
        updateButn();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        boolean z10;
        super.onResume();
        if (this.f68235d == null) {
            this.f68235d = new GameDiscoverBean();
        }
        if (this.f68235d.getMod_info() == null) {
            DownloadTask downloadTaskG = q5.f.M().G(this.f68235d.getCrc_sign_id());
            if (downloadTaskG != null && this.f68248q != null && downloadTaskG.getCrc_link_type_val().equals(this.f68248q.getCrc_link_type_val())) {
                this.f68248q = downloadTaskG;
                if (!downloadTaskG.getFileType().equals(Dtype.android.name()) || this.f68248q.getStatus() != 5) {
                    this.f68248q.setStatus(downloadTaskG.getStatus());
                } else if (this.f68235d.getMod_info() == null) {
                    com.join.android.app.common.utils.g gVarT0 = com.join.android.app.common.utils.g.t0(getActivity());
                    FragmentActivity activity = getActivity();
                    String packageName = this.f68248q.getPackageName();
                    APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
                    if (Boolean.valueOf(gVarT0.f(activity, packageName, device_type)).booleanValue()) {
                        APKUtils.a aVarO = com.join.android.app.common.utils.g.t0(getActivity()).o(getActivity(), this.f68248q.getPackageName(), device_type);
                        if (!com.join.mgps.Util.t2.i(this.f68248q.getVer()) || aVarO.d() >= Integer.parseInt(this.f68248q.getVer())) {
                            this.f68248q.setStatus(5);
                        } else {
                            this.f68248q.setStatus(9);
                        }
                    } else {
                        this.f68248q.setStatus(11);
                    }
                }
            }
        } else {
            List<DownloadTask> listH = this.f68235d.getMod_info() != null ? q5.f.M().H(this.f68235d.getMod_info().getMod_game_id(), this.f68235d.getMod_info().getMain_game_id()) : q5.f.M().I(this.f68235d.getPackage_name());
            DownloadTask downloadTaskG2 = null;
            if (listH != null && listH.size() > 0) {
                boolean z11 = false;
                loop0: while (true) {
                    z10 = false;
                    for (DownloadTask downloadTask : listH) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z11 = com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.g.t0(getContext()).f(getContext(), downloadTask.getPackageName(), APKUtils.DEVICE_TYPE.ALL) && downloadTask.getStatus() == 5) {
                            z10 = true;
                        }
                    }
                    break loop0;
                }
                if (z11 && z10) {
                    downloadTaskG2 = q5.f.M().G(this.f68235d.getCrc_sign_id());
                } else if (z11) {
                    if (this.f68235d.getMod_info() != null) {
                        downloadTaskG2 = q5.f.M().G(this.f68235d.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    downloadTaskG2 = q5.f.M().G(this.f68235d.getCrc_sign_id());
                } else {
                    downloadTaskG2 = this.f68235d.getMod_info() != null ? q5.f.M().G(this.f68235d.getMod_info().getMod_game_id()) : null;
                    if (downloadTaskG2 == null) {
                        downloadTaskG2 = q5.f.M().G(this.f68235d.getCrc_sign_id());
                    }
                }
            }
            this.f68248q = downloadTaskG2;
        }
        updateButn();
    }

    void showInstallButn() {
        this.f68238g.setVisibility(0);
        this.f68249r.setVisibility(8);
    }

    void showProgress() {
        this.f68238g.setVisibility(8);
        this.f68249r.setVisibility(0);
    }

    void updateButn() {
        DownloadTask downloadTask;
        if (this.f68235d == null || (downloadTask = this.f68248q) == null) {
            return;
        }
        UtilsMy.A3(downloadTask.getSp_tag_info(), this.f68240i, this.f68248q);
        this.f68238g.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        DownloadTask downloadTask2 = this.f68248q;
        int status = downloadTask2 != null ? downloadTask2.getStatus() : 0;
        if (UtilsMy.x0(this.f68235d.getPay_tag_info(), this.f68235d.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (this.f68248q.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
            this.f68238g.setBackgroundResource(R.drawable.recom_blue_butn);
            this.f68238g.setText("开始");
            this.f68238g.setTextColor(getResources().getColor(R.color.app_blue_color));
            return;
        }
        if (status == 12) {
            showInstallButn();
            this.f68238g.setText("解压中..");
            this.f68241j.setImageResource(R.drawable.extract);
            return;
        }
        if (status == 13) {
            showInstallButn();
            this.f68238g.setText("解压");
            this.f68241j.setImageResource(R.drawable.reextract);
            return;
        }
        if (status == 9) {
            showInstallButn();
            this.f68238g.setText("更新");
            this.f68241j.setImageResource(R.drawable.detail_comment_download_continue);
            this.f68238g.setBackgroundResource(R.drawable.detial_simple_install_selecter);
            return;
        }
        if (status == 11) {
            showInstallButn();
            this.f68238g.setText("安装");
            this.f68241j.setImageResource(R.drawable.detail_comment_download_continue);
            this.f68238g.setBackgroundResource(R.drawable.detial_simple_install_selecter);
            return;
        }
        if (status == 5 || status == 42) {
            showInstallButn();
            this.f68238g.setBackgroundResource(R.drawable.detial_simple_open_selecter);
            this.f68238g.setText(getContext().getResources().getString(R.string.download_status_finished));
            return;
        }
        if (status == 2) {
            showProgress();
            this.f68241j.setImageResource(R.drawable.detail_comment_download_pause);
            if (new File(this.f68248q.getPath()).exists()) {
                int iJ = (int) com.php25.PDownload.d.j(this.f68248q.getPath(), this.f68248q.getSize());
                this.f68250s.setProgress(iJ);
                this.f68251t.setText(iJ + "%");
                return;
            }
            return;
        }
        if (status == 3 || status == 6) {
            showProgress();
            this.f68241j.setImageResource(R.drawable.detail_comment_download_continue);
            if (new File(this.f68248q.getPath()).exists()) {
                Q((int) com.php25.PDownload.d.j(this.f68248q.getPath(), this.f68248q.getSize()));
                return;
            }
            return;
        }
        if (status == 27) {
            showInstallButn();
            this.f68238g.setText("暂停中\u3000" + this.f68235d.getSize() + "M");
            this.f68241j.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 10) {
            showInstallButn();
            this.f68238g.setText("等待\u3000" + this.f68235d.getSize() + "M");
            this.f68241j.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 43) {
            showInstallButn();
            if (this.f68235d.getPay_tag_info() == null || this.f68235d.getPay_tag_info().getPay_game_amount() <= 0 || t6.e0.o().p(this.f68235d.getCrc_sign_id())) {
                this.f68238g.setText(getContext().getResources().getString(R.string.download_status_download) + "\u3000" + this.f68235d.getSize() + "M");
            } else {
                Button button = this.f68238g;
                button.setText(button.getResources().getString(R.string.pay_game_amount, this.f68235d.getPay_tag_info().getPayGameAmount()));
            }
            this.f68241j.setImageResource(R.drawable.detail_comment_download_continue);
            GameDiscoverBean gameDiscoverBean = this.f68235d;
            if (gameDiscoverBean != null) {
                UtilsMy.x0(gameDiscoverBean.getPay_tag_info(), this.f68235d.getCrc_sign_id());
                UtilsMy.G3(this.f68238g, this.f68235d);
                return;
            }
            return;
        }
        if (status == 48) {
            showInstallButn();
            this.f68238g.setText(getResources().getString(R.string.download_status_installing));
            return;
        }
        showInstallButn();
        this.f68238g.setText(getResources().getString(R.string.download_status_download));
        if (this.f68235d.getPay_tag_info() == null || this.f68235d.getPay_tag_info().getPay_game_amount() <= 0 || t6.e0.o().p(this.f68235d.getCrc_sign_id())) {
            this.f68238g.setText(getContext().getResources().getString(R.string.download_status_download) + "\u3000" + this.f68235d.getSize() + "M");
        } else {
            Button button2 = this.f68238g;
            button2.setText(button2.getResources().getString(R.string.pay_game_amount, this.f68235d.getPay_tag_info().getPayGameAmount()));
        }
        this.f68241j.setImageResource(R.drawable.detail_comment_download_continue);
        GameDiscoverBean gameDiscoverBean2 = this.f68235d;
        if (gameDiscoverBean2 != null) {
            UtilsMy.x0(gameDiscoverBean2.getPay_tag_info(), this.f68235d.getCrc_sign_id());
            UtilsMy.G3(this.f68238g, this.f68235d);
        }
    }
}

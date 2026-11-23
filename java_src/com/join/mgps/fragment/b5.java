package com.join.mgps.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.data.IntentClassfyEvent;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.l6;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_rank_item)
public class b5 extends e implements AbsListView.OnScrollListener {
    private RecomDatabean C;
    private int D;
    View G;
    SimpleDraweeView H;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f69095c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private l6 f69097e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    RelativeLayout f69098f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    XListView2 f69099g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f69100h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f69101i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    LinearLayout f69102j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    LinearLayout f69103k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    ImageView f69104l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    com.join.mgps.rpc.e f69105m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    List<DownloadTask> f69107o;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f69116x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f69117y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    List<PAPAHomeBeanV7.HomeBeanDTO> f69118z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<PAPAHomeBeanV7.HomeBeanDTO> f69096d = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f69106n = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f69108p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f69109q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Map<String, DownloadTask> f69110r = new ConcurrentHashMap();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f69111s = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f69112t = "";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f69113u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f69114v = "";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f69115w = false;
    String A = "";
    String B = "";
    final AtomicInteger E = new AtomicInteger(0);
    List<String> F = new ArrayList();

    class a implements l6.a {
        a() {
        }

        @Override // com.join.mgps.adapter.l6.a
        public void a(int position, PAPAHomeBeanV7.HomeBeanDTO item) {
            b5.this.S(item.getG_info().getId(), item);
        }
    }

    private void Q(PAPAHomeBeanV7.HomeBeanDTO item) {
        DownloadTask downloadTask = item.getDownloadTask();
        CollectionBeanSub gameBean = item.getGameBean();
        if (gameBean.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(gameBean.getDown_url_remote());
            if (downloadTask == null) {
                downloadTask = gameBean.getDownloadTask();
            }
            UtilsMy.j3(downloadTask, this.f69095c);
            IntentUtil.getInstance().intentActivity(this.f69095c, intentDateBean);
            return;
        }
        if (downloadTask == null) {
            if (UtilsMy.p0(gameBean.getTag_info())) {
                if (gameBean.getMod_info() != null) {
                    boolean zE = com.join.android.app.common.utils.g.t0(this.f69095c).e(this.f69095c, gameBean.getPackageName());
                    boolean zK = com.join.mgps.va.overmind.i.q().K(gameBean.getPackageName());
                    if (zE || zK) {
                        com.join.android.app.common.utils.g.t0(this.f69095c);
                        APKUtils.a0(this.f69095c, gameBean.getMod_info(), gameBean.getExtBean());
                        return;
                    }
                } else if (com.join.android.app.common.utils.g.t0(this.f69095c).e(this.f69095c, gameBean.getPackageName())) {
                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f69095c).n(this.f69095c, gameBean.getPackageName());
                    if (!com.join.mgps.Util.t2.i(gameBean.getVer()) || aVarN.d() >= Integer.parseInt(gameBean.getVer())) {
                        com.join.android.app.common.utils.g.t0(this.f69095c);
                        APKUtils.f0(this.f69095c, gameBean.getPackageName());
                        return;
                    }
                }
            }
            if (UtilsMy.z0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
                UtilsMy.z4(this.f69095c, gameBean.getCrc_sign_id());
                return;
            } else {
                UtilsMy.b1(this.f69095c, gameBean);
                return;
            }
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 13) {
                com.php25.PDownload.d.l(this.f69095c, downloadTask);
                return;
            }
            if (status != 2) {
                if (status != 3) {
                    if (status == 5) {
                        UtilsMy.k4(this.f69095c, downloadTask);
                        return;
                    }
                    if (status != 6) {
                        if (status != 7) {
                            if (status == 42) {
                                if (com.join.android.app.common.utils.m.j(this.f69095c)) {
                                    UtilsMy.O4(this.f69095c, downloadTask);
                                    return;
                                } else {
                                    com.join.mgps.Util.a3.b(this.f69095c).d("无网络连接");
                                    return;
                                }
                            }
                            if (status != 43) {
                                switch (status) {
                                    case 9:
                                        if (!com.join.android.app.common.utils.m.j(this.f69095c)) {
                                            com.join.mgps.Util.a3.b(this.f69095c).d("无网络连接");
                                        } else {
                                            UtilsMy.X2(this.f69095c, downloadTask);
                                        }
                                        break;
                                    case 11:
                                        UtilsMy.w4(downloadTask, this.f69095c);
                                        break;
                                }
                                return;
                            }
                        }
                    }
                }
                com.php25.PDownload.d.c(downloadTask, this.f69095c);
                return;
            }
            com.php25.PDownload.d.i(downloadTask);
            return;
        }
        if (UtilsMy.z0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
            UtilsMy.z4(this.f69095c, gameBean.getCrc_sign_id());
            return;
        }
        UtilsMy.z1(downloadTask, gameBean);
        if (UtilsMy.o1(this.f69095c, downloadTask)) {
            return;
        }
        if (gameBean.getDown_status() == 5) {
            UtilsMy.l1(this.f69095c, downloadTask);
        } else {
            UtilsMy.U0(this.f69095c, downloadTask, gameBean.getTp_down_url(), gameBean.getOther_down_switch(), gameBean.getCdn_down_switch());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X(AdapterView adapterView, View view, int i10, long j10) {
        PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = this.f69096d.get(i10);
        if (homeBeanDTO != null) {
            IntentUtil.getInstance().intentActivity(this.f69095c, homeBeanDTO.getIntentDataBean());
        }
    }

    public static Fragment Z(String type, String title) {
        RankingItemV2Fragment_ rankingItemV2Fragment_ = new RankingItemV2Fragment_();
        Bundle bundle = new Bundle();
        bundle.putString("type", type);
        bundle.putString("title", title);
        rankingItemV2Fragment_.setArguments(bundle);
        return rankingItemV2Fragment_;
    }

    public static Fragment a0(boolean fromHome, String type, String title, List<PAPAHomeBeanV7.HomeBeanDTO> datas) {
        RankingItemV2Fragment_ rankingItemV2Fragment_ = new RankingItemV2Fragment_();
        Bundle bundle = new Bundle();
        bundle.putString("type", type);
        bundle.putBoolean("fromHome", fromHome);
        bundle.putString("title", title);
        bundle.putSerializable("datas", (Serializable) datas);
        rankingItemV2Fragment_.setArguments(bundle);
        return rankingItemV2Fragment_;
    }

    public static Fragment b0(boolean fromHome, String title, List<PAPAHomeBeanV7.HomeBeanDTO> datas, int from) {
        RankingItemV2Fragment_ rankingItemV2Fragment_ = new RankingItemV2Fragment_();
        Bundle bundle = new Bundle();
        bundle.putBoolean("fromHome", fromHome);
        bundle.putString("title", title);
        bundle.putSerializable("datas", (Serializable) datas);
        bundle.putInt("from", from);
        rankingItemV2Fragment_.setArguments(bundle);
        return rankingItemV2Fragment_;
    }

    private void i0(List<CollectionBeanSub> SearchDataBeanList) {
        List<DownloadTask> list;
        if (SearchDataBeanList == null || SearchDataBeanList.size() == 0 || (list = this.f69107o) == null || list.size() == 0) {
            return;
        }
        for (CollectionBeanSub collectionBeanSub : SearchDataBeanList) {
            for (DownloadTask downloadTask : this.f69107o) {
                if (collectionBeanSub.getMod_info() == null) {
                    if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getGame_id())) {
                        collectionBeanSub.setDownloadTask(downloadTask);
                        break;
                    }
                } else {
                    ModInfoBean mod_info = collectionBeanSub.getMod_info();
                    DownloadTask downloadTask2 = this.f69110r.get(mod_info.getMain_game_id());
                    boolean z10 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f69110r.get(mod_info.getMod_game_id());
                    boolean z11 = downloadTask3 != null && downloadTask3.getStatus() == 5;
                    if (z11 && z10) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                        }
                    } else if (z11) {
                        if (collectionBeanSub.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getMod_info().getMod_game_id())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                        }
                    } else if (!z10) {
                        DownloadTask downloadTaskG = collectionBeanSub.getMod_info() != null ? q5.f.M().G(collectionBeanSub.getMod_info().getMod_game_id()) : null;
                        if (downloadTaskG == null) {
                            downloadTaskG = q5.f.M().G(collectionBeanSub.getCrc_sign_id());
                        }
                        if (downloadTaskG != null && downloadTask.getCrc_link_type_val().equals(downloadTaskG.getCrc_link_type_val())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                        }
                    } else if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                        collectionBeanSub.setDownloadTask(downloadTask);
                    }
                }
            }
        }
    }

    private void j0() {
        List<PAPAHomeBeanV7.HomeBeanDTO> list = this.f69118z;
        if (list == null || list.size() <= 0) {
            return;
        }
        List<DownloadTask> listD = q5.f.M().d();
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f69118z) {
            for (DownloadTask downloadTask : listD) {
                if (TextUtils.equals(downloadTask.getCrc_link_type_val(), homeBeanDTO.getG_info().getMod_id())) {
                    homeBeanDTO.setDownloadTask(downloadTask);
                    break;
                } else if (TextUtils.equals(downloadTask.getCrc_link_type_val(), homeBeanDTO.getG_info().getId())) {
                    homeBeanDTO.setDownloadTask(downloadTask);
                }
            }
        }
        this.f69097e.notifyDataSetChanged();
    }

    private void receiveDelete(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f69096d) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(null);
            }
        }
        this.f69097e.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f69096d) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        this.f69097e.notifyDataSetChanged();
    }

    private void receiveStart(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f69096d) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        this.f69097e.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f69096d) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        this.f69097e.notifyDataSetChanged();
    }

    private void updateProgressPartly() {
        if (this.f69109q < 0 || this.f69108p >= this.f69099g.getCount()) {
            return;
        }
        for (int i10 = this.f69109q; i10 <= this.f69099g.getCount() - 1; i10++) {
            PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) this.f69099g.getItemAtPosition(i10);
            if (homeBeanDTO != null) {
                j0();
                DownloadTask downloadTask = homeBeanDTO.getDownloadTask();
                if (downloadTask != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                    View childAt = this.f69099g.getChildAt(i10 - this.f69109q);
                    if (childAt.getTag() instanceof l6.b) {
                        l6.b bVar = (l6.b) childAt.getTag();
                        try {
                            DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                            if (downloadTaskG == null) {
                                return;
                            }
                            long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                            if (downloadTask.getSize() == 0) {
                                bVar.f62710f.setText(UtilsMy.i(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(j10));
                            } else {
                                bVar.f62710f.setText(UtilsMy.i(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(j10));
                            }
                            if (downloadTask.getStatus() == 12) {
                                bVar.f62712h.setProgress((int) downloadTaskG.getProgress());
                            } else {
                                bVar.f62713i.setProgress((int) downloadTaskG.getProgress());
                            }
                            if (downloadTask.getStatus() == 2) {
                                bVar.f62711g.setText(downloadTaskG.getSpeed() + "/S");
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void P() {
        if (this.f69116x || !isVisible()) {
            return;
        }
        U(this.f69112t, this.f69114v);
        P();
        this.f69116x = true;
    }

    public CommonRequestBean R(String gameType, String romType, String sort_type) {
        return RequestBeanUtil.getInstance(this.f69095c).getGameListRequestBean(this.f69106n, 10, gameType, romType, this.f69111s, sort_type);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S(String gameId, PAPAHomeBeanV7.HomeBeanDTO item) {
        CollectionBeanSub data;
        if (item.getGameBean() != null) {
            Q(item);
            return;
        }
        if (com.join.android.app.common.utils.m.j(this.f69095c)) {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this.f69095c).getAccountData();
                if (accountData == null) {
                    accountData = UserInfo.getDefaultInstance();
                }
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.f69095c);
                requestModel.setArgs(new RequestGameIdArgs(gameId, 1, accountData.getUid()));
                ResponseModel<CollectionBeanSub> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().N1(requestModel.makeSign()).execute().body();
                if (responseModelBody != null && responseModelBody.getCode() == 200 && (data = responseModelBody.getData()) != null) {
                    data.set_from(item.get_from());
                    data.set_from_type(item.get_from_type());
                    item.setGameBean(data);
                    Q(item);
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showToast("获取下载信息失败");
            }
        } else {
            showToast("当前网络不可用");
        }
        e0(item);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void U(String gameType, String romType) {
    }

    void V() {
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        this.A = arguments.getString("type");
        this.f69117y = arguments.getBoolean("fromHome");
        this.B = arguments.getString("title");
        this.f69118z = (List) arguments.getSerializable("datas");
        this.D = arguments.getInt("from");
        this.f69112t = this.A;
    }

    void W() {
    }

    @Click
    void Y() {
        this.f69106n = 1;
        U(this.f69112t, this.f69114v);
    }

    @AfterViews
    void afterViews() {
        V();
        com.join.mgps.Util.j0.a().d(this);
        this.f69101i.setBackgroundResource(R.color.activity_default_background);
        this.f69095c = getActivity();
        l6 l6Var = new l6(this.f69095c, this.A);
        this.f69097e = l6Var;
        if (this.f69117y) {
            l6Var.d();
        }
        this.f69097e.e(new a());
        this.f69096d = this.f69097e.b();
        this.f69099g.setAdapter((ListAdapter) this.f69097e);
        showLoding();
        if (this.f69118z != null) {
            showMain(new ArrayList(this.f69118z));
        }
        this.f69099g.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.join.mgps.fragment.a5
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                this.f69048b.X(adapterView, view, i10, j10);
            }
        });
        List<DownloadTask> listD = q5.f.M().d();
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f69118z) {
            for (DownloadTask downloadTask : listD) {
                if (TextUtils.equals(downloadTask.getCrc_link_type_val(), homeBeanDTO.getG_info().getMod_id())) {
                    homeBeanDTO.setDownloadTask(downloadTask);
                    break;
                } else if (TextUtils.equals(downloadTask.getCrc_link_type_val(), homeBeanDTO.getG_info().getId())) {
                    homeBeanDTO.setDownloadTask(downloadTask);
                }
            }
        }
    }

    @Click
    void c0() {
        if (this.f69111s != 1001) {
            getActivity().finish();
        }
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void d0(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        l6 l6Var = this.f69097e;
        if (l6Var != null) {
            l6Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e0(PAPAHomeBeanV7.HomeBeanDTO item) {
        item.setRequesting(false);
        this.f69097e.notifyDataSetChanged();
    }

    public void f0(List<PAPAHomeBeanV7.HomeBeanDTO> defaultdatas) {
        if (defaultdatas == null) {
            return;
        }
        this.f69118z = defaultdatas;
        showMain(defaultdatas);
    }

    @Click
    void g0() {
        com.join.mgps.Util.j0.a().c(new IntentClassfyEvent(0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0(boolean isNormal) {
        XListView2 xListView2 = this.f69099g;
        if (xListView2 != null) {
            xListView2.u();
            this.f69099g.v();
        }
        if (isNormal) {
            if (isNormal && this.f69106n == 1 && this.f69096d.size() == 0) {
                LinearLayout linearLayout = this.f69102j;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                LinearLayout linearLayout2 = this.f69101i;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(8);
                }
                PtrClassicFrameLayout ptrClassicFrameLayout = this.f69100h;
                if (ptrClassicFrameLayout != null) {
                    ptrClassicFrameLayout.setVisibility(8);
                }
                LinearLayout linearLayout3 = this.f69103k;
                if (linearLayout3 != null) {
                    linearLayout3.setVisibility(0);
                    return;
                }
                return;
            }
            return;
        }
        if (this.f69106n != 1 || this.f69096d.size() != 0) {
            try {
                com.join.mgps.Util.a3.b(this.f69095c).d(getString(R.string.net_connect_failed));
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        LinearLayout linearLayout4 = this.f69102j;
        if (linearLayout4 != null) {
            linearLayout4.setVisibility(0);
        }
        LinearLayout linearLayout5 = this.f69101i;
        if (linearLayout5 != null) {
            linearLayout5.setVisibility(8);
        }
        PtrClassicFrameLayout ptrClassicFrameLayout2 = this.f69100h;
        if (ptrClassicFrameLayout2 != null) {
            ptrClassicFrameLayout2.setVisibility(8);
        }
        LinearLayout linearLayout6 = this.f69103k;
        if (linearLayout6 != null) {
            linearLayout6.setVisibility(8);
        }
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
        P();
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            updateUI(downloadTaskA, 1);
            return;
        }
        if (iC == 3) {
            updateUI(downloadTaskA, 2);
            return;
        }
        if (iC != 5) {
            if (iC == 6) {
                updateUI(downloadTaskA, 6);
                return;
            }
            if (iC == 7) {
                updateUI(downloadTaskA, 3);
                return;
            }
            if (iC == 8) {
                updateProgressPartly();
                return;
            }
            if (iC != 48) {
                switch (iC) {
                    case 10:
                        updateUI(downloadTaskA, 7);
                        break;
                    case 12:
                        updateUI(downloadTaskA, 8);
                        break;
                    case 13:
                        updateUI(downloadTaskA, 9);
                        break;
                }
                return;
            }
        }
        updateUI(downloadTaskA, 5);
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        l6 l6Var;
        super.onHiddenChanged(hidden);
        if (hidden || (l6Var = this.f69097e) == null) {
            return;
        }
        l6Var.notifyDataSetChanged();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f69108p = (visibleItemCount + firstVisibleItem) - 1;
        this.f69109q = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
    }

    @Click
    void relodingimag() {
        this.f69106n = 1;
        showLoding();
        U(this.f69112t, this.f69114v);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f69095c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        LinearLayout linearLayout = this.f69101i;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f69102j;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f69100h;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f69103k;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<PAPAHomeBeanV7.HomeBeanDTO> subList) {
        try {
            LinearLayout linearLayout = this.f69102j;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            LinearLayout linearLayout2 = this.f69101i;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            PtrClassicFrameLayout ptrClassicFrameLayout = this.f69100h;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.setVisibility(0);
            }
            LinearLayout linearLayout3 = this.f69103k;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(8);
            }
            XListView2 xListView2 = this.f69099g;
            if (xListView2 != null) {
                xListView2.u();
                this.f69099g.v();
            }
            if (this.f69106n == 1) {
                this.f69096d.clear();
            }
            this.f69096d.addAll(subList);
            if (this.f69099g != null) {
                this.f69097e.notifyDataSetChanged();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String msg) {
        if (com.join.mgps.Util.t2.i(msg)) {
            com.join.mgps.Util.a3.b(this.f69095c).d(msg);
        } else {
            com.join.mgps.Util.a3.b(this.f69095c).d("数据异常，请重试");
        }
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
            switch (from) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    break;
                case 3:
                    receiveDelete(downloadTask);
                    break;
                case 5:
                    receiveSuccess(downloadTask);
                    break;
                case 6:
                    receiveError(downloadTask);
                    break;
            }
        }
    }
}

package com.join.mgps.fragment;

import android.app.Activity;
import android.content.ClipboardManager;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.haima.hmcp.utils.HmIMEManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GiftsDetailActivity_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.game_online_first_layout)
public class o3 extends Fragment implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70392c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    XListView2 f70393d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f70394e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f70395f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    ImageView f70396g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    com.join.mgps.rpc.e f70397h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Activity f70398i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<DownloadTask> f70400k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    List<l6.a<GiftPackageDataInfoBean>> f70403n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f70404o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f70405p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.join.mgps.adapter.k2 f70407r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private TextView f70410u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private UserInfo f70411v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.join.mgps.customview.t f70412w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private com.join.mgps.dialog.f1 f70413x;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f70399j = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Map<String, DownloadTask> f70401l = new ConcurrentHashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f70402m = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f70406q = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Handler f70408s = new a();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    com.join.mgps.customview.t f70409t = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f70414y = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    com.join.mgps.customview.t f70415z = null;
    com.join.mgps.customview.t A = null;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (IntentUtil.getInstance().goLoginNetGame(o3.this.f70398i)) {
                return;
            }
            GiftPackageDataInfoBean giftPackageDataInfoBean = (GiftPackageDataInfoBean) msg.obj;
            if (o3.this.U(giftPackageDataInfoBean.getGift_package_type())) {
                if (o3.this.f70413x != null) {
                    o3.this.f70413x.b();
                }
                o3.this.Y(giftPackageDataInfoBean, msg.what);
            }
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (o3.this.f70399j) {
                return;
            }
            o3.this.f70402m = 1;
            o3.this.f70414y = true;
            o3.this.Z();
        }
    }

    class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (o3.this.f70399j) {
                return;
            }
            o3.this.Z();
        }
    }

    class d implements AdapterView.OnItemClickListener {
        d() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            GiftPackageDataInfoBean giftPackageDataInfoBeanC;
            if (i10 > o3.this.f70403n.size() || i10 < 0 || (giftPackageDataInfoBeanC = o3.this.f70403n.get(i10).c()) == null) {
                return;
            }
            if (AccountUtil_.getInstance_(o3.this.f70398i).getAccountData() == null) {
                IntentUtil.getInstance().goLoginNetGame(o3.this.f70398i);
            } else {
                GiftsDetailActivity_.intent(o3.this.f70398i).c(giftPackageDataInfoBeanC).start();
            }
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f70420b;

        e(final GiftPackageDataOperationBean val$bean) {
            this.f70420b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) o3.this.f70398i.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(this.f70420b.getGift_info().getGift_package_code());
            com.join.mgps.Util.a3.b(o3.this.f70398i).d(this.f70420b.getGift_info().getGift_package_code() + "已复制到剪贴板");
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (o3.this.f70412w == null || !o3.this.f70412w.isShowing()) {
                return;
            }
            o3.this.f70412w.dismiss();
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f70423b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f70424c;

        g(final DownloadTask val$downloadTask, final DetailResultBean val$detailResultBean) {
            this.f70423b = val$downloadTask;
            this.f70424c = val$detailResultBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (o3.this.f70412w != null && o3.this.f70412w.isShowing()) {
                o3.this.f70412w.dismiss();
            }
            int status = this.f70423b.getStatus();
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.k4(o3.this.f70398i, this.f70423b);
                    return;
                } else if (status != 9) {
                    return;
                }
            }
            if (UtilsMy.o1(o3.this.f70398i, this.f70423b)) {
                return;
            }
            if (this.f70424c.getDown_status() == 5) {
                UtilsMy.l1(o3.this.f70398i, this.f70423b);
            } else {
                com.php25.PDownload.d.c(this.f70423b, o3.this.f70398i);
                this.f70423b.setStatus(2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean U(String finalType) {
        if (com.join.mgps.Util.t2.h(finalType)) {
            com.join.mgps.Util.a3.b(this.f70398i).d(this.f70398i.getString(R.string.unknow_gift_type));
            return false;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this.f70398i).getAccountData();
        if (finalType.equals("6")) {
            if (!com.join.mgps.Util.b.piv(accountData)) {
                g0();
                return false;
            }
        } else if (finalType.equals("7") && accountData.getSVIPLevel() <= 0) {
            f0();
            return false;
        }
        return true;
    }

    private void V() {
        com.join.mgps.customview.t tVar = this.f70409t;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f70409t.dismiss();
    }

    private void W() {
        com.join.mgps.customview.t tVar = this.f70415z;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f70415z.dismiss();
    }

    private void X() {
        com.join.mgps.customview.t tVar = this.A;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.A.dismiss();
    }

    @Background
    void Y(GiftPackageDataInfoBean bean, int msgWhat) {
        try {
            if (!com.join.android.app.common.utils.m.j(this.f70398i)) {
                showToast("领取失败");
                b0();
                return;
            }
            try {
                GiftPackageOperationBean giftPackageOperationBeanN0 = this.f70397h.N0(RequestBeanUtil.getInstance(this.f70398i).getGiftPackageOperationRequestBean(this.f70411v.getUid(), bean.getGift_package_id(), bean.getGift_package_game_id()));
                if (giftPackageOperationBeanN0 == null) {
                    showToast("领取失败");
                } else {
                    if (giftPackageOperationBeanN0.getFlag().equals("0")) {
                        String error_info = giftPackageOperationBeanN0.getError_info();
                        if (error_info != null && giftPackageOperationBeanN0.getCode().equals(HmIMEManager.ERROR_CODE_NOT_ENABLE)) {
                            showToast(error_info);
                        }
                        b0();
                        return;
                    }
                    List<GiftPackageDataOperationBean> data = giftPackageOperationBeanN0.getMessages().getData();
                    if (data == null || data.size() <= 0) {
                        showToast("领取失败");
                    } else {
                        GiftPackageDataOperationBean giftPackageDataOperationBean = data.get(0);
                        bean.setGift_package_status(1);
                        for (l6.a<GiftPackageDataInfoBean> aVar : this.f70403n) {
                            if (aVar.c() != null && aVar.c().getGift_package_id() == bean.getGift_package_id()) {
                                aVar.c().setGift_package_status(1);
                            }
                        }
                        DetailResultBean game_info = giftPackageDataOperationBean.getGame_info();
                        DownloadTask downloadtaskDown = game_info != null ? game_info.getDownloadtaskDown() : null;
                        DownloadTask downloadTaskG = q5.f.M().G(downloadtaskDown.getCrc_link_type_val());
                        if (downloadTaskG != null) {
                            e0(giftPackageDataOperationBean, downloadTaskG, msgWhat);
                        } else {
                            e0(giftPackageDataOperationBean, downloadtaskDown, msgWhat);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            b0();
        } catch (Throwable th) {
            b0();
            throw th;
        }
    }

    @Background
    void Z() {
        if (!com.join.android.app.common.utils.m.j(this.f70398i)) {
            h0();
            showLodingFailed();
            return;
        }
        this.f70399j = true;
        try {
            try {
                ResultMainBean<List<GiftPackageDataInfoBean>> resultMainBeanB0 = this.f70397h.B0(a0(this.f70402m));
                if (resultMainBeanB0 != null && resultMainBeanB0.getFlag() == 1) {
                    List<GiftPackageDataInfoBean> data = resultMainBeanB0.getMessages().getData();
                    if (data != null) {
                        ArrayList arrayList = new ArrayList();
                        if (data.size() > 0) {
                            String strP = "";
                            for (GiftPackageDataInfoBean giftPackageDataInfoBean : data) {
                                long gift_package_times_begin = giftPackageDataInfoBean.getGift_package_times_begin() * 1000;
                                if (!strP.equals(com.join.mgps.Util.e0.p(gift_package_times_begin))) {
                                    strP = com.join.mgps.Util.e0.p(gift_package_times_begin);
                                    l6.a<GiftPackageDataInfoBean> aVar = new l6.a<>();
                                    aVar.i(1);
                                    aVar.j(strP);
                                    arrayList.add(aVar);
                                }
                                l6.a<GiftPackageDataInfoBean> aVar2 = new l6.a<>();
                                aVar2.i(2);
                                aVar2.h(giftPackageDataInfoBean);
                                arrayList.add(aVar2);
                            }
                            if (data.size() < 10) {
                                d0();
                            }
                        } else {
                            d0();
                        }
                        this.f70402m++;
                        showMain(arrayList);
                        h0();
                    } else if (this.f70402m == 1) {
                        showLodingFailed();
                    } else {
                        d0();
                    }
                } else if (this.f70402m == 1) {
                    showLodingFailed();
                    h0();
                } else {
                    h0();
                    d0();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                h0();
                showLodingFailed();
            }
        } finally {
            this.f70399j = false;
        }
    }

    public CommonRequestBean a0(int pn) {
        UserInfo accountData = AccountUtil_.getInstance_(this.f70398i).getAccountData();
        return RequestBeanUtil.getInstance(this.f70398i).getGameOLGiftRequest(pn, 20, accountData != null ? accountData.getUid() : 0);
    }

    @AfterViews
    void afterviews() {
        this.f70397h = com.join.mgps.rpc.impl.d.O1();
        this.f70398i = getActivity();
        List<DownloadTask> listD = q5.f.M().d();
        this.f70400k = listD;
        if (listD != null && listD.size() > 0) {
            for (DownloadTask downloadTask : this.f70400k) {
                this.f70401l.put(downloadTask.getCrc_link_type_val(), downloadTask);
                com.join.mgps.Util.g1.d("infoo", this.f70400k.size() + " tasksiz     mapsize  " + downloadTask.getStatus());
                com.join.mgps.Util.g1.d("infoo", downloadTask.toString());
            }
        }
        com.join.mgps.adapter.k2 k2Var = new com.join.mgps.adapter.k2(this.f70398i, this.f70408s);
        this.f70407r = k2Var;
        this.f70403n = k2Var.d();
        this.f70393d.setPreLoadCount(10);
        this.f70393d.setPullRefreshEnable(new b());
        this.f70393d.setPullLoadEnable(new c());
        this.f70393d.setOnItemClickListener(new d());
        this.f70393d.setOnScrollListener(this);
        this.f70393d.setAdapter((ListAdapter) this.f70407r);
        this.f70413x = com.join.mgps.Util.h0.h0(this.f70398i).x(this.f70398i);
    }

    @UiThread
    void b0() {
        com.join.mgps.dialog.f1 f1Var = this.f70413x;
        if (f1Var != null) {
            f1Var.dismiss();
        }
    }

    @Click
    void c0() {
        this.f70402m = 1;
        Z();
    }

    @UiThread
    void d0() {
        this.f70393d.setNoMore();
    }

    /* JADX WARN: Code duplicated, block: B:19:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:21:0x00f5  */
    @UiThread
    void e0(final GiftPackageDataOperationBean bean, final DownloadTask downloadTask, int what) {
        this.f70407r.notifyDataSetChanged();
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f70398i, R.style.MyDialog);
        this.f70412w = tVar;
        tVar.setContentView(R.layout.save_code_dialog);
        Button button = (Button) this.f70412w.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) this.f70412w.findViewById(R.id.dialog_button_ok);
        LinearLayout linearLayout = (LinearLayout) this.f70412w.findViewById(R.id.layoutTop);
        LinearLayout linearLayout2 = (LinearLayout) this.f70412w.findViewById(R.id.layoutBottom);
        TextView textView = (TextView) this.f70412w.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) this.f70412w.findViewById(R.id.saveCodeTv);
        TextView textView3 = (TextView) this.f70412w.findViewById(R.id.saveCodeContent);
        TextView textView4 = (TextView) this.f70412w.findViewById(R.id.dialog_time);
        this.f70410u = (TextView) this.f70412w.findViewById(R.id.moneyText);
        if (what == 1) {
            linearLayout.setVisibility(0);
            linearLayout2.setVisibility(8);
            textView.setText("领号成功");
        } else if (what == 2) {
            textView.setText("已领取");
            linearLayout.setVisibility(8);
            linearLayout2.setVisibility(0);
            textView4.setText(com.join.mgps.Util.e0.C(bean.getGift_info().getGift_package_times_end()));
        }
        DetailResultBean game_info = bean.getGame_info();
        textView3.setText(bean.getGift_info().getGift_package_code());
        button2.setText("关闭");
        button.setText("下载游戏");
        textView2.setOnClickListener(new e(bean));
        button2.setOnClickListener(new f());
        if (downloadTask != null) {
            int status = downloadTask.getStatus();
            if (status == 0) {
                button.setText("下载游戏");
                if (game_info != null) {
                    UtilsMy.B3(game_info.getSp_tag_info(), this.f70410u);
                }
            } else if (status == 5) {
                button.setText("启动游戏");
            } else if (status != 9) {
                button.setText("下载中..");
            } else {
                button.setText("下载游戏");
                if (game_info != null) {
                    UtilsMy.B3(game_info.getSp_tag_info(), this.f70410u);
                }
            }
            button.setOnClickListener(new g(downloadTask, game_info));
        }
        com.join.mgps.customview.t tVar2 = this.f70412w;
        if (tVar2 == null || tVar2.isShowing()) {
            return;
        }
        this.f70412w.show();
    }

    @UiThread
    void f0() {
        com.join.mgps.customview.t tVar = this.f70415z;
        if (tVar == null) {
            this.f70415z = com.join.mgps.Util.h0.h0(this.f70398i).e0(this.f70398i);
        } else if (tVar.isShowing()) {
            return;
        }
        this.f70415z.show();
    }

    @UiThread
    void g0() {
        com.join.mgps.customview.t tVar = this.A;
        if (tVar == null) {
            this.A = com.join.mgps.Util.h0.h0(this.f70398i).g0(this.f70398i);
        } else if (tVar.isShowing()) {
            return;
        }
        this.A.show();
    }

    @UiThread
    void h0() {
        this.f70393d.u();
        this.f70393d.v();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        W();
        X();
        com.join.mgps.dialog.f1 f1Var = this.f70413x;
        if (f1Var != null) {
            f1Var.dismiss();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f70411v = AccountUtil_.getInstance_(this.f70398i).getAccountData();
        this.f70402m = 1;
        showLoding();
        Z();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f70404o = (visibleItemCount + firstVisibleItem) - 1;
        this.f70405p = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        this.f70406q = scrollState != 0;
    }

    @Click
    void relodingimag() {
        this.f70402m = 1;
        showLoding();
        Z();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(getActivity());
    }

    @UiThread
    void showLoding() {
        this.f70394e.setVisibility(0);
        this.f70395f.setVisibility(8);
        this.f70392c.setVisibility(8);
    }

    @UiThread
    void showLodingFailed() {
        List<l6.a<GiftPackageDataInfoBean>> list = this.f70403n;
        if (list == null || list.size() == 0) {
            this.f70395f.setVisibility(0);
            this.f70394e.setVisibility(8);
            this.f70392c.setVisibility(8);
        }
    }

    @UiThread
    void showMain(List<l6.a<GiftPackageDataInfoBean>> subList) {
        if (subList == null || subList.size() == 0) {
            return;
        }
        this.f70395f.setVisibility(8);
        this.f70394e.setVisibility(8);
        this.f70392c.setVisibility(0);
        if (this.f70402m == 2) {
            this.f70403n.clear();
        }
        this.f70403n.addAll(subList);
        if (this.f70402m == 2) {
            this.f70403n.size();
        }
        com.join.mgps.Util.g1.d("infoo", this.f70403n.size() + "   showMain");
        this.f70407r.notifyDataSetChanged();
    }

    @UiThread
    void showToast(String message) {
        com.join.mgps.Util.a3.b(this.f70398i).d(message);
    }
}

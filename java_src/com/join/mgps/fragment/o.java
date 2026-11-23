package com.join.mgps.fragment;

import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.haima.hmcp.utils.HmIMEManager;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GiftsDetailActivity_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.GiftPackageBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_codesbox)
public class o extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.join.mgps.rpc.e f70347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    LinearLayout f70348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f70349e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70350f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    XListView2 f70351g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    ListView f70352h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f70353i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f70354j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Context f70355k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f70356l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f70357m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f70358n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List<GiftPackageDataInfoBean> f70359o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List<GiftPackageDataInfoBean> f70360p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.join.mgps.adapter.l f70361q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.join.mgps.adapter.m f70362r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private RelativeLayout f70363s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private com.join.mgps.customview.t f70364t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private DownloadTask f70365u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private TextView f70366v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    Handler f70367w = new a();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Button f70368x;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            UserInfo accountData = AccountUtil_.getInstance_(o.this.f70355k.getApplicationContext()).getAccountData();
            if (IntentUtil.getInstance().goLoginNetGame(o.this.f70355k)) {
                return;
            }
            o.this.T(accountData, (GiftPackageDataInfoBean) msg.obj);
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (o.this.f70356l) {
                return;
            }
            o.this.S();
        }
    }

    class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (o.this.f70356l) {
                return;
            }
            o.this.f70357m = 1;
            o.this.S();
        }
    }

    class d implements AdapterView.OnItemClickListener {
        d() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            if (i10 > o.this.f70359o.size() || i10 < 0) {
                return;
            }
            GiftsDetailActivity_.intent(o.this.f70355k).c((GiftPackageDataInfoBean) o.this.f70359o.get(i10)).a(o.this.f70353i).start();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f70374b;

        f(final GiftPackageDataOperationBean val$bean) {
            this.f70374b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) o.this.f70355k.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(this.f70374b.getGift_info().getGift_package_code());
            com.join.mgps.Util.a3.b(o.this.f70355k).d(this.f70374b.getGift_info().getGift_package_code() + "已复制到剪贴板");
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (o.this.f70364t == null || !o.this.f70364t.isShowing()) {
                return;
            }
            o.this.f70364t.dismiss();
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f70377b;

        h(final DetailResultBean val$detailResultBean) {
            this.f70377b = val$detailResultBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (o.this.f70364t != null && o.this.f70364t.isShowing()) {
                o.this.f70364t.dismiss();
            }
            int status = o.this.f70365u != null ? o.this.f70365u.getStatus() : 0;
            DetailResultBean detailResultBean = this.f70377b;
            if (detailResultBean != null && UtilsMy.x0(detailResultBean.getPay_tag_info(), this.f70377b.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.k4(o.this.f70355k, o.this.f70365u);
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            DetailResultBean detailResultBean2 = this.f70377b;
            if (detailResultBean2 != null) {
                if (UtilsMy.z0(detailResultBean2.getPay_tag_info(), this.f70377b.getCrc_sign_id()) > 0) {
                    UtilsMy.z4(o.this.getActivity(), o.this.f70365u.getCrc_link_type_val());
                } else {
                    UtilsMy.A1(o.this.f70365u, this.f70377b);
                    if (!UtilsMy.o1(o.this.f70355k, o.this.f70365u)) {
                        if (this.f70377b.getDown_status() == 5) {
                            UtilsMy.l1(o.this.f70355k, o.this.f70365u);
                        } else {
                            UtilsMy.U0(o.this.f70355k, o.this.f70365u, this.f70377b.getTp_down_url(), this.f70377b.getOther_down_switch(), this.f70377b.getCdn_down_switch());
                        }
                    }
                }
            }
            o.this.f70365u.setStatus(2);
        }
    }

    @Background
    void S() {
        if (!com.join.android.app.common.utils.m.j(this.f70355k)) {
            W();
            return;
        }
        this.f70356l = true;
        try {
            try {
                GiftPackageBean giftPackageBeanT = this.f70347c.T(U(this.f70357m));
                if (giftPackageBeanT == null || !giftPackageBeanT.getFlag().equals("1")) {
                    W();
                } else {
                    List<GiftPackageDataInfoBean> user = giftPackageBeanT.getMessages().getData().getUser();
                    List<GiftPackageDataInfoBean> recommend = giftPackageBeanT.getMessages().getData().getRecommend();
                    if (user != null && user.size() > 0) {
                        this.f70357m++;
                        showMain(user);
                    } else if (recommend == null || this.f70357m != 1) {
                        W();
                    } else {
                        this.f70360p.clear();
                        this.f70360p.addAll(recommend);
                        showMain();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.f70356l = false;
            Y();
        }
    }

    @Background
    void T(UserInfo accountBean, GiftPackageDataInfoBean bean) {
        try {
            if (!com.join.android.app.common.utils.m.j(this.f70355k)) {
                showToast("领取失败");
                return;
            }
            try {
                GiftPackageOperationBean giftPackageOperationBeanN0 = this.f70347c.N0(RequestBeanUtil.getInstance(this.f70355k.getApplicationContext()).getGiftPackageOperationRequestBean(accountBean.getUid(), bean.getGift_package_id(), bean.getGift_package_game_id()));
                if (giftPackageOperationBeanN0 != null) {
                    if (giftPackageOperationBeanN0.getFlag().equals("0")) {
                        String error_info = giftPackageOperationBeanN0.getError_info();
                        if (error_info == null || !giftPackageOperationBeanN0.getCode().equals(HmIMEManager.ERROR_CODE_NOT_ENABLE)) {
                            return;
                        }
                        showToast(error_info);
                        return;
                    }
                    List<GiftPackageDataOperationBean> data = giftPackageOperationBeanN0.getMessages().getData();
                    if (data == null || data.size() <= 0) {
                        showToast("领取失败");
                        return;
                    }
                    GiftPackageDataOperationBean giftPackageDataOperationBean = data.get(0);
                    bean.setGift_package_status(1);
                    for (int i10 = 0; i10 < this.f70359o.size(); i10++) {
                        GiftPackageDataInfoBean giftPackageDataInfoBean = this.f70359o.get(i10);
                        if (bean.getGift_package_id() == giftPackageDataInfoBean.getGift_package_id()) {
                            giftPackageDataInfoBean.setGift_package_status(1);
                            giftPackageDataInfoBean.setGift_package_overdue(bean.getGift_package_overdue());
                        }
                    }
                    List<GiftPackageDataInfoBean> list = this.f70360p;
                    if (list != null && list.size() > 0) {
                        S();
                    }
                    V(giftPackageDataOperationBean);
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            showToast("领取失败");
        } catch (Throwable th) {
            showToast("领取失败");
            throw th;
        }
    }

    public CommonRequestBean U(int pn) {
        return RequestBeanUtil.getInstance(this.f70355k.getApplicationContext()).getGiftPackageRequestBean(this.f70353i, pn, this.f70358n, "");
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0158  */
    @UiThread
    void V(final GiftPackageDataOperationBean bean) {
        this.f70361q.notifyDataSetChanged();
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f70355k, R.style.MyDialog);
        this.f70364t = tVar;
        tVar.setContentView(R.layout.save_code_dialog);
        this.f70368x = (Button) this.f70364t.findViewById(R.id.dialog_button_cancle);
        Button button = (Button) this.f70364t.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.f70364t.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) this.f70364t.findViewById(R.id.saveCodeTv);
        TextView textView3 = (TextView) this.f70364t.findViewById(R.id.saveCodeContent);
        this.f70366v = (TextView) this.f70364t.findViewById(R.id.moneyText);
        textView.setText("领号成功");
        textView3.setText(bean.getGift_info().getGift_package_code());
        button.setText("关闭");
        this.f70368x.setText("下载游戏");
        DetailResultBean game_info = bean.getGame_info();
        if (game_info != null && game_info.getCrc_sign_id() != null) {
            DownloadTask downloadTaskG = q5.f.M().G(game_info.getCrc_sign_id());
            this.f70365u = downloadTaskG;
            if (downloadTaskG == null) {
                this.f70365u = game_info.getDownloadtaskDown();
                if (UtilsMy.p0(game_info.getTag_info())) {
                    this.f70365u.setFileType(Dtype.android.name());
                    if (com.join.android.app.common.utils.g.t0(this.f70355k.getApplicationContext()).e(this.f70355k.getApplicationContext(), game_info.getPackage_name())) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f70355k.getApplicationContext()).n(this.f70355k.getApplicationContext(), game_info.getPackage_name());
                        if (!com.join.mgps.Util.t2.i(game_info.getVer()) || aVarN.d() >= Integer.parseInt(game_info.getVer())) {
                            this.f70365u.setStatus(5);
                        } else {
                            this.f70365u.setStatus(9);
                        }
                    } else {
                        this.f70365u.setStatus(0);
                    }
                } else {
                    this.f70365u.setStatus(0);
                }
            } else {
                downloadTaskG.setDownloadType(game_info.getDownloadType());
                this.f70365u.setScreenshot_pic(game_info.getScreenshot_pic());
            }
            DownloadTask downloadTask = this.f70365u;
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.x0(game_info.getPay_tag_info(), game_info.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status == 0) {
                this.f70368x.setText("下载游戏");
                UtilsMy.x0(game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                UtilsMy.I3(this.f70368x, game_info.getDown_status(), game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                UtilsMy.B3(game_info.getSp_tag_info(), this.f70366v);
            } else if (status == 5) {
                this.f70368x.setText("启动游戏");
            } else if (status == 9 || status == 43) {
                this.f70368x.setText("下载游戏");
                UtilsMy.x0(game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                UtilsMy.I3(this.f70368x, game_info.getDown_status(), game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                UtilsMy.B3(game_info.getSp_tag_info(), this.f70366v);
            } else {
                this.f70368x.setText("下载中..");
            }
            com.join.mgps.customview.t tVar2 = this.f70364t;
            if (tVar2 != null) {
                if (tVar2.isShowing()) {
                    return;
                } else {
                    this.f70364t.show();
                }
            }
        }
        textView2.setOnClickListener(new f(bean));
        button.setOnClickListener(new g());
        this.f70368x.setOnClickListener(new h(game_info));
    }

    @UiThread
    void W() {
        try {
            if (this.f70357m == 1) {
                this.f70363s.setVisibility(8);
                this.f70348d.setVisibility(8);
                this.f70349e.setVisibility(0);
                this.f70350f.setVisibility(8);
            } else {
                this.f70351g.setNoMore();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void X() {
        try {
            this.f70363s.setVisibility(8);
            this.f70348d.setVisibility(0);
            this.f70349e.setVisibility(8);
            this.f70350f.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void Y() {
        this.f70351g.v();
        this.f70351g.u();
    }

    @AfterViews
    void afterViews() {
        this.f70347c = com.join.mgps.rpc.impl.d.O1();
        this.f70357m = 1;
        com.join.mgps.Util.j0.a().d(this);
        this.f70351g.setPreLoadCount(10);
        this.f70351g.setPullLoadEnable(new b());
        this.f70351g.setPullRefreshEnable(new c());
        this.f70351g.setOnItemClickListener(new d());
        this.f70358n = 20;
        this.f70359o = new ArrayList();
        this.f70360p = new ArrayList();
        this.f70361q = new com.join.mgps.adapter.l(this.f70355k, this.f70359o);
        this.f70362r = new com.join.mgps.adapter.m(this.f70355k, this.f70360p, this.f70367w);
        View viewInflate = LayoutInflater.from(this.f70355k).inflate(R.layout.codes_box_header, (ViewGroup) null);
        this.f70363s = (RelativeLayout) viewInflate.findViewById(R.id.emptyGiftPackageLayout);
        this.f70354j = (TextView) viewInflate.findViewById(R.id.textview_gift_get);
        this.f70363s.setOnClickListener(new e());
        this.f70351g.setAdapter((ListAdapter) this.f70361q);
        this.f70352h.addHeaderView(viewInflate);
        this.f70352h.setAdapter((ListAdapter) this.f70362r);
        X();
        S();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f70355k = context;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f70353i = arguments.getInt("uid");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        com.join.mgps.customview.t tVar = this.f70364t;
        if (tVar != null && tVar.isShowing()) {
            this.f70364t.dismiss();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f70355k = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        if (downloadTaskA == null || this.f70365u == null || !downloadTaskA.getCrc_link_type_val().equals(this.f70365u.getCrc_link_type_val())) {
            return;
        }
        this.f70365u = downloadTaskA;
        int iC = downloadTaskEvent.c();
        if (iC != 5) {
            if (iC == 8) {
                DownloadTask downloadTask = this.f70365u;
                if (downloadTask == null || downloadTask.getPath() == null) {
                    return;
                }
                UtilsMy.U4(this.f70365u);
                return;
            }
            if (iC != 11 && iC != 48) {
                return;
            }
        }
        if (this.f70365u == null || !downloadTaskA.getCrc_link_type_val().equals(this.f70365u.getCrc_link_type_val())) {
            return;
        }
        this.f70365u = downloadTaskA;
    }

    @Click
    void relodingimag() {
        this.f70357m = 1;
        X();
        S();
    }

    @Click
    void setNetwork() {
        Context context = this.f70355k;
        if (context != null) {
            UtilsMy.N3(context);
        }
    }

    @UiThread
    void showMain() {
        if (this.f70355k == null) {
            return;
        }
        try {
            this.f70363s.setVisibility(0);
            this.f70348d.setVisibility(8);
            this.f70349e.setVisibility(8);
            this.f70350f.setVisibility(8);
            this.f70352h.setVisibility(0);
            this.f70362r.notifyDataSetChanged();
            if (this.f70360p.size() == 0) {
                this.f70354j.setText(this.f70355k.getResources().getString(R.string.mygift_no));
            } else {
                this.f70354j.setText(this.f70355k.getResources().getString(R.string.mygift_recommend));
            }
        } catch (Resources.NotFoundException e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showToast(String msg) {
        Context context = this.f70355k;
        if (context != null) {
            com.join.mgps.Util.a3.b(context).d(msg);
        }
    }

    @UiThread
    void showMain(List<GiftPackageDataInfoBean> giftPackageDataBeanList) {
        if (this.f70355k == null) {
            return;
        }
        if (this.f70357m == 2) {
            this.f70359o.clear();
        }
        try {
            this.f70363s.setVisibility(8);
            this.f70348d.setVisibility(8);
            this.f70349e.setVisibility(8);
            this.f70350f.setVisibility(0);
            this.f70352h.setVisibility(8);
            if (giftPackageDataBeanList.size() > 0) {
                this.f70359o.addAll(giftPackageDataBeanList);
                if (giftPackageDataBeanList.size() < this.f70357m) {
                    this.f70351g.setNoMore();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f70361q.notifyDataSetChanged();
    }
}

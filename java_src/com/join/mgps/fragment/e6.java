package com.join.mgps.fragment;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.czhj.sdk.common.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.HotVoucherActivity_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountVoucher;
import com.join.mgps.dto.AccountVoucherAd;
import com.join.mgps.dto.AccountVoucherGameBean;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.ResultMyVoucherBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_my_voucher)
public class e6 extends com.join.mgps.basefragment.a implements w6.a.InterfaceC1253a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    XListView2 f69447d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.join.mgps.rpc.o f69448e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f69449f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f69450g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f69451h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TextView f69452i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f69453j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private LinearLayout f69454k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private LinearLayout f69455l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f69456m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.join.mgps.adapter.s4 f69457n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List<Object> f69458o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private AccountVoucherAd f69459p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f69460q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Context f69461r;

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            e6.Z(e6.this);
            e6.this.loadData();
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            e6.this.f69450g = 1;
            e6.this.loadData();
        }
    }

    static /* synthetic */ int Z(e6 e6Var) {
        int i10 = e6Var.f69450g;
        e6Var.f69450g = i10 + 1;
        return i10;
    }

    @Override // com.join.mgps.basefragment.a
    protected int P() {
        return R.layout.fragment_my_voucher;
    }

    @Override // com.join.mgps.basefragment.a
    public int Q() {
        return R.id.layout_my_voucher;
    }

    public AccountVoucherAd a0() {
        return this.f69459p;
    }

    @AfterViews
    void afterViews() {
        this.f69448e = com.join.mgps.rpc.impl.n.i();
        this.f69461r = getContext();
        this.f69458o = new ArrayList();
        com.join.mgps.adapter.s4 s4Var = new com.join.mgps.adapter.s4(this.f69458o, getContext());
        this.f69457n = s4Var;
        this.f69447d.setAdapter((ListAdapter) s4Var);
        this.f69447d.setPreLoadCount(10);
        this.f69447d.setPullLoadEnable(new a());
        this.f69447d.setPullRefreshEnable(new b());
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.search_failed_header, (ViewGroup) null);
        this.f69451h = viewInflate;
        this.f69454k = (LinearLayout) viewInflate.findViewById(R.id.searchHeaderLayout);
        this.f69455l = (LinearLayout) this.f69451h.findViewById(R.id.messageLayout);
        this.f69452i = (TextView) this.f69451h.findViewById(R.id.messageHeader);
        TextView textView = (TextView) this.f69451h.findViewById(R.id.textView2);
        this.f69453j = textView;
        textView.setText(getString(R.string.voucher_my_number));
        this.f69452i.setText(getString(R.string.voucher_my_no));
        this.f69447d.addHeaderView(this.f69451h);
        w6.a.b().a(this);
        loadData();
    }

    @Click
    void b0() {
        HotVoucherActivity_.intent(this).start();
    }

    @UiThread
    void c0() {
        this.f69447d.setNoMore();
    }

    @UiThread
    void d0(PapayVoucherResultMain<ResultMyVoucherBean> args) {
        List<AccountVoucherGameBean> recommend = args.getData().getRecommend();
        this.f69456m = true;
        this.f69458o.clear();
        if (recommend == null || recommend.size() <= 0) {
            this.f69455l.setVisibility(8);
            this.f69454k.setBackgroundResource(R.color.activity_default_background);
        } else {
            this.f69458o.addAll(recommend);
            this.f69455l.setVisibility(0);
            this.f69454k.setBackgroundResource(R.drawable.white_drawable);
        }
        g0();
        c0();
        this.f69447d.g();
        if (recommend == null || recommend.size() <= 0) {
            this.f69447d.e();
        }
    }

    @UiThread
    void e0() {
        Toast.makeText(getContext(), getString(R.string.net_connect_failed), 0).show();
    }

    @UiThread
    void f0() {
        this.f69447d.u();
        this.f69447d.v();
    }

    @UiThread
    void g0() {
        if (this.f69456m && this.f69450g == 1) {
            this.f69454k.setVisibility(0);
        } else {
            this.f69454k.setVisibility(8);
        }
        if (this.f69458o.size() == 0) {
            this.f69447d.g();
        } else {
            this.f69447d.q();
        }
        if (this.f69460q) {
            this.f69449f.setVisibility(0);
        } else {
            this.f69449f.setVisibility(8);
        }
        S();
        this.f69457n.notifyDataSetChanged();
    }

    @UiThread
    void h0() {
        g0();
    }

    @Override // com.join.mgps.basefragment.a
    @Background
    public void loadData() {
        Context context = this.f69461r;
        if (context == null) {
            return;
        }
        if (com.join.android.app.common.utils.m.j(context)) {
            try {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(this.f69461r).getUid());
                linkedMultiValueMap.add(Constants.TOKEN, AccountUtil_.getInstance_(this.f69461r).getToken());
                linkedMultiValueMap.add("page", this.f69450g + "");
                linkedMultiValueMap.add("limit", "10");
                PapayVoucherResultMain<ResultMyVoucherBean> papayVoucherResultMainF = this.f69448e.f(linkedMultiValueMap);
                if (papayVoucherResultMainF == null) {
                    showLodingFailed();
                } else if (papayVoucherResultMainF.getError() == 0) {
                    List<AccountVoucher> coupons = papayVoucherResultMainF.getData().getCoupons();
                    this.f69459p = papayVoucherResultMainF.getData().getAd();
                    this.f69460q = papayVoucherResultMainF.getData().is_show_recommend_bar();
                    if (coupons != null) {
                        if (coupons.size() > 0) {
                            if (this.f69450g == 1) {
                                this.f69458o.clear();
                                this.f69458o.addAll(coupons);
                                this.f69456m = false;
                            } else {
                                this.f69458o.addAll(coupons);
                            }
                            g0();
                            if (coupons.size() <= 10) {
                                c0();
                            }
                        } else if (this.f69450g == 1) {
                            d0(papayVoucherResultMainF);
                        }
                    } else if (this.f69450g == 1) {
                        d0(papayVoucherResultMainF);
                    }
                } else if (this.f69450g == 1) {
                    showLodingFailed();
                } else {
                    c0();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showLodingFailed();
            }
        } else {
            showLodingFailed();
            e0();
        }
        f0();
    }

    @Override // w6.a.InterfaceC1253a
    public void onAppMsgChange() {
        this.f69450g = 1;
        this.f69447d.q();
        loadData();
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        w6.a.b().d(this);
    }

    @UiThread
    void showLodingFailed() {
        List<Object> list = this.f69458o;
        if (list == null || list.size() == 0) {
            V();
        }
    }
}

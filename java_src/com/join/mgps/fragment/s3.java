package com.join.mgps.fragment;

import android.content.Context;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.GameSignleCompanyListbean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.game_single_conpany_layout)
public class s3 extends Fragment implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70869c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    XListView2 f70870d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f70871e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f70872f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    ImageView f70873g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    com.join.mgps.rpc.e f70874h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.join.mgps.adapter.u2 f70875i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Context f70876j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    List<l6.b> f70878l;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f70877k = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f70879m = 1;

    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (s3.this.f70877k) {
                return;
            }
            s3.this.f70879m = 1;
            s3.this.O();
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (s3.this.f70877k) {
                return;
            }
            s3.this.O();
        }
    }

    @Background
    void O() {
        if (!com.join.android.app.common.utils.m.j(this.f70876j)) {
            S();
            showLodingFailed();
            return;
        }
        this.f70877k = true;
        try {
            try {
                ResultMainBean<GameSignleCompanyListbean> resultMainBeanF1 = this.f70874h.f1(P(this.f70879m));
                if (resultMainBeanF1 == null || resultMainBeanF1.getFlag() != 1) {
                    S();
                    showLodingFailed();
                } else {
                    GameSignleCompanyListbean data = resultMainBeanF1.getMessages().getData();
                    if (data != null) {
                        ArrayList arrayList = new ArrayList();
                        List<GameOLHeadAdBean> list = data.getList();
                        if (list != null && list.size() > 0) {
                            l6.b bVar = null;
                            for (int i10 = 0; i10 < list.size(); i10++) {
                                if (i10 == 0 || i10 % 2 == 0) {
                                    bVar = new l6.b();
                                    bVar.c(list.get(i10));
                                } else {
                                    bVar.d(list.get(i10));
                                    arrayList.add(bVar);
                                }
                            }
                            if (list.size() != 0 && list.size() % 2 == 1) {
                                l6.b bVar2 = new l6.b();
                                bVar2.c(list.get(list.size() - 1));
                                arrayList.add(bVar2);
                            }
                            this.f70879m++;
                            showMain(arrayList);
                            S();
                        } else if (this.f70879m == 1) {
                            showLodingFailed();
                        } else {
                            R();
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                S();
                showLodingFailed();
            }
        } finally {
            this.f70877k = false;
        }
    }

    public CommonRequestBean P(int pn) {
        return RequestBeanUtil.getInstance(this.f70876j).getGameOLRequest(pn, 10);
    }

    @Click
    void Q() {
        this.f70879m = 1;
        O();
    }

    @UiThread
    void R() {
        this.f70870d.setNoMore();
    }

    @UiThread
    void S() {
        this.f70870d.u();
        this.f70870d.v();
    }

    @AfterViews
    void afterviews() {
        this.f70874h = com.join.mgps.rpc.impl.d.O1();
        this.f70876j = getActivity();
        com.join.mgps.adapter.u2 u2Var = new com.join.mgps.adapter.u2(this.f70876j);
        this.f70875i = u2Var;
        this.f70878l = u2Var.b();
        showLoding();
        O();
        this.f70870d.setPreLoadCount(10);
        this.f70870d.setPullRefreshEnable(new a());
        this.f70870d.setPullLoadEnable(new b());
        this.f70870d.setOnScrollListener(this);
        this.f70870d.setAdapter((ListAdapter) this.f70875i);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
    }

    @Click
    void relodingimag() {
        this.f70879m = 1;
        showLoding();
        O();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(getActivity());
    }

    @UiThread
    void showLoding() {
        this.f70871e.setVisibility(0);
        this.f70872f.setVisibility(8);
        this.f70869c.setVisibility(8);
    }

    @UiThread
    void showLodingFailed() {
        List<l6.b> list = this.f70878l;
        if (list == null || list.size() == 0) {
            this.f70872f.setVisibility(0);
            this.f70871e.setVisibility(8);
            this.f70869c.setVisibility(8);
        }
    }

    @UiThread
    void showMain(List<l6.b> subList) {
        if (subList == null || subList.size() == 0) {
            return;
        }
        this.f70872f.setVisibility(8);
        this.f70871e.setVisibility(8);
        this.f70869c.setVisibility(0);
        if (this.f70879m == 2) {
            this.f70878l.clear();
        }
        this.f70878l.addAll(subList);
        if (this.f70879m == 2) {
            this.f70878l.size();
        }
        com.join.mgps.Util.g1.d("infoo", this.f70878l.size() + "   showMain");
        this.f70875i.notifyDataSetChanged();
    }
}

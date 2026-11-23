package com.join.mgps.fragment;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.AccountVoucherGame;
import com.join.mgps.dto.ResultMainBean;
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
@EFragment(R.layout.layout_listview)
public class d4 extends e implements com.join.mgps.customview.i, com.join.mgps.customview.j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f69263c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    XListView f69264d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f69265e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f69266f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    com.join.mgps.rpc.b f69267g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f69268h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.join.mgps.adapter.t4 f69269i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<AccountVoucherGame> f69270j;

    @UiThread
    void O() {
        this.f69264d.setNoMore();
    }

    @UiThread
    void P() {
        this.f69264d.q();
        this.f69264d.r();
    }

    @UiThread
    void Q() {
        this.f69266f.setVisibility(8);
        this.f69265e.setVisibility(8);
        this.f69264d.setVisibility(0);
        this.f69269i.notifyDataSetChanged();
    }

    @AfterViews
    void afterViews() {
        this.f69267g = com.join.mgps.rpc.impl.a.c0();
        this.f69263c = getActivity();
        ArrayList arrayList = new ArrayList();
        this.f69270j = arrayList;
        arrayList.add(new AccountVoucherGame());
        this.f69270j.add(new AccountVoucherGame());
        this.f69270j.add(new AccountVoucherGame());
        this.f69270j.add(new AccountVoucherGame());
        com.join.mgps.adapter.t4 t4Var = new com.join.mgps.adapter.t4(this.f69270j, this.f69263c);
        this.f69269i = t4Var;
        this.f69264d.setAdapter((ListAdapter) t4Var);
        Q();
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    @Background
    void loadData() {
        if (!com.join.android.app.common.utils.m.j(this.f69263c)) {
            P();
            showLodingFailed();
            return;
        }
        try {
            ResultMainBean<List<AccountVoucherGame>> resultMainBeanC = this.f69267g.c(new LinkedMultiValueMap());
            if (resultMainBeanC == null) {
                showLodingFailed();
                return;
            }
            if (resultMainBeanC.getFlag() != 1) {
                O();
                return;
            }
            List<AccountVoucherGame> data = resultMainBeanC.getMessages().getData();
            if (data == null) {
                P();
                return;
            }
            if (data.size() <= 0) {
                O();
                return;
            }
            if (this.f69268h == 1) {
                this.f69270j.clear();
                this.f69270j.addAll(data);
            } else {
                this.f69270j.addAll(data);
            }
            Q();
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    @Override // com.join.mgps.customview.i
    public void onLoadMore() {
        this.f69268h++;
        loadData();
    }

    @Override // com.join.mgps.customview.j
    public void onRefresh() {
        this.f69268h = 1;
        loadData();
    }

    @Click
    void relodingimag() {
        this.f69268h = 1;
        showLoding();
        loadData();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f69263c);
    }

    @UiThread
    void showLoding() {
        this.f69265e.setVisibility(0);
        this.f69266f.setVisibility(8);
    }

    @UiThread
    void showLodingFailed() {
        List<AccountVoucherGame> list = this.f69270j;
        if (list == null || list.size() == 0) {
            this.f69266f.setVisibility(0);
            this.f69265e.setVisibility(8);
            this.f69264d.setVisibility(8);
        }
    }
}

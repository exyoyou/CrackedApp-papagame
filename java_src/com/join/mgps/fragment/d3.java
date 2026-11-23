package com.join.mgps.fragment;

import android.content.Context;
import android.view.View;
import android.widget.ListAdapter;
import androidx.constraintlayout.widget.Group;
import com.czhj.sdk.common.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.FriendActivity;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_friend_msg_like)
public class d3 extends e implements com.join.mgps.customview.i, com.join.mgps.adapter.x0.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f69255c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    XListView f69256d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    Group f69257e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f69258f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f69259g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    com.join.mgps.rpc.j f69260h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    com.join.mgps.adapter.x0 f69261i;

    class a implements com.join.mgps.ptr.b {
        a() {
        }

        @Override // com.join.mgps.ptr.b
        public boolean checkCanDoRefresh(PtrFrameLayout frame, View content, View header) {
            return com.join.mgps.ptr.a.checkContentCanBePulledDown(frame, content, header);
        }

        @Override // com.join.mgps.ptr.b
        public void onRefreshBegin(PtrFrameLayout frame) {
            d3.this.refresh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U() {
        XListView xListView = this.f69256d;
        if (xListView != null) {
            xListView.q();
            if (this.f69259g == -1) {
                this.f69256d.setNoMore();
            }
        }
    }

    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public void S() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f69255c;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.f();
        }
    }

    public boolean R() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f69255c;
        if (ptrClassicFrameLayout != null) {
            return ptrClassicFrameLayout.q();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void V() {
        Context context = getContext();
        try {
            if (com.ta.utdid2.android.utils.f.f(context)) {
                String uid = AccountUtil_.getInstance_(context).getUid();
                String token = AccountUtil_.getInstance_(context).getToken();
                HashMap map = new HashMap();
                map.put("uid", uid);
                map.put(Constants.TOKEN, token);
                ResponseModel responseModelL = this.f69260h.l(map);
                if (responseModelL == null || responseModelL.getError() != 0) {
                    T(responseModelL != null ? responseModelL.getMsg() : getString(R.string.loading_failed));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:36:0x0086  */
    @Background
    public void W(int page) {
        Context context = getContext();
        try {
            try {
                int i10 = this.f69259g;
                if (i10 != page && i10 != -1) {
                    if (com.ta.utdid2.android.utils.f.f(context)) {
                        ResponseModel<List<FriendBean>> responseModelF = this.f69260h.f(AccountUtil_.getInstance_(context).getUid(), AccountUtil_.getInstance_(context).getToken(), 10, page);
                        if (responseModelF == null || responseModelF.getError() != 0) {
                            T(responseModelF != null ? responseModelF.getMsg() : getString(R.string.loading_failed));
                        } else {
                            a0(responseModelF.getData(), page);
                            if (responseModelF.getData() == null || responseModelF.getData().size() == 0) {
                                this.f69259g = -1;
                            }
                        }
                    } else {
                        T(getString(R.string.net_connect_failed));
                    }
                    if (this.f69259g != -1) {
                        this.f69258f = page;
                        this.f69259g = 0;
                    }
                    Y();
                    return;
                }
                if (i10 != -1) {
                    this.f69258f = page;
                    this.f69259g = 0;
                }
                Y();
            } catch (Exception e10) {
                e10.printStackTrace();
                if (this.f69259g != -1) {
                    this.f69258f = page;
                    this.f69259g = 0;
                }
            }
        } catch (Throwable th) {
            if (this.f69259g != -1) {
                this.f69258f = page;
                this.f69259g = 0;
            }
            Y();
            throw th;
        }
    }

    void X() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f69255c;
        if (ptrClassicFrameLayout == null) {
            return;
        }
        ptrClassicFrameLayout.j(true);
        this.f69255c.setPtrHandler(new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y() {
        Z();
        this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.b3
            @Override // java.lang.Runnable
            public final void run() {
                this.f69077b.U();
            }
        }, 200L);
    }

    public void Z() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f69255c;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.C();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0(List<FriendBean> data, int page) {
        if (this.f69261i == null || isDetached() || !isAdded()) {
            return;
        }
        if (page == 1) {
            this.f69261i.c().clear();
        }
        if (data != null && data.size() != 0) {
            this.f69261i.c().addAll(data);
        }
        this.f69261i.notifyDataSetChanged();
        if (this.f69257e != null) {
            if (this.f69261i.c().size() == 0) {
                this.f69257e.setVisibility(0);
            } else {
                this.f69257e.setVisibility(8);
            }
        }
    }

    @AfterViews
    void afterViews() {
        this.f69260h = com.join.mgps.rpc.impl.h.p();
        X();
        this.f69256d.setPullLoadEnable(this);
        com.join.mgps.adapter.x0 x0Var = new com.join.mgps.adapter.x0(getContext());
        this.f69261i = x0Var;
        x0Var.g(this);
        this.f69256d.setAdapter((ListAdapter) this.f69261i);
        S();
    }

    @Override // com.join.mgps.adapter.x0.a
    public void f(FriendBean bean) {
        if (getActivity() instanceof FriendActivity) {
            ((FriendActivity) getActivity()).onFriendClick(bean.getRuid() + "");
        }
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (!hidden) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.c3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f69143b.S();
                }
            }, 200L);
            return;
        }
        com.join.mgps.adapter.x0 x0Var = this.f69261i;
        if (x0Var == null || x0Var.c() == null || this.f69261i.c().size() <= 0) {
            return;
        }
        Iterator<FriendBean> it2 = this.f69261i.c().iterator();
        while (it2.hasNext()) {
            it2.next().setReadFlag(1);
        }
        this.f69261i.notifyDataSetChanged();
    }

    @Override // com.join.mgps.customview.i
    public void onLoadMore() {
        W(this.f69258f + 1);
    }

    void refresh() {
        XListView xListView = this.f69256d;
        if (xListView != null) {
            xListView.setPullLoadEnable(this);
        }
        this.f69259g = 0;
        this.f69258f = 1;
        W(1);
    }
}

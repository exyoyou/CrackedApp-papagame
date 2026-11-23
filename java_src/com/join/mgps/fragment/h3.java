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
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_friend_msg_req)
public class h3 extends e implements com.join.mgps.customview.i, com.join.mgps.adapter.b1.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f69754c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    XListView f69755d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    Group f69756e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f69757f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f69758g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    com.join.mgps.rpc.j f69759h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    com.join.mgps.adapter.b1 f69760i;

    class a implements com.join.mgps.ptr.b {
        a() {
        }

        @Override // com.join.mgps.ptr.b
        public boolean checkCanDoRefresh(PtrFrameLayout frame, View content, View header) {
            return com.join.mgps.ptr.a.checkContentCanBePulledDown(frame, content, header);
        }

        @Override // com.join.mgps.ptr.b
        public void onRefreshBegin(PtrFrameLayout frame) {
            h3.this.refresh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U() {
        XListView xListView = this.f69755d;
        if (xListView == null) {
            return;
        }
        xListView.q();
        if (this.f69758g == -1) {
            this.f69755d.setNoMore();
        }
    }

    @Override // com.join.mgps.adapter.b1.a
    public void A(FriendBean bean) {
        Ext ext = new Ext();
        ext.setPosition("1");
        com.papa.sim.statistic.t.l(getContext()).R1(Event.Friendsapplication, ext);
        X(bean.getId(), "REJECT");
    }

    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public void S() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f69754c;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.f();
        }
    }

    public boolean R() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f69754c;
        if (ptrClassicFrameLayout != null) {
            return ptrClassicFrameLayout.q();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:36:0x0086  */
    @Background
    public void V(int page) {
        Context context = getContext();
        try {
            try {
                int i10 = this.f69758g;
                if (i10 != page && i10 != -1) {
                    if (com.ta.utdid2.android.utils.f.f(context)) {
                        ResponseModel<List<FriendBean>> responseModelK = this.f69759h.k(AccountUtil_.getInstance_(context).getUid(), AccountUtil_.getInstance_(context).getToken(), 10, page);
                        if (responseModelK == null || responseModelK.getError() != 0) {
                            T(responseModelK != null ? responseModelK.getMsg() : getString(R.string.loading_failed));
                        } else {
                            b0(responseModelK.getData(), page);
                            if (responseModelK.getData() == null || responseModelK.getData().size() == 0) {
                                this.f69758g = -1;
                            }
                        }
                    } else {
                        T(getString(R.string.net_connect_failed));
                    }
                    if (this.f69758g != -1) {
                        this.f69757f = page;
                        this.f69758g = 0;
                    }
                    Z();
                    return;
                }
                if (i10 != -1) {
                    this.f69757f = page;
                    this.f69758g = 0;
                }
                Z();
            } catch (Exception e10) {
                e10.printStackTrace();
                if (this.f69758g != -1) {
                    this.f69757f = page;
                    this.f69758g = 0;
                }
            }
        } catch (Throwable th) {
            if (this.f69758g != -1) {
                this.f69757f = page;
                this.f69758g = 0;
            }
            Z();
            throw th;
        }
    }

    void W() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f69754c;
        if (ptrClassicFrameLayout == null) {
            return;
        }
        ptrClassicFrameLayout.j(true);
        this.f69754c.setPtrHandler(new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X(int id2, String action) {
        Context context = getContext();
        try {
            if (!com.ta.utdid2.android.utils.f.f(context)) {
                T(getString(R.string.net_connect_failed));
                return;
            }
            String uid = AccountUtil_.getInstance_(context).getUid();
            String token = AccountUtil_.getInstance_(context).getToken();
            HashMap map = new HashMap();
            map.put("uid", uid);
            map.put(Constants.TOKEN, token);
            map.put("id", Integer.valueOf(id2));
            map.put("friendRequestType", action);
            ResponseModel responseModelG = this.f69759h.g(map);
            if (responseModelG == null || responseModelG.getError() != 0) {
                T(responseModelG != null ? responseModelG.getMsg() : getString(R.string.request_failure));
                return;
            }
            Y(id2);
            com.join.mgps.event.w wVar = new com.join.mgps.event.w(4);
            wVar.k(action.equals("ACCEPT"));
            org.greenrobot.eventbus.c.f().q(wVar);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y(int id2) {
        com.join.mgps.adapter.b1 b1Var = this.f69760i;
        if (b1Var == null) {
            return;
        }
        Iterator<FriendBean> it2 = b1Var.e().iterator();
        while (it2.hasNext()) {
            if (id2 == it2.next().getId()) {
                it2.remove();
            }
        }
        this.f69760i.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z() {
        a0();
        this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.f3
            @Override // java.lang.Runnable
            public final void run() {
                this.f69524b.U();
            }
        }, 200L);
    }

    public void a0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f69754c;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.C();
        }
    }

    @AfterViews
    void afterViews() {
        this.f69759h = com.join.mgps.rpc.impl.h.p();
        W();
        this.f69755d.setPullLoadEnable(this);
        com.join.mgps.adapter.b1 b1Var = new com.join.mgps.adapter.b1(getContext());
        this.f69760i = b1Var;
        b1Var.k(this);
        this.f69755d.setAdapter((ListAdapter) this.f69760i);
        S();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0(List<FriendBean> data, int page) {
        if (page == 1) {
            this.f69760i.e().clear();
        }
        if (data != null && data.size() != 0) {
            this.f69760i.e().addAll(data);
        }
        this.f69760i.notifyDataSetChanged();
        if (this.f69756e != null) {
            if (this.f69760i.e().size() == 0) {
                this.f69756e.setVisibility(0);
            } else {
                this.f69756e.setVisibility(8);
            }
        }
    }

    @Override // com.join.mgps.adapter.b1.a
    public void f(FriendBean bean) {
        if (getActivity() instanceof FriendActivity) {
            ((FriendActivity) getActivity()).onFriendClick(bean.getUid() + "");
        }
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.g3
            @Override // java.lang.Runnable
            public final void run() {
                this.f69646b.S();
            }
        }, 200L);
    }

    @Override // com.join.mgps.customview.i
    public void onLoadMore() {
        V(this.f69757f + 1);
    }

    void refresh() {
        XListView xListView = this.f69755d;
        if (xListView != null) {
            xListView.setPullLoadEnable(this);
        }
        this.f69758g = 0;
        this.f69757f = 1;
        V(1);
    }

    @Override // com.join.mgps.adapter.b1.a
    public void s(FriendBean bean) {
        Ext ext = new Ext();
        ext.setPosition("0");
        com.papa.sim.statistic.t.l(getContext()).R1(Event.Friendsapplication, ext);
        X(bean.getId(), "ACCEPT");
    }
}

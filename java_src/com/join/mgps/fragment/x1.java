package com.join.mgps.fragment;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.FriendActivity;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.ResponseModel;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_friend_add)
public class x1 extends e implements com.join.mgps.adapter.j0.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    EditText f71445c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    View f71446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    KeyboardListenLayout f71447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    RecyclerView f71448f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f71449g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    ImageView f71450h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    TextView f71451i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    com.join.mgps.adapter.j0 f71452j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    com.join.mgps.rpc.j f71453k;

    class a extends com.join.mgps.base.decoration.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.decoration.b.a f71454e;

        a(final com.join.mgps.base.decoration.b.a val$colorDecoration) {
            this.f71454e = val$colorDecoration;
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            return this.f71454e;
        }
    }

    class b implements KeyboardListenLayout.a {
        b() {
        }

        @Override // com.join.mgps.customview.KeyboardListenLayout.a
        public void onHidden() {
        }

        @Override // com.join.mgps.customview.KeyboardListenLayout.a
        public void onShown() {
            x1 x1Var = x1.this;
            x1Var.R(x1Var.f71445c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S() {
        EditText editText = this.f71445c;
        if (editText != null) {
            editText.setText("");
        }
        TextView textView = this.f71449g;
        if (textView != null) {
            textView.setVisibility(8);
        }
        com.join.mgps.adapter.j0 j0Var = this.f71452j;
        if (j0Var != null) {
            j0Var.b().clear();
            this.f71452j.notifyDataSetChanged();
        }
    }

    private void U() {
        this.f71445c.setText("");
        this.f71449g.setVisibility(8);
        this.f71448f.setVisibility(8);
        this.f71450h.setVisibility(8);
        this.f71451i.setVisibility(8);
    }

    @Override // com.join.mgps.adapter.j0.a
    public void I(FriendBean bean) {
        Ext ext = new Ext();
        ext.setFrom("2");
        com.papa.sim.statistic.t.l(getContext()).R1(Event.addFriends, ext);
        P(bean);
    }

    @Background
    void P(FriendBean bean) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            FriendReqBean friendReqBean = new FriendReqBean();
            friendReqBean.setUid(accountData.getUid());
            friendReqBean.setToken(accountData.getToken());
            friendReqBean.setRuid(bean.getRuid());
            friendReqBean.setRequestInfo("嘿，交个朋友，少年~(*^▽^*)");
            ResponseModel responseModelI = this.f71453k.i(friendReqBean);
            if (responseModelI != null) {
                if (responseModelI.getError() == 0) {
                    Q(Boolean.TRUE);
                } else {
                    toast(responseModelI.getMsg());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void Q(Boolean f10) {
        com.join.mgps.adapter.j0 j0Var;
        if (!f10.booleanValue() || (j0Var = this.f71452j) == null || j0Var.b().size() <= 0) {
            return;
        }
        this.f71452j.b().get(0).setFriendRequestType("INIT");
        this.f71452j.notifyDataSetChanged();
    }

    void R(View view) {
        W(view);
    }

    @Background
    void V() {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            ResponseModel<List<FriendBean>> responseModelJ = this.f71453k.j(accountData.getUid(), accountData.getToken(), this.f71445c.getText().toString());
            if (responseModelJ != null) {
                if (responseModelJ.getError() != 0 || responseModelJ.getData() == null) {
                    toast(responseModelJ.getMsg());
                } else {
                    updateUi(responseModelJ.getData());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void W(View view) {
        view.setSystemUiVisibility(5894);
    }

    @AfterViews
    void afterViews() {
        Context context = getContext();
        this.f71453k = com.join.mgps.rpc.impl.h.p();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        linearLayoutManager.setOrientation(1);
        this.f71448f.setLayoutManager(linearLayoutManager);
        com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
        aVar.f64116f = 0;
        aVar.f64119c = (int) getResources().getDimension(R.dimen.wdp22);
        this.f71448f.addItemDecoration(new a(aVar));
        com.join.mgps.adapter.j0 j0Var = new com.join.mgps.adapter.j0(context);
        this.f71452j = j0Var;
        this.f71448f.setAdapter(j0Var);
        this.f71447e.setOnSoftKeyboardListener(new b());
        this.f71452j.f(this);
    }

    @Click
    void close() {
        EditText editText = this.f71445c;
        if (editText != null) {
            r7.a.b(editText);
        }
        if (getContext() instanceof FriendActivity) {
            ((FriendActivity) getContext()).pop();
        }
        U();
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
        this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.w1
            @Override // java.lang.Runnable
            public final void run() {
                this.f71426b.S();
            }
        }, 500L);
    }

    @Click
    void search() {
        Context context = getContext();
        r7.a.b(this.f71445c);
        if (!com.ta.utdid2.android.utils.f.f(context)) {
            com.join.mgps.Util.a3.b(context).d(getString(R.string.net_connect_failed));
        } else if (TextUtils.isEmpty(this.f71445c.getText().toString().trim())) {
            com.join.mgps.Util.a3.b(context).d("输入不能为空");
        } else {
            V();
        }
    }

    @UiThread
    void toast(String msg) {
        com.join.mgps.Util.a3.b(getContext()).d(msg);
    }

    @UiThread
    void updateUi(List<FriendBean> data) {
        if (data == null) {
            this.f71449g.setVisibility(8);
            this.f71448f.setVisibility(8);
            this.f71450h.setVisibility(0);
            this.f71451i.setVisibility(0);
            return;
        }
        com.join.mgps.adapter.j0 j0Var = this.f71452j;
        if (j0Var != null) {
            j0Var.b().clear();
            if (data.size() > 0) {
                this.f71449g.setVisibility(0);
                this.f71450h.setVisibility(8);
                this.f71451i.setVisibility(8);
                this.f71448f.setVisibility(0);
                this.f71452j.b().addAll(data);
                this.f71448f.scrollToPosition(0);
            } else {
                this.f71449g.setVisibility(8);
                this.f71450h.setVisibility(0);
                this.f71451i.setVisibility(0);
                this.f71448f.setVisibility(8);
            }
            this.f71452j.notifyDataSetChanged();
        }
    }
}

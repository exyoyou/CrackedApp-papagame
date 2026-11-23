package com.join.mgps.fragment;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Group;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.FriendActivity;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendCardBean;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.ResponseModel;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import java.text.DecimalFormat;
import java.util.HashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_friend_card)
public class j2 extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f69864c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f69865d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    TextView f69866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    TextView f69867f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f69868g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    TextView f69869h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    TextView f69870i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    View f69871j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    View f69872k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    View f69873l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    GridView f69874m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    Group f69875n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    View f69876o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    com.join.mgps.rpc.j f69877p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private FriendCardBean f69878q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    com.join.mgps.adapter.k0 f69879r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    Dialog f69880s = null;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d0(String str, View view) {
        n0(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e0(String str, View view) {
        n0(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f0() {
        if (com.ta.utdid2.android.utils.f.f(getContext())) {
            p0();
            return;
        }
        View view = this.f69876o;
        if (view != null) {
            view.setVisibility(0);
        }
        Group group = this.f69875n;
        if (group != null) {
            group.setVisibility(4);
        }
        View view2 = this.f69873l;
        if (view2 != null) {
            view2.setVisibility(4);
        }
        GridView gridView = this.f69874m;
        if (gridView != null) {
            gridView.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g0(String str, View view) {
        b0(Integer.parseInt(str));
        this.f69880s.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0(View view) {
        this.f69880s.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0(View view) {
        this.f69880s.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0(View view) {
        if (IntentUtil.getInstance().goLogin(view.getContext())) {
            return;
        }
        n0(this.f69864c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k0(View view) {
        if (IntentUtil.getInstance().goLogin(view.getContext())) {
            return;
        }
        n0(this.f69864c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l0(View view) {
        try {
            if (IntentUtil.getInstance().goLogin(view.getContext()) || TextUtils.isEmpty(this.f69864c)) {
                return;
            }
            s0(this.f69864c);
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m0(View view) {
        try {
            Ext ext = new Ext();
            ext.setFrom("0");
            com.papa.sim.statistic.t.l(getContext()).R1(Event.addFriends, ext);
            if (IntentUtil.getInstance().goLogin(view.getContext()) || TextUtils.isEmpty(this.f69864c)) {
                return;
            }
            Z(Integer.parseInt(this.f69864c));
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void Z(int ruid) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            FriendReqBean friendReqBean = new FriendReqBean();
            friendReqBean.setUid(accountData.getUid());
            friendReqBean.setRuid(ruid);
            friendReqBean.setToken(accountData.getToken());
            friendReqBean.setRequestInfo("嘿，交个朋友，少年~(*^▽^*)");
            ResponseModel responseModelI = this.f69877p.i(friendReqBean);
            if (responseModelI != null) {
                if (responseModelI.getError() == 0) {
                    a0(ruid);
                } else {
                    T(responseModelI.getMsg());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void a0(int ruid) {
        T("已发送好友申请");
        FriendCardBean friendCardBean = this.f69878q;
        if (friendCardBean != null) {
            friendCardBean.setFriendStatus(false);
            this.f69878q.setAddFriendStatus(false);
            t0(this.f69878q);
        }
    }

    @AfterViews
    void afterViews() {
        this.f69877p = com.join.mgps.rpc.impl.h.p();
        Context context = getContext();
        com.join.mgps.adapter.k0 k0Var = new com.join.mgps.adapter.k0(getContext());
        this.f69879r = k0Var;
        this.f69874m.setAdapter((ListAdapter) k0Var);
        if (!com.ta.utdid2.android.utils.f.f(context)) {
            this.f69876o.setVisibility(0);
            this.f69872k.setVisibility(4);
            this.f69868g.setVisibility(4);
            this.f69875n.setVisibility(4);
            this.f69873l.setVisibility(4);
            this.f69874m.setVisibility(4);
        }
        q0();
        p0();
    }

    @Background
    void b0(int ruid) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            HashMap map = new HashMap();
            map.put("uid", Integer.valueOf(accountData.getUid()));
            map.put(Constants.TOKEN, accountData.getToken());
            map.put("delUid", Integer.valueOf(ruid));
            ResponseModel responseModelN = this.f69877p.n(map);
            if (responseModelN != null) {
                if (responseModelN.getError() == 0) {
                    c0(ruid);
                } else {
                    T(responseModelN.getMsg());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void c0(int ruid) {
        T("已删除好友");
        FriendCardBean friendCardBean = this.f69878q;
        if (friendCardBean != null) {
            friendCardBean.setFriendStatus(false);
            this.f69878q.setAddFriendStatus(true);
            t0(this.f69878q);
        }
    }

    @Click
    void close() {
        if (getContext() instanceof FriendActivity) {
            ((FriendActivity) getContext()).pop();
        }
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    @Background
    void n0(String ruid) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            HashMap map = new HashMap();
            map.put("uid", Integer.valueOf(accountData.getUid()));
            map.put(Constants.TOKEN, accountData.getToken());
            map.put("likeUid", ruid);
            ResponseModel responseModelH = this.f69877p.h(map);
            if (responseModelH != null) {
                if (responseModelH.getError() == 0) {
                    o0(ruid);
                } else {
                    T(responseModelH.getMsg());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void o0(final String ruid) {
        String str;
        T("点赞成功");
        this.f69878q.setLikeStatus(false);
        FriendCardBean friendCardBean = this.f69878q;
        friendCardBean.setLikeCount(friendCardBean.getLikeCount() + 1);
        DecimalFormat decimalFormat = new DecimalFormat("###.0");
        TextView textView = this.f69869h;
        if (this.f69878q.getLikeCount() < 10000) {
            str = this.f69878q.getLikeCount() + "";
        } else {
            str = decimalFormat.format((this.f69878q.getLikeCount() * 1.0f) / 1000.0f);
        }
        textView.setText(str);
        if (this.f69878q.isLikeStatus()) {
            this.f69871j.setBackgroundResource(R.drawable.ic_like_gray);
            this.f69871j.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.z1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f71542b.d0(ruid, view);
                }
            });
            this.f69869h.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.a2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f68994b.e0(ruid, view);
                }
            });
        } else {
            this.f69871j.setOnClickListener(null);
            this.f69869h.setOnClickListener(null);
            this.f69871j.setBackgroundResource(R.drawable.ic_like);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f69864c = arguments.getString("ruid");
        }
        super.onCreate(savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            q0();
        } else {
            this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.b2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f69076b.f0();
                }
            }, 500L);
        }
    }

    @Background
    void p0() {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            ResponseModel<FriendCardBean> responseModelC = this.f69877p.c(accountData.getUid() + "", accountData.getToken(), this.f69864c);
            if (responseModelC == null) {
                T(getString(R.string.request_failure));
            } else if (responseModelC.getError() != 0 || responseModelC.getData() == null) {
                T(responseModelC.getMsg());
            } else {
                t0(responseModelC.getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void q0() {
        com.join.mgps.adapter.k0 k0Var = this.f69879r;
        if (k0Var != null) {
            k0Var.b().clear();
            this.f69879r.notifyDataSetChanged();
            this.f69873l.setVisibility(4);
        }
        TextView textView = this.f69866e;
        if (textView != null) {
            textView.setText("---");
        }
        TextView textView2 = this.f69867f;
        if (textView2 != null) {
            textView2.setText("---");
        }
        TextView textView3 = this.f69870i;
        if (textView3 != null) {
            textView3.setText("--");
        }
        TextView textView4 = this.f69869h;
        if (textView4 != null) {
            textView4.setText("--");
        }
        View view = this.f69871j;
        if (view != null) {
            view.setSelected(false);
        }
        View view2 = this.f69872k;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        TextView textView5 = this.f69868g;
        if (textView5 != null) {
            textView5.setVisibility(8);
        }
    }

    public void r0(String ruid) {
        this.f69864c = ruid;
    }

    @UiThread
    void s0(final String ruid) {
        Context context = getContext();
        if (this.f69880s == null) {
            Dialog dialog = new Dialog(context, R.style.newtrans_floating_dialog);
            this.f69880s = dialog;
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                this.f69880s.getWindow().setAttributes(attributes);
            }
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_friend_del_dialog, (ViewGroup) null);
            View viewFindViewById = viewInflate.findViewById(R.id.iv_close);
            View viewFindViewById2 = viewInflate.findViewById(R.id.ok);
            View viewFindViewById3 = viewInflate.findViewById(R.id.cancel);
            viewInflate.setBackgroundResource(R.drawable.shape_invite_battle_bg1);
            this.f69880s.setContentView(viewInflate);
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.wdp526);
            int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.wdp401);
            Window window = this.f69880s.getWindow();
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            if (dimensionPixelOffset == 0) {
                dimensionPixelOffset = -1;
            }
            attributes2.width = dimensionPixelOffset;
            if (dimensionPixelOffset2 == 0) {
                dimensionPixelOffset2 = -1;
            }
            attributes2.height = dimensionPixelOffset2;
            window.setGravity(17);
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.c2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f69141b.g0(ruid, view);
                }
            });
            viewFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.d2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f69254b.h0(view);
                }
            });
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.e2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f69425b.i0(view);
                }
            });
        }
        if (this.f69880s.isShowing()) {
            return;
        }
        this.f69880s.show();
    }

    @UiThread
    void t0(FriendCardBean data) {
        String str;
        if (data == null || isDetached() || !isAdded()) {
            return;
        }
        View view = this.f69876o;
        if (view != null) {
            view.setVisibility(8);
        }
        Group group = this.f69875n;
        if (group != null) {
            group.setVisibility(0);
        }
        GridView gridView = this.f69874m;
        if (gridView != null) {
            gridView.setVisibility(0);
        }
        this.f69878q = data;
        DecimalFormat decimalFormat = new DecimalFormat("###.0");
        TextView textView = this.f69869h;
        if (data.getLikeCount() < 10000) {
            str = data.getLikeCount() + "";
        } else {
            str = decimalFormat.format((data.getLikeCount() * 1.0f) / 10000.0f) + "W";
        }
        textView.setText(str);
        if (data.isLikeStatus()) {
            this.f69871j.setBackgroundResource(R.drawable.ic_like_gray);
            this.f69871j.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.f2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f69523b.j0(view2);
                }
            });
            this.f69869h.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.g2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f69645b.k0(view2);
                }
            });
        } else {
            this.f69871j.setOnClickListener(null);
            this.f69869h.setOnClickListener(null);
            this.f69871j.setBackgroundResource(R.drawable.ic_like);
        }
        if (data.isOnlineStatus()) {
            this.f69870i.setText("在线");
            this.f69870i.setTextColor(Color.parseColor("#FF03DA00"));
        } else {
            this.f69870i.setText("离线");
            this.f69870i.setTextColor(Color.parseColor("#FFC4C4C4"));
        }
        if (data.getUserInfo() != null) {
            FriendBean userInfo = data.getUserInfo();
            com.join.android.app.common.utils.l.y(this.f69865d, userInfo.getAvatar());
            this.f69866e.setText(userInfo.getNickName());
            if (userInfo.getMemberTitle() != null) {
                this.f69867f.setText(userInfo.getMemberTitle().getBattleTitle());
                this.f69867f.setTextColor(Color.parseColor(userInfo.getMemberTitle().getBattleTitleColor()));
            }
            if (userInfo.isVip()) {
                this.f69872k.setVisibility(0);
            } else {
                this.f69872k.setVisibility(8);
            }
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            if (userInfo.getUid() == (accountData != null ? accountData.getUid() : 0)) {
                this.f69868g.setVisibility(8);
            } else {
                this.f69868g.setVisibility(0);
            }
            if (data.isFriendStatus()) {
                this.f69868g.setText("删除好友");
                this.f69868g.setBackgroundResource(R.drawable.shape_friend_del);
                this.f69868g.setTextColor(Color.parseColor("#F5F5F5"));
                this.f69868g.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.h2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f69753b.l0(view2);
                    }
                });
            } else if (data.isAddFriendStatus()) {
                this.f69868g.setText("加好友");
                this.f69868g.setBackgroundResource(R.drawable.shape_friend_add);
                this.f69868g.setTextColor(Color.parseColor("#000000"));
                this.f69868g.setSelected(false);
                this.f69868g.setClickable(true);
                this.f69868g.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.i2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f69821b.m0(view2);
                    }
                });
            } else {
                this.f69868g.setText("已发送");
                this.f69868g.setBackgroundResource(R.drawable.shape_friend_sent);
                this.f69868g.setTextColor(Color.parseColor("#BABABA"));
                this.f69868g.setSelected(true);
                this.f69868g.setClickable(false);
                this.f69868g.setOnClickListener(null);
            }
        }
        if (data.getPlayGameLevels() == null || data.getPlayGameLevels().size() == 0) {
            this.f69873l.setVisibility(0);
            this.f69874m.setVisibility(4);
            return;
        }
        this.f69874m.setVisibility(0);
        this.f69873l.setVisibility(8);
        this.f69879r.b().clear();
        this.f69879r.b().addAll(data.getPlayGameLevels());
        this.f69879r.notifyDataSetChanged();
    }
}

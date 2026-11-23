package com.join.mgps.fragment;

import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.wufan.user.service.protobuf.UserInfo;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.item_shop_fragment)
public class b4 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    RadioButton f69078c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    RadioButton f69079d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    RadioButton f69080e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    RadioButton f69081f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f69082g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    LinearLayout f69083h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f69084i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    LinearLayout f69085j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    FrameLayout f69086k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    RelativeLayout f69087l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    c5 f69088m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    c5 f69089n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    c5 f69090o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    c5 f69091p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    c5 f69092q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    String f69093r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f69094s;

    public void M() {
        c5 c5Var = this.f69088m;
        if (c5Var != null) {
            c5Var.k0();
        }
    }

    void N(FragmentTransaction fragmentTransaction) {
        c5 c5Var = this.f69088m;
        if (c5Var != null) {
            fragmentTransaction.hide(c5Var);
        }
        c5 c5Var2 = this.f69089n;
        if (c5Var2 != null) {
            fragmentTransaction.hide(c5Var2);
        }
        c5 c5Var3 = this.f69090o;
        if (c5Var3 != null) {
            fragmentTransaction.hide(c5Var3);
        }
        c5 c5Var4 = this.f69091p;
        if (c5Var4 != null) {
            fragmentTransaction.hide(c5Var4);
        }
        c5 c5Var5 = this.f69092q;
        if (c5Var5 != null) {
            fragmentTransaction.hide(c5Var5);
        }
    }

    void O() {
        if (this.f69094s == 3) {
            this.f69078c.setTextColor(getResources().getColor(R.color.white));
            this.f69079d.setTextColor(getResources().getColor(R.color.white));
            this.f69081f.setTextColor(getResources().getColor(R.color.white));
            this.f69080e.setTextColor(getResources().getColor(R.color.white));
            this.f69078c.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_nor_bg));
            this.f69079d.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_nor_bg));
            this.f69081f.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_nor_bg));
            this.f69080e.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_nor_bg));
        }
    }

    @Click
    void P() {
        O();
        this.f69079d.setTextColor(getResources().getColor(R.color.main_bar_color));
        this.f69079d.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        X(3);
    }

    @Click
    void Q() {
        if (AccountUtil_.getInstance_(getContext()).getAccountData() == null || AccountUtil_.getInstance_(getContext()).getAccountData().getUid() == 0 || AccountUtil_.getInstance_(getContext()).isTourist()) {
            IntentUtil.getInstance().goLogin(getActivity());
            return;
        }
        O();
        this.f69081f.setTextColor(getResources().getColor(R.color.main_bar_color));
        this.f69081f.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        X(4);
    }

    @Click
    void R() {
        O();
        this.f69080e.setTextColor(getResources().getColor(R.color.main_bar_color));
        this.f69080e.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        X(2);
    }

    @Click
    void S() {
        O();
        this.f69078c.setTextColor(getResources().getColor(R.color.main_bar_color));
        this.f69078c.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        X(1);
    }

    @Click
    void T() {
        O();
        this.f69079d.setTextColor(getResources().getColor(R.color.main_bar_color));
        this.f69079d.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        X(3);
    }

    @Click
    void U() {
        if (AccountUtil_.getInstance_(getContext()).getAccountData() == null || AccountUtil_.getInstance_(getContext()).getAccountData().getUid() == 0 || AccountUtil_.getInstance_(getContext()).isTourist()) {
            IntentUtil.getInstance().goLogin(getActivity());
            return;
        }
        O();
        this.f69081f.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        this.f69081f.setTextColor(getResources().getColor(R.color.main_bar_color));
        X(4);
    }

    @Click
    void V() {
        O();
        this.f69080e.setTextColor(getResources().getColor(R.color.main_bar_color));
        this.f69080e.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        X(2);
    }

    @Click
    void W() {
        O();
        this.f69078c.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        this.f69078c.setTextColor(getResources().getColor(R.color.main_bar_color));
        X(1);
    }

    void X(int type) {
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        N(fragmentTransactionBeginTransaction);
        Bundle bundle = new Bundle();
        if (type == 1) {
            bundle.putInt("type", 1);
            bundle.putInt("typeIndex", this.f69094s);
            bundle.putString("gameid", this.f69093r);
            c5 c5Var = this.f69088m;
            if (c5Var == null) {
                d5 d5Var = new d5();
                this.f69088m = d5Var;
                d5Var.setArguments(bundle);
                fragmentTransactionBeginTransaction.add(R.id.frag_shop, this.f69088m);
            } else {
                fragmentTransactionBeginTransaction.show(c5Var);
            }
        } else if (type == 2) {
            bundle.putInt("type", 2);
            bundle.putString("gameid", this.f69093r);
            bundle.putInt("typeIndex", this.f69094s);
            c5 c5Var2 = this.f69089n;
            if (c5Var2 == null) {
                d5 d5Var2 = new d5();
                this.f69089n = d5Var2;
                d5Var2.setArguments(bundle);
                fragmentTransactionBeginTransaction.add(R.id.frag_shop, this.f69089n);
            } else {
                fragmentTransactionBeginTransaction.show(c5Var2);
            }
        } else if (type == 3) {
            bundle.putInt("type", 3);
            bundle.putString("gameid", this.f69093r);
            bundle.putInt("typeIndex", this.f69094s);
            c5 c5Var3 = this.f69090o;
            if (c5Var3 == null) {
                d5 d5Var3 = new d5();
                this.f69090o = d5Var3;
                d5Var3.setArguments(bundle);
                fragmentTransactionBeginTransaction.add(R.id.frag_shop, this.f69090o);
            } else {
                fragmentTransactionBeginTransaction.show(c5Var3);
            }
        } else if (type == 4) {
            UserInfo userInfo = com.join.mgps.rpc.h.f72329d0;
            if (userInfo == null || userInfo.getUid() == 0 || AccountUtil_.getInstance_(getActivity()).isTourist()) {
                IntentUtil.getInstance().goLogin(getActivity());
                return;
            }
            bundle.putInt("type", 4);
            bundle.putString("gameid", this.f69093r);
            bundle.putInt("typeIndex", this.f69094s);
            c5 c5Var4 = this.f69091p;
            if (c5Var4 == null) {
                d5 d5Var4 = new d5();
                this.f69091p = d5Var4;
                d5Var4.setArguments(bundle);
                fragmentTransactionBeginTransaction.add(R.id.frag_shop, this.f69091p);
            } else {
                fragmentTransactionBeginTransaction.show(c5Var4);
            }
        } else {
            UserInfo userInfo2 = com.join.mgps.rpc.h.f72329d0;
            if (userInfo2 == null || userInfo2.getUid() == 0 || AccountUtil_.getInstance_(getActivity()).isTourist()) {
                IntentUtil.getInstance().goLogin(getActivity());
                return;
            }
            bundle.putInt("type", 1);
            bundle.putString("gameid", this.f69093r);
            bundle.putInt("typeIndex", this.f69094s);
            c5 c5Var5 = this.f69092q;
            if (c5Var5 == null) {
                d5 d5Var5 = new d5();
                this.f69092q = d5Var5;
                d5Var5.setArguments(bundle);
                fragmentTransactionBeginTransaction.add(R.id.frag_shop, this.f69092q);
            } else {
                fragmentTransactionBeginTransaction.show(c5Var5);
            }
        }
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }

    void Y(int type) {
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        N(fragmentTransactionBeginTransaction);
        Bundle bundle = new Bundle();
        if (type == 1) {
            bundle.putInt("type", 1);
            bundle.putInt("typeIndex", this.f69094s);
            bundle.putString("gameid", this.f69093r);
            c5 c5Var = this.f69092q;
            if (c5Var == null) {
                d5 d5Var = new d5();
                this.f69092q = d5Var;
                d5Var.setArguments(bundle);
                fragmentTransactionBeginTransaction.add(R.id.frag_shop, this.f69092q);
            } else {
                fragmentTransactionBeginTransaction.show(c5Var);
            }
        }
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }

    @AfterViews
    void afterView() {
        this.f69093r = getArguments().getString("gameid");
        this.f69094s = getArguments().getInt("type");
        this.f69078c.setChecked(true);
        O();
        this.f69078c.setTextColor(getResources().getColor(R.color.main_bar_color));
        this.f69078c.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        if (this.f69094s == 3) {
            this.f69087l.setVisibility(0);
            X(1);
            return;
        }
        UserInfo userInfo = com.join.mgps.rpc.h.f72329d0;
        if (userInfo == null || userInfo.getUid() == 0 || AccountUtil_.getInstance_(getActivity()).isTourist()) {
            IntentUtil.getInstance().goLogin(getActivity());
        } else {
            this.f69087l.setVisibility(8);
            X(5);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        c5 c5Var;
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        if (this.f69094s == 4 && this.f69092q != null) {
            UserInfo userInfo = com.join.mgps.rpc.h.f72329d0;
            if (userInfo == null || userInfo.getUid() == 0 || AccountUtil_.getInstance_(getActivity()).isTourist()) {
                IntentUtil.getInstance().goLogin(getActivity());
                return;
            }
            this.f69092q.j0();
        }
        if (this.f69094s != 3 || (c5Var = this.f69088m) == null) {
            return;
        }
        c5Var.i0();
    }
}

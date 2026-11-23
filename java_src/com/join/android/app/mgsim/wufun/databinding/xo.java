package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class xo implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47322d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47323e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47324f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47325g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47326h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47327i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final GridView f47328j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f47329k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f47330l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f47331m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f47332n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f47333o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f47334p;

    private xo(@NonNull LinearLayout rootView, @NonNull ImageView ivArrow, @NonNull SimpleDraweeView ivUserAvatar, @NonNull ImageView ivUserVip, @NonNull LinearLayout llCopper, @NonNull LinearLayout llMembers, @NonNull LinearLayout llSvip, @NonNull LinearLayout llUserinfo, @NonNull GridView mGridView, @NonNull TextView tvUserAccount, @NonNull TextView tvUserCoppers, @NonNull TextView tvUserMember, @NonNull TextView tvUserNickname, @NonNull TextView tvUserRank, @NonNull TextView tvUserSvip) {
        this.f47320b = rootView;
        this.f47321c = ivArrow;
        this.f47322d = ivUserAvatar;
        this.f47323e = ivUserVip;
        this.f47324f = llCopper;
        this.f47325g = llMembers;
        this.f47326h = llSvip;
        this.f47327i = llUserinfo;
        this.f47328j = mGridView;
        this.f47329k = tvUserAccount;
        this.f47330l = tvUserCoppers;
        this.f47331m = tvUserMember;
        this.f47332n = tvUserNickname;
        this.f47333o = tvUserRank;
        this.f47334p = tvUserSvip;
    }

    @NonNull
    public static xo bind(@NonNull View rootView) {
        int i10 = R.id.iv_arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_arrow);
        if (imageView != null) {
            i10 = R.id.iv_user_avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_user_avatar);
            if (simpleDraweeView != null) {
                i10 = R.id.iv_user_vip;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_user_vip);
                if (imageView2 != null) {
                    i10 = R.id.ll_copper;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_copper);
                    if (linearLayout != null) {
                        i10 = R.id.ll_members;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_members);
                        if (linearLayout2 != null) {
                            i10 = R.id.ll_svip;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_svip);
                            if (linearLayout3 != null) {
                                i10 = R.id.ll_userinfo;
                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_userinfo);
                                if (linearLayout4 != null) {
                                    i10 = R.id.mGridView;
                                    GridView gridView = (GridView) ViewBindings.findChildViewById(rootView, R.id.mGridView);
                                    if (gridView != null) {
                                        i10 = R.id.tv_user_account;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_user_account);
                                        if (textView != null) {
                                            i10 = R.id.tv_user_coppers;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_user_coppers);
                                            if (textView2 != null) {
                                                i10 = R.id.tv_user_member;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_user_member);
                                                if (textView3 != null) {
                                                    i10 = R.id.tv_user_nickname;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_user_nickname);
                                                    if (textView4 != null) {
                                                        i10 = R.id.tv_user_rank;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_user_rank);
                                                        if (textView5 != null) {
                                                            i10 = R.id.tv_user_svip;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_user_svip);
                                                            if (textView6 != null) {
                                                                return new xo((LinearLayout) rootView, imageView, simpleDraweeView, imageView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, gridView, textView, textView2, textView3, textView4, textView5, textView6);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static xo inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47320b;
    }

    @NonNull
    public static xo inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_usercenter, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

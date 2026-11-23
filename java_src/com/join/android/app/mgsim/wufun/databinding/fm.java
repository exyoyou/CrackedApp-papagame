package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class fm implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f38434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38437e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38438f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f38439g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f38440h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f38441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38442j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f38443k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final FrameLayout f38444l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final View f38445m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final View f38446n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f38447o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f38448p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f38449q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f38450r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f38451s;

    private fm(@NonNull FrameLayout rootView, @NonNull ImageView ivCollapseArrow, @NonNull ImageView ivGrowthTip, @NonNull ImageView ivHeaderBg, @NonNull SimpleDraweeView ivIcon, @NonNull ImageView ivLoginBtn, @NonNull ImageView ivSwitchLogin, @NonNull ImageView ivTabBg, @NonNull LinearLayout layoutCollapse, @NonNull ConstraintLayout layoutLoggedIn, @NonNull FrameLayout tabBar, @NonNull View tabLeft, @NonNull View tabRight, @NonNull TextView tvBenefitTitle, @NonNull TextView tvCollapse, @NonNull TextView tvGrowthTip, @NonNull TextView tvUserName, @NonNull ViewPager2 viewPager) {
        this.f38434b = rootView;
        this.f38435c = ivCollapseArrow;
        this.f38436d = ivGrowthTip;
        this.f38437e = ivHeaderBg;
        this.f38438f = ivIcon;
        this.f38439g = ivLoginBtn;
        this.f38440h = ivSwitchLogin;
        this.f38441i = ivTabBg;
        this.f38442j = layoutCollapse;
        this.f38443k = layoutLoggedIn;
        this.f38444l = tabBar;
        this.f38445m = tabLeft;
        this.f38446n = tabRight;
        this.f38447o = tvBenefitTitle;
        this.f38448p = tvCollapse;
        this.f38449q = tvGrowthTip;
        this.f38450r = tvUserName;
        this.f38451s = viewPager;
    }

    @NonNull
    public static fm bind(@NonNull View rootView) {
        int i10 = R.id.ivCollapseArrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivCollapseArrow);
        if (imageView != null) {
            i10 = R.id.ivGrowthTip;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivGrowthTip);
            if (imageView2 != null) {
                i10 = R.id.ivHeaderBg;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivHeaderBg);
                if (imageView3 != null) {
                    i10 = R.id.ivIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivIcon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.ivLoginBtn;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivLoginBtn);
                        if (imageView4 != null) {
                            i10 = R.id.ivSwitchLogin;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivSwitchLogin);
                            if (imageView5 != null) {
                                i10 = R.id.ivTabBg;
                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivTabBg);
                                if (imageView6 != null) {
                                    i10 = R.id.layoutCollapse;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutCollapse);
                                    if (linearLayout != null) {
                                        i10 = R.id.layoutLoggedIn;
                                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.layoutLoggedIn);
                                        if (constraintLayout != null) {
                                            i10 = R.id.tabBar;
                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.tabBar);
                                            if (frameLayout != null) {
                                                i10 = R.id.tabLeft;
                                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.tabLeft);
                                                if (viewFindChildViewById != null) {
                                                    i10 = R.id.tabRight;
                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.tabRight);
                                                    if (viewFindChildViewById2 != null) {
                                                        i10 = R.id.tvBenefitTitle;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvBenefitTitle);
                                                        if (textView != null) {
                                                            i10 = R.id.tvCollapse;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvCollapse);
                                                            if (textView2 != null) {
                                                                i10 = R.id.tvGrowthTip;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGrowthTip);
                                                                if (textView3 != null) {
                                                                    i10 = R.id.tvUserName;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvUserName);
                                                                    if (textView4 != null) {
                                                                        i10 = R.id.viewPager;
                                                                        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                                                                        if (viewPager2 != null) {
                                                                            return new fm((FrameLayout) rootView, imageView, imageView2, imageView3, simpleDraweeView, imageView4, imageView5, imageView6, linearLayout, constraintLayout, frameLayout, viewFindChildViewById, viewFindChildViewById2, textView, textView2, textView3, textView4, viewPager2);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fm inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f38434b;
    }

    @NonNull
    public static fm inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_game_detail_gift, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

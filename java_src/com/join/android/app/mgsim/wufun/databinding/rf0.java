package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.SlidingTabLayout1;

/* JADX INFO: loaded from: classes4.dex */
public final class rf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final bj0 f44334c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f44335d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f44336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ViewPager f44337f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout1 f44338g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f44339h;

    private rf0(@NonNull RelativeLayout rootView, @NonNull bj0 actionBar, @NonNull View lineTop, @NonNull ForumLoadingView loadingView, @NonNull ViewPager mPager, @NonNull SlidingTabLayout1 mTab, @NonNull View viewBg) {
        this.f44333b = rootView;
        this.f44334c = actionBar;
        this.f44335d = lineTop;
        this.f44336e = loadingView;
        this.f44337f = mPager;
        this.f44338g = mTab;
        this.f44339h = viewBg;
    }

    @NonNull
    public static rf0 bind(@NonNull View rootView) {
        int i10 = R.id.actionBar;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionBar);
        if (viewFindChildViewById != null) {
            bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
            i10 = R.id.lineTop;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.lineTop);
            if (viewFindChildViewById2 != null) {
                i10 = R.id.loadingView;
                ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
                if (forumLoadingView != null) {
                    i10 = R.id.mPager;
                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.mPager);
                    if (viewPager != null) {
                        i10 = R.id.mTab;
                        SlidingTabLayout1 slidingTabLayout1 = (SlidingTabLayout1) ViewBindings.findChildViewById(rootView, R.id.mTab);
                        if (slidingTabLayout1 != null) {
                            i10 = R.id.viewBg;
                            View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.viewBg);
                            if (viewFindChildViewById3 != null) {
                                return new rf0((RelativeLayout) rootView, bj0VarBind, viewFindChildViewById2, forumLoadingView, viewPager, slidingTabLayout1, viewFindChildViewById3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44333b;
    }

    @NonNull
    public static rf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_all_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

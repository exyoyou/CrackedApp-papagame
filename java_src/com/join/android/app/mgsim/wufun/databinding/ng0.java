package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumGroupHeaderView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.SlidingTabLayout4;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import ru.noties.scrollable.ScrollableLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class ng0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final bj0 f42319c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f42320d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f42321e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ForumGroupHeaderView f42322f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f42323g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f42324h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42325i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ScrollableLayout f42326j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout4 f42327k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ViewPager f42328l;

    private ng0(@NonNull LinearLayout rootView, @NonNull bj0 actionBar, @NonNull View bottom, @NonNull Button btnSendPosts, @NonNull ForumGroupHeaderView headerView, @NonNull ForumLoadingView loadingView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull RelativeLayout rlOrderBy, @NonNull ScrollableLayout scrollableLayout, @NonNull SlidingTabLayout4 tabsLayout, @NonNull ViewPager viewPager) {
        this.f42318b = rootView;
        this.f42319c = actionBar;
        this.f42320d = bottom;
        this.f42321e = btnSendPosts;
        this.f42322f = headerView;
        this.f42323g = loadingView;
        this.f42324h = mPtrFrame;
        this.f42325i = rlOrderBy;
        this.f42326j = scrollableLayout;
        this.f42327k = tabsLayout;
        this.f42328l = viewPager;
    }

    @NonNull
    public static ng0 bind(@NonNull View rootView) {
        int i10 = R.id.actionBar;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionBar);
        if (viewFindChildViewById != null) {
            bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
            i10 = R.id.bottom;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.bottom);
            if (viewFindChildViewById2 != null) {
                i10 = R.id.btnSendPosts;
                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btnSendPosts);
                if (button != null) {
                    i10 = R.id.headerView;
                    ForumGroupHeaderView forumGroupHeaderView = (ForumGroupHeaderView) ViewBindings.findChildViewById(rootView, R.id.headerView);
                    if (forumGroupHeaderView != null) {
                        i10 = R.id.loadingView;
                        ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
                        if (forumLoadingView != null) {
                            i10 = R.id.mPtrFrame;
                            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                            if (ptrClassicFrameLayout != null) {
                                i10 = R.id.rlOrderBy;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rlOrderBy);
                                if (relativeLayout != null) {
                                    i10 = R.id.scrollableLayout;
                                    ScrollableLayout scrollableLayout = (ScrollableLayout) ViewBindings.findChildViewById(rootView, R.id.scrollableLayout);
                                    if (scrollableLayout != null) {
                                        i10 = R.id.tabsLayout;
                                        SlidingTabLayout4 slidingTabLayout4 = (SlidingTabLayout4) ViewBindings.findChildViewById(rootView, R.id.tabsLayout);
                                        if (slidingTabLayout4 != null) {
                                            i10 = R.id.viewPager;
                                            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                                            if (viewPager != null) {
                                                return new ng0((LinearLayout) rootView, bj0VarBind, viewFindChildViewById2, button, forumGroupHeaderView, forumLoadingView, ptrClassicFrameLayout, relativeLayout, scrollableLayout, slidingTabLayout4, viewPager);
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
    public static ng0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42318b;
    }

    @NonNull
    public static ng0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_group_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumIndexHeaderView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.SlidingTabLayout4;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import ru.noties.scrollable.ScrollableLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class sg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44786c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final bj0 f44787d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ForumIndexHeaderView f44788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44789f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f44790g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f44791h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ScrollableLayout f44792i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout4 f44793j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ViewPager f44794k;

    private sg0(@NonNull RelativeLayout rootView, @NonNull TextView aboutWF, @NonNull bj0 actionPlaceHolder, @NonNull ForumIndexHeaderView headerView, @NonNull RelativeLayout layoutOthers, @NonNull ForumLoadingView loadingView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull ScrollableLayout scrollableLayout, @NonNull SlidingTabLayout4 tabsLayout, @NonNull ViewPager viewPager) {
        this.f44785b = rootView;
        this.f44786c = aboutWF;
        this.f44787d = actionPlaceHolder;
        this.f44788e = headerView;
        this.f44789f = layoutOthers;
        this.f44790g = loadingView;
        this.f44791h = mPtrFrame;
        this.f44792i = scrollableLayout;
        this.f44793j = tabsLayout;
        this.f44794k = viewPager;
    }

    @NonNull
    public static sg0 bind(@NonNull View rootView) {
        int i10 = R.id.aboutWF;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.aboutWF);
        if (textView != null) {
            i10 = R.id.actionPlaceHolder;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionPlaceHolder);
            if (viewFindChildViewById != null) {
                bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
                i10 = R.id.headerView;
                ForumIndexHeaderView forumIndexHeaderView = (ForumIndexHeaderView) ViewBindings.findChildViewById(rootView, R.id.headerView);
                if (forumIndexHeaderView != null) {
                    i10 = R.id.layout_others;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layout_others);
                    if (relativeLayout != null) {
                        i10 = R.id.loadingView;
                        ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
                        if (forumLoadingView != null) {
                            i10 = R.id.mPtrFrame;
                            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                            if (ptrClassicFrameLayout != null) {
                                i10 = R.id.scrollableLayout;
                                ScrollableLayout scrollableLayout = (ScrollableLayout) ViewBindings.findChildViewById(rootView, R.id.scrollableLayout);
                                if (scrollableLayout != null) {
                                    i10 = R.id.tabsLayout;
                                    SlidingTabLayout4 slidingTabLayout4 = (SlidingTabLayout4) ViewBindings.findChildViewById(rootView, R.id.tabsLayout);
                                    if (slidingTabLayout4 != null) {
                                        i10 = R.id.viewPager;
                                        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                                        if (viewPager != null) {
                                            return new sg0((RelativeLayout) rootView, textView, bj0VarBind, forumIndexHeaderView, relativeLayout, forumLoadingView, ptrClassicFrameLayout, scrollableLayout, slidingTabLayout4, viewPager);
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
    public static sg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44785b;
    }

    @NonNull
    public static sg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_index_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

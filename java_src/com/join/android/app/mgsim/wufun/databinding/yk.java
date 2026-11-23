package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout2;

/* JADX INFO: loaded from: classes4.dex */
public final class yk implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f47777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout2 f47778d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewPager f47779e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47780f;

    private yk(@NonNull LinearLayout rootView, @NonNull View lineTop, @NonNull SlidingTabLayout2 mSlidingTabLayout, @NonNull ViewPager mViewpagerV4, @NonNull LinearLayout searchImage) {
        this.f47776b = rootView;
        this.f47777c = lineTop;
        this.f47778d = mSlidingTabLayout;
        this.f47779e = mViewpagerV4;
        this.f47780f = searchImage;
    }

    @NonNull
    public static yk bind(@NonNull View rootView) {
        int i10 = R.id.lineTop;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.lineTop);
        if (viewFindChildViewById != null) {
            i10 = R.id.mSlidingTabLayout;
            SlidingTabLayout2 slidingTabLayout2 = (SlidingTabLayout2) ViewBindings.findChildViewById(rootView, R.id.mSlidingTabLayout);
            if (slidingTabLayout2 != null) {
                i10 = R.id.mViewpagerV4;
                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.mViewpagerV4);
                if (viewPager != null) {
                    i10 = R.id.searchImage;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.searchImage);
                    if (linearLayout != null) {
                        return new yk((LinearLayout) rootView, viewFindChildViewById, slidingTabLayout2, viewPager, linearLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static yk inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47776b;
    }

    @NonNull
    public static yk inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_classify_rank, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

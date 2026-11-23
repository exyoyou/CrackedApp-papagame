package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabLayoutGameDetailImage;

/* JADX INFO: loaded from: classes4.dex */
public final class hr implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f39462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayoutGameDetailImage f39463d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final MViewpagerV4 f39464e;

    private hr(@NonNull ConstraintLayout rootView, @NonNull View bottomLine, @NonNull SlidingTabLayoutGameDetailImage tabLayout1, @NonNull MViewpagerV4 viewPager1) {
        this.f39461b = rootView;
        this.f39462c = bottomLine;
        this.f39463d = tabLayout1;
        this.f39464e = viewPager1;
    }

    @NonNull
    public static hr bind(@NonNull View rootView) {
        int i10 = R.id.bottomLine;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.bottomLine);
        if (viewFindChildViewById != null) {
            i10 = R.id.tabLayout1;
            SlidingTabLayoutGameDetailImage slidingTabLayoutGameDetailImage = (SlidingTabLayoutGameDetailImage) ViewBindings.findChildViewById(rootView, R.id.tabLayout1);
            if (slidingTabLayoutGameDetailImage != null) {
                i10 = R.id.viewPager1;
                MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(rootView, R.id.viewPager1);
                if (mViewpagerV4 != null) {
                    return new hr((ConstraintLayout) rootView, viewFindChildViewById, slidingTabLayoutGameDetailImage, mViewpagerV4);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hr inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39461b;
    }

    @NonNull
    public static hr inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_img_navi, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

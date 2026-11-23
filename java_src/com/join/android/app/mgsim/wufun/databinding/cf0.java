package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabClassifyLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class cf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SlidingTabClassifyLayout f36911c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final MViewpagerV4 f36912d;

    private cf0(@NonNull RelativeLayout rootView, @NonNull SlidingTabClassifyLayout slidingTabLayout, @NonNull MViewpagerV4 viewpagerV4) {
        this.f36910b = rootView;
        this.f36911c = slidingTabLayout;
        this.f36912d = viewpagerV4;
    }

    @NonNull
    public static cf0 bind(@NonNull View rootView) {
        int i10 = R.id.slidingTabLayout;
        SlidingTabClassifyLayout slidingTabClassifyLayout = (SlidingTabClassifyLayout) ViewBindings.findChildViewById(rootView, R.id.slidingTabLayout);
        if (slidingTabClassifyLayout != null) {
            i10 = R.id.viewpagerV4;
            MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(rootView, R.id.viewpagerV4);
            if (mViewpagerV4 != null) {
                return new cf0((RelativeLayout) rootView, slidingTabClassifyLayout, mViewpagerV4);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36910b;
    }

    @NonNull
    public static cf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mew_classify_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

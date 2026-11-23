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
import com.join.mgps.customview.CirclePageIndicator;
import com.join.mgps.customview.RecyclerviewViewpager;

/* JADX INFO: loaded from: classes4.dex */
public final class zc0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CirclePageIndicator f48173c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RecyclerviewViewpager f48174d;

    private zc0(@NonNull ConstraintLayout rootView, @NonNull CirclePageIndicator indicator, @NonNull RecyclerviewViewpager viewpager) {
        this.f48172b = rootView;
        this.f48173c = indicator;
        this.f48174d = viewpager;
    }

    @NonNull
    public static zc0 bind(@NonNull View rootView) {
        int i10 = R.id.indicator;
        CirclePageIndicator circlePageIndicator = (CirclePageIndicator) ViewBindings.findChildViewById(rootView, R.id.indicator);
        if (circlePageIndicator != null) {
            i10 = R.id.viewpager;
            RecyclerviewViewpager recyclerviewViewpager = (RecyclerviewViewpager) ViewBindings.findChildViewById(rootView, R.id.viewpager);
            if (recyclerviewViewpager != null) {
                return new zc0((ConstraintLayout) rootView, circlePageIndicator, recyclerviewViewpager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zc0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f48172b;
    }

    @NonNull
    public static zc0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_simulator_viewpager, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

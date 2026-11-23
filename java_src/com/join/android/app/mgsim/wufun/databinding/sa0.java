package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CarouselViewPager2;

/* JADX INFO: loaded from: classes4.dex */
public final class sa0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CarouselViewPager2 f44705c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f44706d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44707e;

    private sa0(@NonNull RelativeLayout rootView, @NonNull CarouselViewPager2 loopViewPager, @NonNull FrameLayout onlyOne, @NonNull LinearLayout pointGroup) {
        this.f44704b = rootView;
        this.f44705c = loopViewPager;
        this.f44706d = onlyOne;
        this.f44707e = pointGroup;
    }

    @NonNull
    public static sa0 bind(@NonNull View rootView) {
        int i10 = R.id.loopViewPager;
        CarouselViewPager2 carouselViewPager2 = (CarouselViewPager2) ViewBindings.findChildViewById(rootView, R.id.loopViewPager);
        if (carouselViewPager2 != null) {
            i10 = R.id.onlyOne;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.onlyOne);
            if (frameLayout != null) {
                i10 = R.id.point_group;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.point_group);
                if (linearLayout != null) {
                    return new sa0((RelativeLayout) rootView, carouselViewPager2, frameLayout, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static sa0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44704b;
    }

    @NonNull
    public static sa0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_live_hot_header_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

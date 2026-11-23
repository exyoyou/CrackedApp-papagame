package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import me.relex.circleindicator.CircleIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class gv implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f39019c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CircleIndicator f39020d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39021e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39022f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final MultiTouchViewPager f39023g;

    private gv(@NonNull LinearLayout rootView, @NonNull View holder, @NonNull CircleIndicator indicator, @NonNull SimpleDraweeView more, @NonNull LinearLayout parentLayout, @NonNull MultiTouchViewPager viewPager) {
        this.f39018b = rootView;
        this.f39019c = holder;
        this.f39020d = indicator;
        this.f39021e = more;
        this.f39022f = parentLayout;
        this.f39023g = viewPager;
    }

    @NonNull
    public static gv bind(@NonNull View rootView) {
        int i10 = R.id.holder;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.holder);
        if (viewFindChildViewById != null) {
            i10 = R.id.indicator;
            CircleIndicator circleIndicator = (CircleIndicator) ViewBindings.findChildViewById(rootView, R.id.indicator);
            if (circleIndicator != null) {
                i10 = R.id.more;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.more);
                if (simpleDraweeView != null) {
                    LinearLayout linearLayout = (LinearLayout) rootView;
                    i10 = R.id.viewPager;
                    MultiTouchViewPager multiTouchViewPager = (MultiTouchViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                    if (multiTouchViewPager != null) {
                        return new gv(linearLayout, viewFindChildViewById, circleIndicator, simpleDraweeView, linearLayout, multiTouchViewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gv inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39018b;
    }

    @NonNull
    public static gv inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.home_popup_ad_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

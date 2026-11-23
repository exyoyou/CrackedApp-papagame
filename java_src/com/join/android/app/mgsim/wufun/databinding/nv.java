package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class nv implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f42524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42525c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42526d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final MultiTouchViewPager f42527e;

    private nv(@NonNull FrameLayout rootView, @NonNull TextView bottomLayout, @NonNull TextView indicator, @NonNull MultiTouchViewPager pager) {
        this.f42524b = rootView;
        this.f42525c = bottomLayout;
        this.f42526d = indicator;
        this.f42527e = pager;
    }

    @NonNull
    public static nv bind(@NonNull View rootView) {
        int i10 = R.id.bottomLayout;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.bottomLayout);
        if (textView != null) {
            i10 = R.id.indicator;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.indicator);
            if (textView2 != null) {
                i10 = R.id.pager;
                MultiTouchViewPager multiTouchViewPager = (MultiTouchViewPager) ViewBindings.findChildViewById(rootView, R.id.pager);
                if (multiTouchViewPager != null) {
                    return new nv((FrameLayout) rootView, textView, textView2, multiTouchViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static nv inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f42524b;
    }

    @NonNull
    public static nv inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.image_detail_pager, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

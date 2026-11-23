package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.TabPageIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class xd0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f47180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TabPageIndicator f47181d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47182e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ViewPager f47183f;

    private xd0(@NonNull LinearLayout rootView, @NonNull View line, @NonNull TabPageIndicator pageIndicator, @NonNull TextView payNow, @NonNull ViewPager viewPager) {
        this.f47179b = rootView;
        this.f47180c = line;
        this.f47181d = pageIndicator;
        this.f47182e = payNow;
        this.f47183f = viewPager;
    }

    @NonNull
    public static xd0 bind(@NonNull View rootView) {
        int i10 = R.id.line;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
        if (viewFindChildViewById != null) {
            i10 = R.id.pageIndicator;
            TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(rootView, R.id.pageIndicator);
            if (tabPageIndicator != null) {
                i10 = R.id.payNow;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.payNow);
                if (textView != null) {
                    i10 = R.id.viewPager;
                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                    if (viewPager != null) {
                        return new xd0((LinearLayout) rootView, viewFindChildViewById, tabPageIndicator, textView, viewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static xd0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47179b;
    }

    @NonNull
    public static xd0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.live_charm_for_pay_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.InterceptEventViewPager;
import com.join.mgps.customview.TabPageIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class n3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f42170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TabPageIndicator f42171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final hw0 f42172e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final InterceptEventViewPager f42173f;

    private n3(@NonNull LinearLayout rootView, @NonNull View line, @NonNull TabPageIndicator pageIndicator, @NonNull hw0 titleBarLayout, @NonNull InterceptEventViewPager viewPager) {
        this.f42169b = rootView;
        this.f42170c = line;
        this.f42171d = pageIndicator;
        this.f42172e = titleBarLayout;
        this.f42173f = viewPager;
    }

    @NonNull
    public static n3 bind(@NonNull View rootView) {
        int i10 = R.id.line;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
        if (viewFindChildViewById != null) {
            i10 = R.id.pageIndicator;
            TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(rootView, R.id.pageIndicator);
            if (tabPageIndicator != null) {
                i10 = R.id.title_bar_layout;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
                if (viewFindChildViewById2 != null) {
                    hw0 hw0VarBind = hw0.bind(viewFindChildViewById2);
                    i10 = R.id.viewPager;
                    InterceptEventViewPager interceptEventViewPager = (InterceptEventViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                    if (interceptEventViewPager != null) {
                        return new n3((LinearLayout) rootView, viewFindChildViewById, tabPageIndicator, hw0VarBind, interceptEventViewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static n3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42169b;
    }

    @NonNull
    public static n3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_papa_standalone_v2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

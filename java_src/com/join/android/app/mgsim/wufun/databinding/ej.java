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
import com.join.mgps.customview.SlidingTabLayout6;

/* JADX INFO: loaded from: classes4.dex */
public final class ej implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout6 f37984c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final jw0 f37985d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewPager f37986e;

    private ej(@NonNull LinearLayout rootView, @NonNull SlidingTabLayout6 tabLayout, @NonNull jw0 titleLayout, @NonNull ViewPager viewPager) {
        this.f37983b = rootView;
        this.f37984c = tabLayout;
        this.f37985d = titleLayout;
        this.f37986e = viewPager;
    }

    @NonNull
    public static ej bind(@NonNull View rootView) {
        int i10 = R.id.tabLayout;
        SlidingTabLayout6 slidingTabLayout6 = (SlidingTabLayout6) ViewBindings.findChildViewById(rootView, R.id.tabLayout);
        if (slidingTabLayout6 != null) {
            i10 = R.id.titleLayout;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.titleLayout);
            if (viewFindChildViewById != null) {
                jw0 jw0VarBind = jw0.bind(viewFindChildViewById);
                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                if (viewPager != null) {
                    return new ej((LinearLayout) rootView, slidingTabLayout6, jw0VarBind, viewPager);
                }
                i10 = R.id.viewPager;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ej inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37983b;
    }

    @NonNull
    public static ej inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.everday_new_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

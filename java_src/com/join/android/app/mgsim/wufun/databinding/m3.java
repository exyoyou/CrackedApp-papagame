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
public final class m3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f41692c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TabPageIndicator f41693d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final jw0 f41694e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final InterceptEventViewPager f41695f;

    private m3(@NonNull LinearLayout rootView, @NonNull View line, @NonNull TabPageIndicator pageIndicator, @NonNull jw0 titleBarLayout, @NonNull InterceptEventViewPager viewPager) {
        this.f41691b = rootView;
        this.f41692c = line;
        this.f41693d = pageIndicator;
        this.f41694e = titleBarLayout;
        this.f41695f = viewPager;
    }

    @NonNull
    public static m3 bind(@NonNull View rootView) {
        int i10 = R.id.line;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
        if (viewFindChildViewById != null) {
            i10 = R.id.pageIndicator;
            TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(rootView, R.id.pageIndicator);
            if (tabPageIndicator != null) {
                i10 = R.id.title_bar_layout;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
                if (viewFindChildViewById2 != null) {
                    jw0 jw0VarBind = jw0.bind(viewFindChildViewById2);
                    i10 = R.id.viewPager;
                    InterceptEventViewPager interceptEventViewPager = (InterceptEventViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                    if (interceptEventViewPager != null) {
                        return new m3((LinearLayout) rootView, viewFindChildViewById, tabPageIndicator, jw0VarBind, interceptEventViewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static m3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41691b;
    }

    @NonNull
    public static m3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_papa_standalone, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

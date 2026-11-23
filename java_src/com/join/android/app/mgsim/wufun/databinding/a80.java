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
import com.join.mgps.customview.TabPageIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class a80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f35693c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TabPageIndicator f35694d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewPager f35695e;

    private a80(@NonNull LinearLayout rootView, @NonNull View line, @NonNull TabPageIndicator pageIndicator, @NonNull ViewPager viewPager) {
        this.f35692b = rootView;
        this.f35693c = line;
        this.f35694d = pageIndicator;
        this.f35695e = viewPager;
    }

    @NonNull
    public static a80 bind(@NonNull View rootView) {
        int i10 = R.id.line;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
        if (viewFindChildViewById != null) {
            i10 = R.id.pageIndicator;
            TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(rootView, R.id.pageIndicator);
            if (tabPageIndicator != null) {
                i10 = R.id.viewPager;
                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                if (viewPager != null) {
                    return new a80((LinearLayout) rootView, viewFindChildViewById, tabPageIndicator, viewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static a80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35692b;
    }

    @NonNull
    public static a80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.large_singe_game_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

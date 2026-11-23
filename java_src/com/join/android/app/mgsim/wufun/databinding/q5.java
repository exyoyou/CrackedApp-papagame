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
public final class q5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f43706c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TabPageIndicator f43707d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewPager f43708e;

    private q5(@NonNull LinearLayout rootView, @NonNull View line, @NonNull TabPageIndicator pageIndicator, @NonNull ViewPager viewPager) {
        this.f43705b = rootView;
        this.f43706c = line;
        this.f43707d = pageIndicator;
        this.f43708e = viewPager;
    }

    @NonNull
    public static q5 bind(@NonNull View rootView) {
        int i10 = R.id.line;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
        if (viewFindChildViewById != null) {
            i10 = R.id.pageIndicator;
            TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(rootView, R.id.pageIndicator);
            if (tabPageIndicator != null) {
                i10 = R.id.viewPager;
                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                if (viewPager != null) {
                    return new q5((LinearLayout) rootView, viewFindChildViewById, tabPageIndicator, viewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static q5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43705b;
    }

    @NonNull
    public static q5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_voucher_codesbox, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

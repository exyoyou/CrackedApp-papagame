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
public final class x1 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f47035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewPager f47036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TabPageIndicator f47037f;

    private x1(@NonNull LinearLayout rootView, @NonNull LinearLayout fragmentMyGame, @NonNull View lineTop, @NonNull ViewPager mViewpagerV4, @NonNull TabPageIndicator pageIndicator) {
        this.f47033b = rootView;
        this.f47034c = fragmentMyGame;
        this.f47035d = lineTop;
        this.f47036e = mViewpagerV4;
        this.f47037f = pageIndicator;
    }

    @NonNull
    public static x1 bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i10 = R.id.lineTop;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.lineTop);
        if (viewFindChildViewById != null) {
            i10 = R.id.mViewpagerV4;
            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.mViewpagerV4);
            if (viewPager != null) {
                i10 = R.id.pageIndicator;
                TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(rootView, R.id.pageIndicator);
                if (tabPageIndicator != null) {
                    return new x1(linearLayout, linearLayout, viewFindChildViewById, viewPager, tabPageIndicator);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static x1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47033b;
    }

    @NonNull
    public static x1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_game_local, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

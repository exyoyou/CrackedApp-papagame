package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class r1 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44158b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44159c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout f44160d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44161e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44162f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44163g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ViewPager f44164h;

    private r1(@NonNull LinearLayout rootView, @NonNull LinearLayout ivBack, @NonNull SlidingTabLayout tableLayout, @NonNull TextView title, @NonNull RelativeLayout tvBack, @NonNull TextView tvBuildGmae, @NonNull ViewPager viewPager) {
        this.f44158b = rootView;
        this.f44159c = ivBack;
        this.f44160d = tableLayout;
        this.f44161e = title;
        this.f44162f = tvBack;
        this.f44163g = tvBuildGmae;
        this.f44164h = viewPager;
    }

    @NonNull
    public static r1 bind(@NonNull View rootView) {
        int i10 = R.id.iv_back;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_back);
        if (linearLayout != null) {
            i10 = R.id.tableLayout;
            SlidingTabLayout slidingTabLayout = (SlidingTabLayout) ViewBindings.findChildViewById(rootView, R.id.tableLayout);
            if (slidingTabLayout != null) {
                i10 = R.id.title;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                if (textView != null) {
                    i10 = R.id.tv_back;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.tv_back);
                    if (relativeLayout != null) {
                        i10 = R.id.tv_buildGmae;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_buildGmae);
                        if (textView2 != null) {
                            i10 = R.id.viewPager;
                            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                            if (viewPager != null) {
                                return new r1((LinearLayout) rootView, linearLayout, slidingTabLayout, textView, relativeLayout, textView2, viewPager);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static r1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44158b;
    }

    @NonNull
    public static r1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_game_and_profile, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

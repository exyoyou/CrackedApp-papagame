package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class rn0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f44431c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44432d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout f44433e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final MViewpagerV4 f44434f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final fw0 f44435g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f44436h;

    private rn0(@NonNull RelativeLayout rootView, @NonNull View lineTop, @NonNull LinearLayout linearLayoutMain, @NonNull SlidingTabLayout mSlidingTabLayout, @NonNull MViewpagerV4 mViewpagerV4, @NonNull fw0 titleBarLayout, @NonNull View viewBg) {
        this.f44430b = rootView;
        this.f44431c = lineTop;
        this.f44432d = linearLayoutMain;
        this.f44433e = mSlidingTabLayout;
        this.f44434f = mViewpagerV4;
        this.f44435g = titleBarLayout;
        this.f44436h = viewBg;
    }

    @NonNull
    public static rn0 bind(@NonNull View rootView) {
        int i10 = R.id.lineTop;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.lineTop);
        if (viewFindChildViewById != null) {
            i10 = R.id.linearLayoutMain;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayoutMain);
            if (linearLayout != null) {
                i10 = R.id.mSlidingTabLayout;
                SlidingTabLayout slidingTabLayout = (SlidingTabLayout) ViewBindings.findChildViewById(rootView, R.id.mSlidingTabLayout);
                if (slidingTabLayout != null) {
                    i10 = R.id.mViewpagerV4;
                    MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(rootView, R.id.mViewpagerV4);
                    if (mViewpagerV4 != null) {
                        i10 = R.id.title_bar_layout;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
                        if (viewFindChildViewById2 != null) {
                            fw0 fw0VarBind = fw0.bind(viewFindChildViewById2);
                            i10 = R.id.viewBg;
                            View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.viewBg);
                            if (viewFindChildViewById3 != null) {
                                return new rn0((RelativeLayout) rootView, viewFindChildViewById, linearLayout, slidingTabLayout, mViewpagerV4, fw0VarBind, viewFindChildViewById3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rn0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44430b;
    }

    @NonNull
    public static rn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.my_game_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

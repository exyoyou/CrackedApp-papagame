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
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.TabPageIndicator;
import com.join.mgps.customview.XListView2;

/* JADX INFO: loaded from: classes4.dex */
public final class g implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f38632d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XListView2 f38633e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TabPageIndicator f38634f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final gw0 f38635g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ViewPager f38636h;

    private g(@NonNull LinearLayout rootView, @NonNull RelativeLayout layoutOthersList, @NonNull View line, @NonNull XListView2 listview, @NonNull TabPageIndicator pageIndicator, @NonNull gw0 titleBarLayout, @NonNull ViewPager viewPager) {
        this.f38630b = rootView;
        this.f38631c = layoutOthersList;
        this.f38632d = line;
        this.f38633e = listview;
        this.f38634f = pageIndicator;
        this.f38635g = titleBarLayout;
        this.f38636h = viewPager;
    }

    @NonNull
    public static g bind(@NonNull View rootView) {
        int i10 = R.id.layout_others_list;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layout_others_list);
        if (relativeLayout != null) {
            i10 = R.id.line;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
            if (viewFindChildViewById != null) {
                i10 = R.id.listview;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listview);
                if (xListView2 != null) {
                    i10 = R.id.pageIndicator;
                    TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(rootView, R.id.pageIndicator);
                    if (tabPageIndicator != null) {
                        i10 = R.id.title_bar_layout;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
                        if (viewFindChildViewById2 != null) {
                            gw0 gw0VarBind = gw0.bind(viewFindChildViewById2);
                            i10 = R.id.viewPager;
                            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                            if (viewPager != null) {
                                return new g((LinearLayout) rootView, relativeLayout, viewFindChildViewById, xListView2, tabPageIndicator, gw0VarBind, viewPager);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static g inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38630b;
    }

    @NonNull
    public static g inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_arena_gamelist, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

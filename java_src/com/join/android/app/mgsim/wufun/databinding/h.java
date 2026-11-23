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
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.TabPageIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class h implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39072c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f39073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f39074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TabPageIndicator f39075f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ViewPager f39076g;

    private h(@NonNull LinearLayout rootView, @NonNull RelativeLayout layoutOthersList, @NonNull View line, @NonNull XRecyclerView listview, @NonNull TabPageIndicator pageIndicator, @NonNull ViewPager viewPager) {
        this.f39071b = rootView;
        this.f39072c = layoutOthersList;
        this.f39073d = line;
        this.f39074e = listview;
        this.f39075f = pageIndicator;
        this.f39076g = viewPager;
    }

    @NonNull
    public static h bind(@NonNull View rootView) {
        int i10 = R.id.layout_others_list;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layout_others_list);
        if (relativeLayout != null) {
            i10 = R.id.line;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
            if (viewFindChildViewById != null) {
                i10 = R.id.listview;
                XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.listview);
                if (xRecyclerView != null) {
                    i10 = R.id.pageIndicator;
                    TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(rootView, R.id.pageIndicator);
                    if (tabPageIndicator != null) {
                        i10 = R.id.viewPager;
                        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                        if (viewPager != null) {
                            return new h((LinearLayout) rootView, relativeLayout, viewFindChildViewById, xRecyclerView, tabPageIndicator, viewPager);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static h inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39071b;
    }

    @NonNull
    public static h inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_arena_gamelist_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.NestedScrollableHost;

/* JADX INFO: loaded from: classes4.dex */
public final class pn implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final NestedScrollableHost f43443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RecyclerView f43444d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f43445e;

    private pn(@NonNull ConstraintLayout rootView, @NonNull NestedScrollableHost nsTags, @NonNull RecyclerView rvTags, @NonNull ViewPager2 vp) {
        this.f43442b = rootView;
        this.f43443c = nsTags;
        this.f43444d = rvTags;
        this.f43445e = vp;
    }

    @NonNull
    public static pn bind(@NonNull View rootView) {
        int i10 = R.id.nsTags;
        NestedScrollableHost nestedScrollableHost = (NestedScrollableHost) ViewBindings.findChildViewById(rootView, R.id.nsTags);
        if (nestedScrollableHost != null) {
            i10 = R.id.rvTags;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvTags);
            if (recyclerView != null) {
                i10 = R.id.vp;
                ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.vp);
                if (viewPager2 != null) {
                    return new pn((ConstraintLayout) rootView, nestedScrollableHost, recyclerView, viewPager2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pn inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43442b;
    }

    @NonNull
    public static pn inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_my_game_papa_fav_vp, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

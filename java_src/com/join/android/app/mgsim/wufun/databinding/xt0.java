package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;

/* JADX INFO: loaded from: classes4.dex */
public final class xt0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ListView f47431c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f47432d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final gu0 f47433e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ut0 f47434f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f47435g;

    private xt0(@NonNull RelativeLayout rootView, @NonNull ListView autoListView, @NonNull ForumLoadingView loadingView, @NonNull gu0 recommend, @NonNull ut0 searchBarLayout, @NonNull View statubar) {
        this.f47430b = rootView;
        this.f47431c = autoListView;
        this.f47432d = loadingView;
        this.f47433e = recommend;
        this.f47434f = searchBarLayout;
        this.f47435g = statubar;
    }

    @NonNull
    public static xt0 bind(@NonNull View rootView) {
        int i10 = R.id.autoListView;
        ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.autoListView);
        if (listView != null) {
            i10 = R.id.loadingView;
            ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
            if (forumLoadingView != null) {
                i10 = R.id.recommend;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.recommend);
                if (viewFindChildViewById != null) {
                    gu0 gu0VarBind = gu0.bind(viewFindChildViewById);
                    i10 = R.id.search_bar_layout;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.search_bar_layout);
                    if (viewFindChildViewById2 != null) {
                        ut0 ut0VarBind = ut0.bind(viewFindChildViewById2);
                        i10 = R.id.statubar;
                        View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.statubar);
                        if (viewFindChildViewById3 != null) {
                            return new xt0((RelativeLayout) rootView, listView, forumLoadingView, gu0VarBind, ut0VarBind, viewFindChildViewById3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static xt0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47430b;
    }

    @NonNull
    public static xt0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.search_hint_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

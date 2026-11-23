package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;

/* JADX INFO: loaded from: classes4.dex */
public final class tf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45214b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XListView2 f45215c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f45216d;

    private tf0(@NonNull RelativeLayout rootView, @NonNull XListView2 forumPostsList, @NonNull ForumLoadingView loadingView) {
        this.f45214b = rootView;
        this.f45215c = forumPostsList;
        this.f45216d = loadingView;
    }

    @NonNull
    public static tf0 bind(@NonNull View rootView) {
        int i10 = R.id.forum_posts_list;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.forum_posts_list);
        if (xListView2 != null) {
            i10 = R.id.loadingView;
            ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
            if (forumLoadingView != null) {
                return new tf0((RelativeLayout) rootView, xListView2, forumLoadingView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static tf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45214b;
    }

    @NonNull
    public static tf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_all_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

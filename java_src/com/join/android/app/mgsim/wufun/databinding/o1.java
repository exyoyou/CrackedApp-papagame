package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;

/* JADX INFO: loaded from: classes4.dex */
public final class o1 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42578b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final bj0 f42579c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f42580d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f42581e;

    private o1(@NonNull LinearLayout rootView, @NonNull bj0 actionBar, @NonNull XListView2 listView, @NonNull ForumLoadingView loadingView) {
        this.f42578b = rootView;
        this.f42579c = actionBar;
        this.f42580d = listView;
        this.f42581e = loadingView;
    }

    @NonNull
    public static o1 bind(@NonNull View rootView) {
        int i10 = R.id.actionBar;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionBar);
        if (viewFindChildViewById != null) {
            bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listView);
            if (xListView2 != null) {
                ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
                if (forumLoadingView != null) {
                    return new o1((LinearLayout) rootView, bj0VarBind, xListView2, forumLoadingView);
                }
                i10 = R.id.loadingView;
            } else {
                i10 = R.id.listView;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static o1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42578b;
    }

    @NonNull
    public static o1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_forum_posts_tag_select, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

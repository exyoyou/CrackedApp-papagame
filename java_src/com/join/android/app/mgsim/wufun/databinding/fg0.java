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
import com.join.mgps.customview.XListView;

/* JADX INFO: loaded from: classes4.dex */
public final class fg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XListView f38383c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f38384d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f38385e;

    private fg0(@NonNull RelativeLayout rootView, @NonNull XListView listView, @NonNull ForumLoadingView loadingView, @NonNull View requestLayout) {
        this.f38382b = rootView;
        this.f38383c = listView;
        this.f38384d = loadingView;
        this.f38385e = requestLayout;
    }

    @NonNull
    public static fg0 bind(@NonNull View rootView) {
        int i10 = R.id.listView;
        XListView xListView = (XListView) ViewBindings.findChildViewById(rootView, R.id.listView);
        if (xListView != null) {
            i10 = R.id.loadingView;
            ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
            if (forumLoadingView != null) {
                i10 = R.id.requestLayout;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.requestLayout);
                if (viewFindChildViewById != null) {
                    return new fg0((RelativeLayout) rootView, xListView, forumLoadingView, viewFindChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38382b;
    }

    @NonNull
    public static fg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_forum_t_member_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

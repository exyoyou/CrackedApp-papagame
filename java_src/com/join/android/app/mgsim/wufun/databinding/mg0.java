package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView;

/* JADX INFO: loaded from: classes4.dex */
public final class mg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final bj0 f41876c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f41877d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XListView f41878e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f41879f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final FrameLayout f41880g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final cx0 f41881h;

    private mg0(@NonNull LinearLayout rootView, @NonNull bj0 actionbarLayout, @NonNull View bottom, @NonNull XListView listView, @NonNull ForumLoadingView loadingView, @NonNull FrameLayout videoContainer, @NonNull cx0 videoLayout) {
        this.f41875b = rootView;
        this.f41876c = actionbarLayout;
        this.f41877d = bottom;
        this.f41878e = listView;
        this.f41879f = loadingView;
        this.f41880g = videoContainer;
        this.f41881h = videoLayout;
    }

    @NonNull
    public static mg0 bind(@NonNull View rootView) {
        int i10 = R.id.actionbarLayout;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionbarLayout);
        if (viewFindChildViewById != null) {
            bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
            i10 = R.id.bottom;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.bottom);
            if (viewFindChildViewById2 != null) {
                i10 = R.id.listView;
                XListView xListView = (XListView) ViewBindings.findChildViewById(rootView, R.id.listView);
                if (xListView != null) {
                    i10 = R.id.loadingView;
                    ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
                    if (forumLoadingView != null) {
                        i10 = R.id.videoContainer;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.videoContainer);
                        if (frameLayout != null) {
                            i10 = R.id.videoLayout;
                            View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.videoLayout);
                            if (viewFindChildViewById3 != null) {
                                return new mg0((LinearLayout) rootView, bj0VarBind, viewFindChildViewById2, xListView, forumLoadingView, frameLayout, cx0.bind(viewFindChildViewById3));
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41875b;
    }

    @NonNull
    public static mg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_forum_topic_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

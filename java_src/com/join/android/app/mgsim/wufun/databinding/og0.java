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
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class og0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final bj0 f42857c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f42858d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f42859e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f42860f;

    private og0(@NonNull LinearLayout rootView, @NonNull bj0 actionBar, @NonNull XListView2 listView, @NonNull ForumLoadingView loadingView, @NonNull PtrClassicFrameLayout mPtrFrame) {
        this.f42856b = rootView;
        this.f42857c = actionBar;
        this.f42858d = listView;
        this.f42859e = loadingView;
        this.f42860f = mPtrFrame;
    }

    @NonNull
    public static og0 bind(@NonNull View rootView) {
        int i10 = R.id.actionBar;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionBar);
        if (viewFindChildViewById != null) {
            bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
            i10 = R.id.listView;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listView);
            if (xListView2 != null) {
                i10 = R.id.loadingView;
                ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
                if (forumLoadingView != null) {
                    i10 = R.id.mPtrFrame;
                    PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                    if (ptrClassicFrameLayout != null) {
                        return new og0((LinearLayout) rootView, bj0VarBind, xListView2, forumLoadingView, ptrClassicFrameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static og0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42856b;
    }

    @NonNull
    public static og0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_group_member_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

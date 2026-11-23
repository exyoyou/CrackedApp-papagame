package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class y3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f47561c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f47562d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f47563e;

    private y3(@NonNull LinearLayout rootView, @NonNull ForumLoadingView loadingView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull XRecyclerView recyclerView) {
        this.f47560b = rootView;
        this.f47561c = loadingView;
        this.f47562d = mPtrFrame;
        this.f47563e = recyclerView;
    }

    @NonNull
    public static y3 bind(@NonNull View rootView) {
        int i10 = R.id.loadingView;
        ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
        if (forumLoadingView != null) {
            i10 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i10 = R.id.recyclerView;
                XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
                if (xRecyclerView != null) {
                    return new y3((LinearLayout) rootView, forumLoadingView, ptrClassicFrameLayout, xRecyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static y3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47560b;
    }

    @NonNull
    public static y3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_purchased_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

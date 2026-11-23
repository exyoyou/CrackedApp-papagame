package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class d8 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final mj f37320c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ke0 f37321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final xo0 f37322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f37323f;

    private d8(@NonNull ConstraintLayout rootView, @NonNull mj failedLayoutMain, @NonNull ke0 loadingLayoutMain, @NonNull xo0 noData, @NonNull XRecyclerView recycleView) {
        this.f37319b = rootView;
        this.f37320c = failedLayoutMain;
        this.f37321d = loadingLayoutMain;
        this.f37322e = noData;
        this.f37323f = recycleView;
    }

    @NonNull
    public static d8 bind(@NonNull View rootView) {
        int i10 = R.id.failedLayoutMain;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.failedLayoutMain);
        if (viewFindChildViewById != null) {
            mj mjVarBind = mj.bind(viewFindChildViewById);
            i10 = R.id.loadingLayoutMain;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.loadingLayoutMain);
            if (viewFindChildViewById2 != null) {
                ke0 ke0VarBind = ke0.bind(viewFindChildViewById2);
                i10 = R.id.noData;
                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.noData);
                if (viewFindChildViewById3 != null) {
                    xo0 xo0VarBind = xo0.bind(viewFindChildViewById3);
                    i10 = R.id.recycleView;
                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recycleView);
                    if (xRecyclerView != null) {
                        return new d8((ConstraintLayout) rootView, mjVarBind, ke0VarBind, xo0VarBind, xRecyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static d8 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37319b;
    }

    @NonNull
    public static d8 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.categroy_detial_item_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

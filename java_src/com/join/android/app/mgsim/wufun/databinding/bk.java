package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class bk implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f36426c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final mj f36427d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f36428e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ke0 f36429f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RecyclerView f36430g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f36431h;

    private bk(@NonNull LinearLayout rootView, @NonNull XRecyclerView dataList, @NonNull mj failedLayoutMain, @NonNull PtrClassicFrameLayout llMain, @NonNull ke0 loadingLayoutMain, @NonNull RecyclerView tabLayout, @NonNull XRecyclerView typeList) {
        this.f36425b = rootView;
        this.f36426c = dataList;
        this.f36427d = failedLayoutMain;
        this.f36428e = llMain;
        this.f36429f = loadingLayoutMain;
        this.f36430g = tabLayout;
        this.f36431h = typeList;
    }

    @NonNull
    public static bk bind(@NonNull View rootView) {
        int i10 = R.id.dataList;
        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.dataList);
        if (xRecyclerView != null) {
            i10 = R.id.failedLayoutMain;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.failedLayoutMain);
            if (viewFindChildViewById != null) {
                mj mjVarBind = mj.bind(viewFindChildViewById);
                i10 = R.id.ll_main;
                PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.ll_main);
                if (ptrClassicFrameLayout != null) {
                    i10 = R.id.loadingLayoutMain;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.loadingLayoutMain);
                    if (viewFindChildViewById2 != null) {
                        ke0 ke0VarBind = ke0.bind(viewFindChildViewById2);
                        i10 = R.id.tabLayout;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.tabLayout);
                        if (recyclerView != null) {
                            i10 = R.id.typeList;
                            XRecyclerView xRecyclerView2 = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.typeList);
                            if (xRecyclerView2 != null) {
                                return new bk((LinearLayout) rootView, xRecyclerView, mjVarBind, ptrClassicFrameLayout, ke0VarBind, recyclerView, xRecyclerView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bk inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36425b;
    }

    @NonNull
    public static bk inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.findgame_classfy_fragment_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

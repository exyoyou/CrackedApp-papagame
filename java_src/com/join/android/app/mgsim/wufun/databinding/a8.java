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
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class a8 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f35688c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f35689d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final hw0 f35690e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f35691f;

    private a8(@NonNull LinearLayout rootView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull XListView2 rankListView, @NonNull hw0 titleBarLayout, @NonNull View viewBg) {
        this.f35687b = rootView;
        this.f35688c = mPtrFrame;
        this.f35689d = rankListView;
        this.f35690e = titleBarLayout;
        this.f35691f = viewBg;
    }

    @NonNull
    public static a8 bind(@NonNull View rootView) {
        int i10 = R.id.mPtrFrame;
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
        if (ptrClassicFrameLayout != null) {
            i10 = R.id.rankListView;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.rankListView);
            if (xListView2 != null) {
                i10 = R.id.title_bar_layout;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
                if (viewFindChildViewById != null) {
                    hw0 hw0VarBind = hw0.bind(viewFindChildViewById);
                    i10 = R.id.viewBg;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.viewBg);
                    if (viewFindChildViewById2 != null) {
                        return new a8((LinearLayout) rootView, ptrClassicFrameLayout, xListView2, hw0VarBind, viewFindChildViewById2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static a8 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35687b;
    }

    @NonNull
    public static a8 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.category_collection_rank, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

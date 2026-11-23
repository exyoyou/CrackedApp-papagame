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
public final class z7 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XListView2 f48109c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f48110d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final hw0 f48111e;

    private z7(@NonNull LinearLayout rootView, @NonNull XListView2 breakListView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull hw0 titleBarLayout) {
        this.f48108b = rootView;
        this.f48109c = breakListView;
        this.f48110d = mPtrFrame;
        this.f48111e = titleBarLayout;
    }

    @NonNull
    public static z7 bind(@NonNull View rootView) {
        int i10 = R.id.breakListView;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.breakListView);
        if (xListView2 != null) {
            i10 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i10 = R.id.title_bar_layout;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
                if (viewFindChildViewById != null) {
                    return new z7((LinearLayout) rootView, xListView2, ptrClassicFrameLayout, hw0.bind(viewFindChildViewById));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static z7 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48108b;
    }

    @NonNull
    public static z7 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.category_collection_break, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

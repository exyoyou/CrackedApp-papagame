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
public final class ta implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XListView2 f45165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f45166d;

    private ta(@NonNull LinearLayout rootView, @NonNull XListView2 breakListView, @NonNull PtrClassicFrameLayout mPtrFrame) {
        this.f45164b = rootView;
        this.f45165c = breakListView;
        this.f45166d = mPtrFrame;
    }

    @NonNull
    public static ta bind(@NonNull View rootView) {
        int i10 = R.id.breakListView;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.breakListView);
        if (xListView2 != null) {
            i10 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                return new ta((LinearLayout) rootView, xListView2, ptrClassicFrameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ta inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45164b;
    }

    @NonNull
    public static ta inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.collection_break, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

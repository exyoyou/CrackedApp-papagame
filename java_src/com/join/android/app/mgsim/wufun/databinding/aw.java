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
public final class aw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f36096c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final hw0 f36097d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XListView2 f36098e;

    private aw(@NonNull LinearLayout rootView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull hw0 titleBarLayout, @NonNull XListView2 xListView) {
        this.f36095b = rootView;
        this.f36096c = mPtrFrame;
        this.f36097d = titleBarLayout;
        this.f36098e = xListView;
    }

    @NonNull
    public static aw bind(@NonNull View rootView) {
        int i10 = R.id.mPtrFrame;
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
        if (ptrClassicFrameLayout != null) {
            i10 = R.id.title_bar_layout;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
            if (viewFindChildViewById != null) {
                hw0 hw0VarBind = hw0.bind(viewFindChildViewById);
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.xListView);
                if (xListView2 != null) {
                    return new aw((LinearLayout) rootView, ptrClassicFrameLayout, hw0VarBind, xListView2);
                }
                i10 = R.id.xListView;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static aw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36095b;
    }

    @NonNull
    public static aw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.information_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

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
public final class bn0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XListView2 f36483c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f36484d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f36485e;

    private bn0(@NonNull LinearLayout rootView, @NonNull XListView2 listview, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull View viewBg) {
        this.f36482b = rootView;
        this.f36483c = listview;
        this.f36484d = mPtrFrame;
        this.f36485e = viewBg;
    }

    @NonNull
    public static bn0 bind(@NonNull View rootView) {
        int i10 = R.id.listview;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listview);
        if (xListView2 != null) {
            i10 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i10 = R.id.viewBg;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.viewBg);
                if (viewFindChildViewById != null) {
                    return new bn0((LinearLayout) rootView, xListView2, ptrClassicFrameLayout, viewFindChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bn0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36482b;
    }

    @NonNull
    public static bn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.must_play_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

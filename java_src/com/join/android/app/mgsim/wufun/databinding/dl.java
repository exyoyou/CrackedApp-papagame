package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class dl implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XListView2 f37522c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f37523d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ListView f37524e;

    private dl(@NonNull RelativeLayout rootView, @NonNull XListView2 listView2, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull ListView recommendView) {
        this.f37521b = rootView;
        this.f37522c = listView2;
        this.f37523d = mPtrFrame;
        this.f37524e = recommendView;
    }

    @NonNull
    public static dl bind(@NonNull View rootView) {
        int i10 = R.id.listView2;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listView2);
        if (xListView2 != null) {
            i10 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i10 = R.id.recommendView;
                ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.recommendView);
                if (listView != null) {
                    return new dl((RelativeLayout) rootView, xListView2, ptrClassicFrameLayout, listView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static dl inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37521b;
    }

    @NonNull
    public static dl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_codesbox, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class wo implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f46884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f46885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46886e;

    private wo(@NonNull RelativeLayout rootView, @NonNull XRecyclerView mListView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull TextView noData) {
        this.f46883b = rootView;
        this.f46884c = mListView;
        this.f46885d = mPtrFrame;
        this.f46886e = noData;
    }

    @NonNull
    public static wo bind(@NonNull View rootView) {
        int i10 = R.id.mListView;
        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.mListView);
        if (xRecyclerView != null) {
            i10 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i10 = R.id.noData;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.noData);
                if (textView != null) {
                    return new wo((RelativeLayout) rootView, xRecyclerView, ptrClassicFrameLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wo inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46883b;
    }

    @NonNull
    public static wo inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_standardorelite_room, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

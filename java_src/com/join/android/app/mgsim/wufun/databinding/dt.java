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
import com.join.mgps.customview.XListView;

/* JADX INFO: loaded from: classes4.dex */
public final class dt implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XListView f37615c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final hw0 f37616d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f37617e;

    private dt(@NonNull LinearLayout rootView, @NonNull XListView rankListView, @NonNull hw0 titleBarLayout, @NonNull View viewBg) {
        this.f37614b = rootView;
        this.f37615c = rankListView;
        this.f37616d = titleBarLayout;
        this.f37617e = viewBg;
    }

    @NonNull
    public static dt bind(@NonNull View rootView) {
        int i10 = R.id.rankListView;
        XListView xListView = (XListView) ViewBindings.findChildViewById(rootView, R.id.rankListView);
        if (xListView != null) {
            i10 = R.id.title_bar_layout;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
            if (viewFindChildViewById != null) {
                hw0 hw0VarBind = hw0.bind(viewFindChildViewById);
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.viewBg);
                if (viewFindChildViewById2 != null) {
                    return new dt((LinearLayout) rootView, xListView, hw0VarBind, viewFindChildViewById2);
                }
                i10 = R.id.viewBg;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static dt inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37614b;
    }

    @NonNull
    public static dt inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetial_more_service_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

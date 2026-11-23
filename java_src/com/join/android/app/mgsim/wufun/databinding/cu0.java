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

/* JADX INFO: loaded from: classes4.dex */
public final class cu0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37111c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f37112d;

    private cu0(@NonNull LinearLayout rootView, @NonNull LinearLayout searchListFragment, @NonNull XListView2 searchListView) {
        this.f37110b = rootView;
        this.f37111c = searchListFragment;
        this.f37112d = searchListView;
    }

    @NonNull
    public static cu0 bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.searchListView);
        if (xListView2 != null) {
            return new cu0(linearLayout, linearLayout, xListView2);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.searchListView)));
    }

    @NonNull
    public static cu0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37110b;
    }

    @NonNull
    public static cu0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.search_list_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyGridView;

/* JADX INFO: loaded from: classes4.dex */
public final class hk0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39376c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39377d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f39378e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final MyGridView f39379f;

    private hk0(@NonNull LinearLayout rootView, @NonNull TextView giftsTitle, @NonNull LinearLayout layoutContent, @NonNull View lineH, @NonNull MyGridView recomListView) {
        this.f39375b = rootView;
        this.f39376c = giftsTitle;
        this.f39377d = layoutContent;
        this.f39378e = lineH;
        this.f39379f = recomListView;
    }

    @NonNull
    public static hk0 bind(@NonNull View rootView) {
        int i10 = R.id.giftsTitle;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftsTitle);
        if (textView != null) {
            i10 = R.id.layoutContent;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutContent);
            if (linearLayout != null) {
                i10 = R.id.line_h;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line_h);
                if (viewFindChildViewById != null) {
                    i10 = R.id.recomListView;
                    MyGridView myGridView = (MyGridView) ViewBindings.findChildViewById(rootView, R.id.recomListView);
                    if (myGridView != null) {
                        return new hk0((LinearLayout) rootView, textView, linearLayout, viewFindChildViewById, myGridView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hk0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39375b;
    }

    @NonNull
    public static hk0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_gamedetail_recommend, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

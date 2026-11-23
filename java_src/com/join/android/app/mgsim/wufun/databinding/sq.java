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
public final class sq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44917c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44918d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f44919e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final MyGridView f44920f;

    private sq(@NonNull LinearLayout rootView, @NonNull TextView giftsTitle, @NonNull LinearLayout layoutContent, @NonNull View lineH, @NonNull MyGridView recomListView) {
        this.f44916b = rootView;
        this.f44917c = giftsTitle;
        this.f44918d = layoutContent;
        this.f44919e = lineH;
        this.f44920f = recomListView;
    }

    @NonNull
    public static sq bind(@NonNull View rootView) {
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
                        return new sq((LinearLayout) rootView, textView, linearLayout, viewFindChildViewById, myGridView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static sq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44916b;
    }

    @NonNull
    public static sq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_down_and_down, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

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
public final class uq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45813b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45814c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45815d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f45816e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final MyGridView f45817f;

    private uq(@NonNull LinearLayout rootView, @NonNull TextView giftsTitle, @NonNull LinearLayout layoutContent, @NonNull View lineH, @NonNull MyGridView recomListView) {
        this.f45813b = rootView;
        this.f45814c = giftsTitle;
        this.f45815d = layoutContent;
        this.f45816e = lineH;
        this.f45817f = recomListView;
    }

    @NonNull
    public static uq bind(@NonNull View rootView) {
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
                        return new uq((LinearLayout) rootView, textView, linearLayout, viewFindChildViewById, myGridView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static uq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45813b;
    }

    @NonNull
    public static uq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_factory_recommend, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

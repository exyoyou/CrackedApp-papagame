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
public final class xq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f47364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47365d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f47366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final MyGridView f47367f;

    private xq(@NonNull LinearLayout rootView, @NonNull TextView giftsTitle, @NonNull LinearLayout layoutContent, @NonNull View lineH, @NonNull MyGridView recomListView) {
        this.f47363b = rootView;
        this.f47364c = giftsTitle;
        this.f47365d = layoutContent;
        this.f47366e = lineH;
        this.f47367f = recomListView;
    }

    @NonNull
    public static xq bind(@NonNull View rootView) {
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
                        return new xq((LinearLayout) rootView, textView, linearLayout, viewFindChildViewById, myGridView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static xq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47363b;
    }

    @NonNull
    public static xq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_gamerecommendlist, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class e80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f37841c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FlowLayout f37842d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final FlowLayout f37843e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37844f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37845g;

    private e80(@NonNull LinearLayout rootView, @NonNull Button classifySortBt, @NonNull FlowLayout layoutGameClassify, @NonNull FlowLayout layoutGameClassifySort, @NonNull TextView popwindClassifyTv, @NonNull LinearLayout rootLl) {
        this.f37840b = rootView;
        this.f37841c = classifySortBt;
        this.f37842d = layoutGameClassify;
        this.f37843e = layoutGameClassifySort;
        this.f37844f = popwindClassifyTv;
        this.f37845g = rootLl;
    }

    @NonNull
    public static e80 bind(@NonNull View rootView) {
        int i10 = R.id.classifySortBt;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.classifySortBt);
        if (button != null) {
            i10 = R.id.layout_game_classify;
            FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(rootView, R.id.layout_game_classify);
            if (flowLayout != null) {
                i10 = R.id.layout_game_classify_sort;
                FlowLayout flowLayout2 = (FlowLayout) ViewBindings.findChildViewById(rootView, R.id.layout_game_classify_sort);
                if (flowLayout2 != null) {
                    i10 = R.id.popwindClassifyTv;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.popwindClassifyTv);
                    if (textView != null) {
                        i10 = R.id.rootLl;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.rootLl);
                        if (linearLayout != null) {
                            return new e80((LinearLayout) rootView, button, flowLayout, flowLayout2, textView, linearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static e80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37840b;
    }

    @NonNull
    public static e80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_classify_popwindow, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

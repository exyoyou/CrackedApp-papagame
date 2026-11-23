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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class s50 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44658c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44660e;

    private s50(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView ivIcon, @NonNull TextView tvCount, @NonNull TextView tvLabelName) {
        this.f44657b = rootView;
        this.f44658c = ivIcon;
        this.f44659d = tvCount;
        this.f44660e = tvLabelName;
    }

    @NonNull
    public static s50 bind(@NonNull View rootView) {
        int i10 = R.id.iv_icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_icon);
        if (simpleDraweeView != null) {
            i10 = R.id.tv_count;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_count);
            if (textView != null) {
                i10 = R.id.tv_label_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_name);
                if (textView2 != null) {
                    return new s50((LinearLayout) rootView, simpleDraweeView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static s50 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44657b;
    }

    @NonNull
    public static s50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_search_label, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

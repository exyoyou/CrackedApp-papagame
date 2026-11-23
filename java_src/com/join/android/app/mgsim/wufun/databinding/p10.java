package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class p10 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43177d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43179f;

    private p10(@NonNull LinearLayout rootView, @NonNull ImageView ivList, @NonNull ImageView ivPc, @NonNull LinearLayout llMore, @NonNull TextView tvText) {
        this.f43175b = rootView;
        this.f43176c = ivList;
        this.f43177d = ivPc;
        this.f43178e = llMore;
        this.f43179f = tvText;
    }

    @NonNull
    public static p10 bind(@NonNull View rootView) {
        int i10 = R.id.iv_list;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_list);
        if (imageView != null) {
            i10 = R.id.iv_pc;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_pc);
            if (imageView2 != null) {
                i10 = R.id.ll_more;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_more);
                if (linearLayout != null) {
                    i10 = R.id.tv_text;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text);
                    if (textView != null) {
                        return new p10((LinearLayout) rootView, imageView, imageView2, linearLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static p10 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43175b;
    }

    @NonNull
    public static p10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_detail_describe, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

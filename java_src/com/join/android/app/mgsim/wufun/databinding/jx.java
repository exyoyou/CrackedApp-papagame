package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.papa91.arc.widget.htmltext.HtmlTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class jx implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f40468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final HtmlTextView f40469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final HtmlTextView f40470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f40471f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40472g;

    private jx(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clRoot, @NonNull HtmlTextView htv1, @NonNull HtmlTextView htv2, @NonNull ImageView iv1, @NonNull TextView tvText2) {
        this.f40467b = rootView;
        this.f40468c = clRoot;
        this.f40469d = htv1;
        this.f40470e = htv2;
        this.f40471f = iv1;
        this.f40472g = tvText2;
    }

    @NonNull
    public static jx bind(@NonNull View rootView) {
        ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
        int i10 = R.id.htv_1;
        HtmlTextView htmlTextView = (HtmlTextView) ViewBindings.findChildViewById(rootView, R.id.htv_1);
        if (htmlTextView != null) {
            i10 = R.id.htv_2;
            HtmlTextView htmlTextView2 = (HtmlTextView) ViewBindings.findChildViewById(rootView, R.id.htv_2);
            if (htmlTextView2 != null) {
                i10 = R.id.iv_1;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
                if (imageView != null) {
                    i10 = R.id.tv_text_2;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                    if (textView != null) {
                        return new jx(constraintLayout, constraintLayout, htmlTextView, htmlTextView2, imageView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static jx inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f40467b;
    }

    @NonNull
    public static jx inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_cloud_router_1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

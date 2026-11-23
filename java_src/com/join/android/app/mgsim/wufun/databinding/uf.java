package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.WFTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class uf implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f45674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45675c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45676d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final WFTextView f45677e;

    private uf(@NonNull FrameLayout rootView, @NonNull ImageView ivClose, @NonNull TextView tvContent, @NonNull WFTextView tvInstall) {
        this.f45674b = rootView;
        this.f45675c = ivClose;
        this.f45676d = tvContent;
        this.f45677e = tvInstall;
    }

    @NonNull
    public static uf bind(@NonNull View rootView) {
        int i10 = R.id.ivClose;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivClose);
        if (imageView != null) {
            i10 = R.id.tvContent;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvContent);
            if (textView != null) {
                i10 = R.id.tvInstall;
                WFTextView wFTextView = (WFTextView) ViewBindings.findChildViewById(rootView, R.id.tvInstall);
                if (wFTextView != null) {
                    return new uf((FrameLayout) rootView, imageView, textView, wFTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static uf inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f45674b;
    }

    @NonNull
    public static uf inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_game_detail_gift_install_prompt, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

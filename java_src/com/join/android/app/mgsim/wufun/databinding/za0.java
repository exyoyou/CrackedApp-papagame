package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class za0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f48146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f48147c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f48148d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48149e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f48150f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f48151g;

    private za0(@NonNull RelativeLayout rootView, @NonNull ImageView ivClose, @NonNull ImageView ivImage, @NonNull TextView tvBtn1, @NonNull TextView tvText1, @NonNull TextView tvText2) {
        this.f48146b = rootView;
        this.f48147c = ivClose;
        this.f48148d = ivImage;
        this.f48149e = tvBtn1;
        this.f48150f = tvText1;
        this.f48151g = tvText2;
    }

    @NonNull
    public static za0 bind(@NonNull View rootView) {
        int i10 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
        if (imageView != null) {
            i10 = R.id.iv_image;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_image);
            if (imageView2 != null) {
                i10 = R.id.tv_btn_1;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_1);
                if (textView != null) {
                    i10 = R.id.tv_text_1;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                    if (textView2 != null) {
                        i10 = R.id.tv_text_2;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                        if (textView3 != null) {
                            return new za0((RelativeLayout) rootView, imageView, imageView2, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static za0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f48146b;
    }

    @NonNull
    public static za0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_notify_cloud_game_join_success, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

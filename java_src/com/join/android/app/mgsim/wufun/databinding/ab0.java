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
public final class ab0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f35751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f35752c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f35753d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35754e;

    private ab0(@NonNull RelativeLayout rootView, @NonNull ImageView ivImage, @NonNull TextView tvText1, @NonNull TextView tvText2) {
        this.f35751b = rootView;
        this.f35752c = ivImage;
        this.f35753d = tvText1;
        this.f35754e = tvText2;
    }

    @NonNull
    public static ab0 bind(@NonNull View rootView) {
        int i10 = R.id.iv_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_image);
        if (imageView != null) {
            i10 = R.id.tv_text_1;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
            if (textView != null) {
                i10 = R.id.tv_text_2;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                if (textView2 != null) {
                    return new ab0((RelativeLayout) rootView, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ab0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f35751b;
    }

    @NonNull
    public static ab0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_notify_cloud_game_queue, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

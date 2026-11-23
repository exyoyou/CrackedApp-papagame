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

/* JADX INFO: loaded from: classes4.dex */
public final class nu implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f42517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42518c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f42519d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42520e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f42521f;

    private nu(@NonNull FrameLayout rootView, @NonNull TextView dsc, @NonNull ImageView handshankBlueArrowImg, @NonNull TextView handshankName, @NonNull ImageView img) {
        this.f42517b = rootView;
        this.f42518c = dsc;
        this.f42519d = handshankBlueArrowImg;
        this.f42520e = handshankName;
        this.f42521f = img;
    }

    @NonNull
    public static nu bind(@NonNull View rootView) {
        int i10 = R.id.dsc;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dsc);
        if (textView != null) {
            i10 = R.id.handshank_blue_arrow_img;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.handshank_blue_arrow_img);
            if (imageView != null) {
                i10 = R.id.handshank_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.handshank_name);
                if (textView2 != null) {
                    i10 = R.id.img;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img);
                    if (imageView2 != null) {
                        return new nu((FrameLayout) rootView, textView, imageView, textView2, imageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static nu inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f42517b;
    }

    @NonNull
    public static nu inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.handshank_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

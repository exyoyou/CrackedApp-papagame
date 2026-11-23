package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ye0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47694c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47695d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47696e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47697f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47698g;

    private ye0(@NonNull LinearLayout rootView, @NonNull ImageView arrowImage, @NonNull TextView itemCount, @NonNull ImageView itemImage, @NonNull RelativeLayout itemLayout, @NonNull TextView zzz) {
        this.f47693b = rootView;
        this.f47694c = arrowImage;
        this.f47695d = itemCount;
        this.f47696e = itemImage;
        this.f47697f = itemLayout;
        this.f47698g = zzz;
    }

    @NonNull
    public static ye0 bind(@NonNull View rootView) {
        int i10 = R.id.arrowImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arrowImage);
        if (imageView != null) {
            i10 = R.id.itemCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.itemCount);
            if (textView != null) {
                i10 = R.id.itemImage;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.itemImage);
                if (imageView2 != null) {
                    i10 = R.id.itemLayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.itemLayout);
                    if (relativeLayout != null) {
                        i10 = R.id.zzz;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.zzz);
                        if (textView2 != null) {
                            return new ye0((LinearLayout) rootView, imageView, textView, imageView2, relativeLayout, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ye0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47693b;
    }

    @NonNull
    public static ye0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.manage_handshank_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

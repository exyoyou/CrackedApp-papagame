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
public final class x80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47131c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47132d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47133e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47134f;

    private x80(@NonNull LinearLayout rootView, @NonNull LinearLayout llEmpty, @NonNull TextView noneMessage, @NonNull ImageView noneReloadImage, @NonNull TextView setAll) {
        this.f47130b = rootView;
        this.f47131c = llEmpty;
        this.f47132d = noneMessage;
        this.f47133e = noneReloadImage;
        this.f47134f = setAll;
    }

    @NonNull
    public static x80 bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i10 = R.id.noneMessage;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.noneMessage);
        if (textView != null) {
            i10 = R.id.noneReloadImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.noneReloadImage);
            if (imageView != null) {
                i10 = R.id.setAll;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.setAll);
                if (textView2 != null) {
                    return new x80(linearLayout, linearLayout, textView, imageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static x80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47130b;
    }

    @NonNull
    public static x80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_empty_absdk, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

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

/* JADX INFO: loaded from: classes4.dex */
public final class p90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43280b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43281c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43282d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43283e;

    private p90(@NonNull ConstraintLayout rootView, @NonNull ImageView arr, @NonNull ImageView img, @NonNull TextView next) {
        this.f43280b = rootView;
        this.f43281c = arr;
        this.f43282d = img;
        this.f43283e = next;
    }

    @NonNull
    public static p90 bind(@NonNull View rootView) {
        int i10 = R.id.arr;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arr);
        if (imageView != null) {
            i10 = R.id.img;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img);
            if (imageView2 != null) {
                i10 = R.id.next;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.next);
                if (textView != null) {
                    return new p90((ConstraintLayout) rootView, imageView, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static p90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43280b;
    }

    @NonNull
    public static p90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_key_guide_1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

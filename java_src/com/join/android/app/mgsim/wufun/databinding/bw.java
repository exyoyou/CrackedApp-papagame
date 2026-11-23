package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class bw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36621c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36622d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f36623e;

    private bw(@NonNull LinearLayout rootView, @NonNull ImageView imageBottom, @NonNull ImageView imageLeft, @NonNull ImageView imageTop) {
        this.f36620b = rootView;
        this.f36621c = imageBottom;
        this.f36622d = imageLeft;
        this.f36623e = imageTop;
    }

    @NonNull
    public static bw bind(@NonNull View rootView) {
        int i10 = R.id.imageBottom;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageBottom);
        if (imageView != null) {
            i10 = R.id.imageLeft;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageLeft);
            if (imageView2 != null) {
                i10 = R.id.imageTop;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageTop);
                if (imageView3 != null) {
                    return new bw((LinearLayout) rootView, imageView, imageView2, imageView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36620b;
    }

    @NonNull
    public static bw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.information_top_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

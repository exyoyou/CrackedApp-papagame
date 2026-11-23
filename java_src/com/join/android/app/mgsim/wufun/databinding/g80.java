package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.RoundedImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class g80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f38754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RoundedImageView f38755c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38756d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38757e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38758f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38759g;

    private g80(@NonNull FrameLayout rootView, @NonNull RoundedImageView rivView, @NonNull TextView tvLabel1, @NonNull TextView tvLabel2, @NonNull TextView tvLabel3, @NonNull TextView tvText1) {
        this.f38754b = rootView;
        this.f38755c = rivView;
        this.f38756d = tvLabel1;
        this.f38757e = tvLabel2;
        this.f38758f = tvLabel3;
        this.f38759g = tvText1;
    }

    @NonNull
    public static g80 bind(@NonNull View rootView) {
        int i10 = R.id.riv_view;
        RoundedImageView roundedImageView = (RoundedImageView) ViewBindings.findChildViewById(rootView, R.id.riv_view);
        if (roundedImageView != null) {
            i10 = R.id.tv_label_1;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_1);
            if (textView != null) {
                i10 = R.id.tv_label_2;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_2);
                if (textView2 != null) {
                    i10 = R.id.tv_label_3;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_3);
                    if (textView3 != null) {
                        i10 = R.id.tv_text_1;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                        if (textView4 != null) {
                            return new g80((FrameLayout) rootView, roundedImageView, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static g80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f38754b;
    }

    @NonNull
    public static g80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_cloud_float_queue_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

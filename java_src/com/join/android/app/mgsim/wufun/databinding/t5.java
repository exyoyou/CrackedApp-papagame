package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class t5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45133c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45134d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45135e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ProgressBar f45136f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45137g;

    private t5(@NonNull LinearLayout rootView, @NonNull ImageView connectOkImageWtitem, @NonNull LinearLayout connectOkLayoutWtitem, @NonNull TextView connectTextWtitem, @NonNull ProgressBar connectingProgressBarWtitem, @NonNull TextView nameTextWtitem) {
        this.f45132b = rootView;
        this.f45133c = connectOkImageWtitem;
        this.f45134d = connectOkLayoutWtitem;
        this.f45135e = connectTextWtitem;
        this.f45136f = connectingProgressBarWtitem;
        this.f45137g = nameTextWtitem;
    }

    @NonNull
    public static t5 bind(@NonNull View rootView) {
        int i10 = R.id.connect_ok_image_wtitem;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.connect_ok_image_wtitem);
        if (imageView != null) {
            i10 = R.id.connect_ok_layout_wtitem;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.connect_ok_layout_wtitem);
            if (linearLayout != null) {
                i10 = R.id.connect_text_wtitem;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.connect_text_wtitem);
                if (textView != null) {
                    i10 = R.id.connecting_progressBar_wtitem;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.connecting_progressBar_wtitem);
                    if (progressBar != null) {
                        i10 = R.id.name_text_wtitem;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name_text_wtitem);
                        if (textView2 != null) {
                            return new t5((LinearLayout) rootView, imageView, linearLayout, textView, progressBar, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static t5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45132b;
    }

    @NonNull
    public static t5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_wifiap_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

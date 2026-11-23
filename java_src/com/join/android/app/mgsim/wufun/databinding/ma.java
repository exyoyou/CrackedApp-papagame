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
public final class ma implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f41804c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41805d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41807f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41808g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41809h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41810i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41811j;

    private ma(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull ImageView backups, @NonNull TextView cloudRom, @NonNull LinearLayout lay1, @NonNull LinearLayout lay2, @NonNull TextView localRom, @NonNull RelativeLayout relativeLayout, @NonNull TextView titleText) {
        this.f41803b = rootView;
        this.f41804c = backImage;
        this.f41805d = backups;
        this.f41806e = cloudRom;
        this.f41807f = lay1;
        this.f41808g = lay2;
        this.f41809h = localRom;
        this.f41810i = relativeLayout;
        this.f41811j = titleText;
    }

    @NonNull
    public static ma bind(@NonNull View rootView) {
        int i10 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backImage);
        if (imageView != null) {
            i10 = R.id.backups;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backups);
            if (imageView2 != null) {
                i10 = R.id.cloudRom;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cloudRom);
                if (textView != null) {
                    i10 = R.id.lay_1;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.lay_1);
                    if (linearLayout != null) {
                        i10 = R.id.lay_2;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.lay_2);
                        if (linearLayout2 != null) {
                            i10 = R.id.localRom;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.localRom);
                            if (textView2 != null) {
                                i10 = R.id.relativeLayout;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relativeLayout);
                                if (relativeLayout != null) {
                                    i10 = R.id.titleText;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                    if (textView3 != null) {
                                        return new ma((LinearLayout) rootView, imageView, imageView2, textView, linearLayout, linearLayout2, textView2, relativeLayout, textView3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ma inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41803b;
    }

    @NonNull
    public static ma inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.cloud_main, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

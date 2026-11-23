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
public final class pw0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43559c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43560d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43561e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43562f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43563g;

    private pw0(@NonNull LinearLayout rootView, @NonNull ImageView icon, @NonNull LinearLayout main, @NonNull TextView message, @NonNull TextView subtitle, @NonNull TextView title) {
        this.f43558b = rootView;
        this.f43559c = icon;
        this.f43560d = main;
        this.f43561e = message;
        this.f43562f = subtitle;
        this.f43563g = title;
    }

    @NonNull
    public static pw0 bind(@NonNull View rootView) {
        int i10 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icon);
        if (imageView != null) {
            i10 = R.id.main;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main);
            if (linearLayout != null) {
                i10 = R.id.message;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.message);
                if (textView != null) {
                    i10 = R.id.subtitle;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.subtitle);
                    if (textView2 != null) {
                        i10 = R.id.title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                        if (textView3 != null) {
                            return new pw0((LinearLayout) rootView, imageView, linearLayout, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pw0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43558b;
    }

    @NonNull
    public static pw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.unzip_or_install_failed_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

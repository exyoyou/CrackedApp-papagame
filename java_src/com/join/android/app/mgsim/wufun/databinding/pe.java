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
public final class pe implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43322c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43323d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43324e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43325f;

    private pe(@NonNull LinearLayout rootView, @NonNull TextView per, @NonNull ImageView statusIcon, @NonNull TextView sub, @NonNull TextView txt) {
        this.f43321b = rootView;
        this.f43322c = per;
        this.f43323d = statusIcon;
        this.f43324e = sub;
        this.f43325f = txt;
    }

    @NonNull
    public static pe bind(@NonNull View rootView) {
        int i10 = R.id.per;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.per);
        if (textView != null) {
            i10 = R.id.status_icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.status_icon);
            if (imageView != null) {
                i10 = R.id.sub;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.sub);
                if (textView2 != null) {
                    i10 = R.id.txt;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.txt);
                    if (textView3 != null) {
                        return new pe((LinearLayout) rootView, textView, imageView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pe inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43321b;
    }

    @NonNull
    public static pe inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_cloud_pass, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

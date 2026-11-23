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
public final class qa implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43732b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43733c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43734d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43735e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43736f;

    private qa(@NonNull LinearLayout rootView, @NonNull TextView handOrAuto, @NonNull ImageView imageView, @NonNull TextView phoneType, @NonNull TextView upTime) {
        this.f43732b = rootView;
        this.f43733c = handOrAuto;
        this.f43734d = imageView;
        this.f43735e = phoneType;
        this.f43736f = upTime;
    }

    @NonNull
    public static qa bind(@NonNull View rootView) {
        int i10 = R.id.handOrAuto;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.handOrAuto);
        if (textView != null) {
            i10 = R.id.imageView;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView);
            if (imageView != null) {
                i10 = R.id.phoneType;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.phoneType);
                if (textView2 != null) {
                    i10 = R.id.upTime;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.upTime);
                    if (textView3 != null) {
                        return new qa((LinearLayout) rootView, textView, imageView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qa inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43732b;
    }

    @NonNull
    public static qa inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.cloudbackups_can_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

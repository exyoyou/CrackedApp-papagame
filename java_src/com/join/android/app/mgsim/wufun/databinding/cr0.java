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
public final class cr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37083e;

    private cr0(@NonNull LinearLayout rootView, @NonNull ImageView closed, @NonNull TextView downButn, @NonNull LinearLayout top) {
        this.f37080b = rootView;
        this.f37081c = closed;
        this.f37082d = downButn;
        this.f37083e = top;
    }

    @NonNull
    public static cr0 bind(@NonNull View rootView) {
        int i10 = R.id.closed;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.closed);
        if (imageView != null) {
            i10 = R.id.downButn;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.downButn);
            if (textView != null) {
                i10 = R.id.top;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.top);
                if (linearLayout != null) {
                    return new cr0((LinearLayout) rootView, imageView, textView, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37080b;
    }

    @NonNull
    public static cr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.payfinish_activirty, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

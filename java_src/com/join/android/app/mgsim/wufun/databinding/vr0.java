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

/* JADX INFO: loaded from: classes4.dex */
public final class vr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f46421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46422c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46423d;

    private vr0(@NonNull FrameLayout rootView, @NonNull TextView tvAll, @NonNull TextView tvSelf) {
        this.f46421b = rootView;
        this.f46422c = tvAll;
        this.f46423d = tvSelf;
    }

    @NonNull
    public static vr0 bind(@NonNull View rootView) {
        int i10 = R.id.tvAll;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvAll);
        if (textView != null) {
            i10 = R.id.tvSelf;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvSelf);
            if (textView2 != null) {
                return new vr0((FrameLayout) rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static vr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f46421b;
    }

    @NonNull
    public static vr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_moment_type_choose, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

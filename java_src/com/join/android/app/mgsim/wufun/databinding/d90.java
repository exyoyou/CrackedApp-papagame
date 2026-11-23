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
public final class d90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37330c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37331d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37332e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37333f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37334g;

    private d90(@NonNull ConstraintLayout rootView, @NonNull ImageView icon, @NonNull TextView skip, @NonNull TextView subTitle, @NonNull TextView submit, @NonNull TextView title) {
        this.f37329b = rootView;
        this.f37330c = icon;
        this.f37331d = skip;
        this.f37332e = subTitle;
        this.f37333f = submit;
        this.f37334g = title;
    }

    @NonNull
    public static d90 bind(@NonNull View rootView) {
        int i10 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icon);
        if (imageView != null) {
            i10 = R.id.skip;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.skip);
            if (textView != null) {
                i10 = R.id.subTitle;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.subTitle);
                if (textView2 != null) {
                    i10 = R.id.submit;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.submit);
                    if (textView3 != null) {
                        i10 = R.id.title;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                        if (textView4 != null) {
                            return new d90((ConstraintLayout) rootView, imageView, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static d90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37329b;
    }

    @NonNull
    public static d90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_emu_plugin_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

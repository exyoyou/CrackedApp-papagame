package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: renamed from: com.join.android.app.mgsim.wufun.databinding.if, reason: invalid class name */
/* JADX INFO: loaded from: classes4.dex */
public final class Cif implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39800d;

    private Cif(@NonNull RelativeLayout rootView, @NonNull ImageView fightLoadingIcon, @NonNull TextView hint) {
        this.f39798b = rootView;
        this.f39799c = fightLoadingIcon;
        this.f39800d = hint;
    }

    @NonNull
    public static Cif bind(@NonNull View rootView) {
        int i10 = R.id.fightLoadingIcon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.fightLoadingIcon);
        if (imageView != null) {
            i10 = R.id.hint;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.hint);
            if (textView != null) {
                return new Cif((RelativeLayout) rootView, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static Cif inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39798b;
    }

    @NonNull
    public static Cif inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_fight_connect_server, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

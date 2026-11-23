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

/* JADX INFO: loaded from: classes4.dex */
public final class hf implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39313c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39314d;

    private hf(@NonNull RelativeLayout rootView, @NonNull ImageView fightLoadingIcon, @NonNull TextView hint) {
        this.f39312b = rootView;
        this.f39313c = fightLoadingIcon;
        this.f39314d = hint;
    }

    @NonNull
    public static hf bind(@NonNull View rootView) {
        int i10 = R.id.fightLoadingIcon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.fightLoadingIcon);
        if (imageView != null) {
            i10 = R.id.hint;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.hint);
            if (textView != null) {
                return new hf((RelativeLayout) rootView, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hf inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39312b;
    }

    @NonNull
    public static hf inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_fight_connect_server2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

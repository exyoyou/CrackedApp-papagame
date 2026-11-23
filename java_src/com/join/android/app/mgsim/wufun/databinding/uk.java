package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class uk implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45727c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45728d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45729e;

    private uk(@NonNull LinearLayout rootView, @NonNull TextView afterNameTx, @NonNull SimpleDraweeView appIcon, @NonNull TextView beforNameTx) {
        this.f45726b = rootView;
        this.f45727c = afterNameTx;
        this.f45728d = appIcon;
        this.f45729e = beforNameTx;
    }

    @NonNull
    public static uk bind(@NonNull View rootView) {
        int i10 = R.id.afterNameTx;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.afterNameTx);
        if (textView != null) {
            i10 = R.id.appIcon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon);
            if (simpleDraweeView != null) {
                i10 = R.id.beforNameTx;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.beforNameTx);
                if (textView2 != null) {
                    return new uk((LinearLayout) rootView, textView, simpleDraweeView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static uk inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45726b;
    }

    @NonNull
    public static uk inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_check_local_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

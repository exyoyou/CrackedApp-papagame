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
public final class i30 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39634d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39635e;

    private i30(@NonNull RelativeLayout rootView, @NonNull ImageView myInputPwdListItemDelete, @NonNull RelativeLayout myInputPwdListItemFl, @NonNull TextView myInputPwdListItemTv) {
        this.f39632b = rootView;
        this.f39633c = myInputPwdListItemDelete;
        this.f39634d = myInputPwdListItemFl;
        this.f39635e = myInputPwdListItemTv;
    }

    @NonNull
    public static i30 bind(@NonNull View rootView) {
        int i10 = R.id.myInputPwdListItem_delete;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.myInputPwdListItem_delete);
        if (imageView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) rootView;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.myInputPwdListItem_tv);
            if (textView != null) {
                return new i30(relativeLayout, imageView, relativeLayout, textView);
            }
            i10 = R.id.myInputPwdListItem_tv;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static i30 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39632b;
    }

    @NonNull
    public static i30 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_inputviewlist, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

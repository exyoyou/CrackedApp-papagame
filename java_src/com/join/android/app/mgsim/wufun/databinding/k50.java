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
public final class k50 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40608c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40609d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f40610e;

    private k50(@NonNull LinearLayout rootView, @NonNull TextView itemNameTx, @NonNull LinearLayout itemRolesLl, @NonNull ImageView itemSelectIv) {
        this.f40607b = rootView;
        this.f40608c = itemNameTx;
        this.f40609d = itemRolesLl;
        this.f40610e = itemSelectIv;
    }

    @NonNull
    public static k50 bind(@NonNull View rootView) {
        int i10 = R.id.item_name_tx;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.item_name_tx);
        if (textView != null) {
            i10 = R.id.item_roles_ll;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.item_roles_ll);
            if (linearLayout != null) {
                i10 = R.id.item_select_iv;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.item_select_iv);
                if (imageView != null) {
                    return new k50((LinearLayout) rootView, textView, linearLayout, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static k50 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40607b;
    }

    @NonNull
    public static k50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_roles_listview, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43958c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43959d;

    private qq(@NonNull LinearLayout rootView, @NonNull TextView htmlGameDescribe, @NonNull TextView textMore) {
        this.f43957b = rootView;
        this.f43958c = htmlGameDescribe;
        this.f43959d = textMore;
    }

    @NonNull
    public static qq bind(@NonNull View rootView) {
        int i10 = R.id.htmlGameDescribe;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.htmlGameDescribe);
        if (textView != null) {
            i10 = R.id.textMore;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textMore);
            if (textView2 != null) {
                return new qq((LinearLayout) rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43957b;
    }

    @NonNull
    public static qq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_describ, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

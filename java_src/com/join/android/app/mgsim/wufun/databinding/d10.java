package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class d10 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37195d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37196e;

    private d10(@NonNull ConstraintLayout rootView, @NonNull TextView label, @NonNull TextView reqPermission, @NonNull TextView textView105) {
        this.f37193b = rootView;
        this.f37194c = label;
        this.f37195d = reqPermission;
        this.f37196e = textView105;
    }

    @NonNull
    public static d10 bind(@NonNull View rootView) {
        int i10 = R.id.label;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.label);
        if (textView != null) {
            i10 = R.id.reqPermission;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.reqPermission);
            if (textView2 != null) {
                i10 = R.id.textView105;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView105);
                if (textView3 != null) {
                    return new d10((ConstraintLayout) rootView, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static d10 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37193b;
    }

    @NonNull
    public static d10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_friend_item_header_recommend, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

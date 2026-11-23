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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class a10 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f35574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f35575c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35576d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35578f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f35579g;

    private a10(@NonNull ConstraintLayout rootView, @NonNull TextView accept, @NonNull SimpleDraweeView avatar, @NonNull TextView decline, @NonNull TextView msg, @NonNull TextView name) {
        this.f35574b = rootView;
        this.f35575c = accept;
        this.f35576d = avatar;
        this.f35577e = decline;
        this.f35578f = msg;
        this.f35579g = name;
    }

    @NonNull
    public static a10 bind(@NonNull View rootView) {
        int i10 = R.id.accept;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.accept);
        if (textView != null) {
            i10 = R.id.avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
            if (simpleDraweeView != null) {
                i10 = R.id.decline;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.decline);
                if (textView2 != null) {
                    i10 = R.id.msg;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.msg);
                    if (textView3 != null) {
                        i10 = R.id.name;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                        if (textView4 != null) {
                            return new a10((ConstraintLayout) rootView, textView, simpleDraweeView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static a10 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f35574b;
    }

    @NonNull
    public static a10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_friend_add_req, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

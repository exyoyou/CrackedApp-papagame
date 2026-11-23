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
public final class rr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44466c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44467d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44468e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44469f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44470g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44471h;

    private rr0(@NonNull ConstraintLayout rootView, @NonNull TextView accept, @NonNull SimpleDraweeView avatar, @NonNull TextView decline, @NonNull TextView gameName, @NonNull TextView name, @NonNull TextView textView46) {
        this.f44465b = rootView;
        this.f44466c = accept;
        this.f44467d = avatar;
        this.f44468e = decline;
        this.f44469f = gameName;
        this.f44470g = name;
        this.f44471h = textView46;
    }

    @NonNull
    public static rr0 bind(@NonNull View rootView) {
        int i10 = R.id.accept;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.accept);
        if (textView != null) {
            i10 = R.id.avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
            if (simpleDraweeView != null) {
                i10 = R.id.decline;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.decline);
                if (textView2 != null) {
                    i10 = R.id.gameName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName);
                    if (textView3 != null) {
                        i10 = R.id.name;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                        if (textView4 != null) {
                            i10 = R.id.textView46;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView46);
                            if (textView5 != null) {
                                return new rr0((ConstraintLayout) rootView, textView, simpleDraweeView, textView2, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44465b;
    }

    @NonNull
    public static rr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_friend_invite, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

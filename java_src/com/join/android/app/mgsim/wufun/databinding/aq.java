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
public final class aq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f35958c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35959d;

    private aq(@NonNull LinearLayout rootView, @NonNull TextView message, @NonNull SimpleDraweeView usericonMe) {
        this.f35957b = rootView;
        this.f35958c = message;
        this.f35959d = usericonMe;
    }

    @NonNull
    public static aq bind(@NonNull View rootView) {
        int i10 = R.id.message;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.message);
        if (textView != null) {
            i10 = R.id.usericonMe;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.usericonMe);
            if (simpleDraweeView != null) {
                return new aq((LinearLayout) rootView, textView, simpleDraweeView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static aq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35957b;
    }

    @NonNull
    public static aq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_information_edit_message, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

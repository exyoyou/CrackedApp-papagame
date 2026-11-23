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
public final class h20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39140c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39141d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39142e;

    private h20(@NonNull ConstraintLayout rootView, @NonNull TextView title, @NonNull TextView tvText1, @NonNull TextView tvText2) {
        this.f39139b = rootView;
        this.f39140c = title;
        this.f39141d = tvText1;
        this.f39142e = tvText2;
    }

    @NonNull
    public static h20 bind(@NonNull View rootView) {
        int i10 = R.id.title;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
        if (textView != null) {
            i10 = R.id.tv_text_1;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
            if (textView2 != null) {
                i10 = R.id.tv_text_2;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                if (textView3 != null) {
                    return new h20((ConstraintLayout) rootView, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static h20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39139b;
    }

    @NonNull
    public static h20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_express_title, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

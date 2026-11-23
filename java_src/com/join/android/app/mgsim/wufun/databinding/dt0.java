package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class dt0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37619c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37620d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37621e;

    private dt0(@NonNull RelativeLayout rootView, @NonNull ImageView moneyPackage, @NonNull LinearLayout rewardContainer, @NonNull TextView txt) {
        this.f37618b = rootView;
        this.f37619c = moneyPackage;
        this.f37620d = rewardContainer;
        this.f37621e = txt;
    }

    @NonNull
    public static dt0 bind(@NonNull View rootView) {
        int i10 = R.id.moneyPackage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.moneyPackage);
        if (imageView != null) {
            i10 = R.id.rewardContainer;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.rewardContainer);
            if (linearLayout != null) {
                i10 = R.id.txt;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.txt);
                if (textView != null) {
                    return new dt0((RelativeLayout) rootView, imageView, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static dt0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37618b;
    }

    @NonNull
    public static dt0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.reward, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

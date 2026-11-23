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
public final class m60 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41761c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41762d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41763e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41764f;

    private m60(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView simulatorEncyclopediaIv, @NonNull TextView simulatorEncyclopediaLabelTv, @NonNull LinearLayout simulatorEncyclopediaLl, @NonNull TextView simulatorEncyclopediaTitleTv) {
        this.f41760b = rootView;
        this.f41761c = simulatorEncyclopediaIv;
        this.f41762d = simulatorEncyclopediaLabelTv;
        this.f41763e = simulatorEncyclopediaLl;
        this.f41764f = simulatorEncyclopediaTitleTv;
    }

    @NonNull
    public static m60 bind(@NonNull View rootView) {
        int i10 = R.id.simulator_encyclopedia_iv;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.simulator_encyclopedia_iv);
        if (simpleDraweeView != null) {
            i10 = R.id.simulator_encyclopedia_label_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.simulator_encyclopedia_label_tv);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) rootView;
                i10 = R.id.simulator_encyclopedia_title_tv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.simulator_encyclopedia_title_tv);
                if (textView2 != null) {
                    return new m60(linearLayout, simpleDraweeView, textView, linearLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static m60 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41760b;
    }

    @NonNull
    public static m60 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_simulator_encyclopedia_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

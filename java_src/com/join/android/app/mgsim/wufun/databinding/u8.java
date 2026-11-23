package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MultilineTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class u8 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45602d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final MultilineTextView f45603e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45604f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45605g;

    private u8(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView cover, @NonNull TextView date, @NonNull MultilineTextView desc, @NonNull LinearLayout detail, @NonNull TextView name) {
        this.f45600b = rootView;
        this.f45601c = cover;
        this.f45602d = date;
        this.f45603e = desc;
        this.f45604f = detail;
        this.f45605g = name;
    }

    @NonNull
    public static u8 bind(@NonNull View rootView) {
        int i10 = R.id.cover;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.cover);
        if (simpleDraweeView != null) {
            i10 = R.id.date;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.date);
            if (textView != null) {
                i10 = R.id.desc;
                MultilineTextView multilineTextView = (MultilineTextView) ViewBindings.findChildViewById(rootView, R.id.desc);
                if (multilineTextView != null) {
                    i10 = R.id.detail;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.detail);
                    if (linearLayout != null) {
                        i10 = R.id.name;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                        if (textView2 != null) {
                            return new u8((RelativeLayout) rootView, simpleDraweeView, textView, multilineTextView, linearLayout, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static u8 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45600b;
    }

    @NonNull
    public static u8 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.chioce_item_order_main, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

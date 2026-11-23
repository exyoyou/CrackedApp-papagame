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

/* JADX INFO: loaded from: classes4.dex */
public final class xk implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f47273c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47274d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47276f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47277g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47278h;

    private xk(@NonNull RelativeLayout rootView, @NonNull TextView desc, @NonNull TextView name, @NonNull LinearLayout nameParent, @NonNull SimpleDraweeView onlinIcon, @NonNull TextView onlinNumber, @NonNull TextView onlinNumberTip) {
        this.f47272b = rootView;
        this.f47273c = desc;
        this.f47274d = name;
        this.f47275e = nameParent;
        this.f47276f = onlinIcon;
        this.f47277g = onlinNumber;
        this.f47278h = onlinNumberTip;
    }

    @NonNull
    public static xk bind(@NonNull View rootView) {
        int i10 = R.id.desc;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
        if (textView != null) {
            i10 = R.id.name;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
            if (textView2 != null) {
                i10 = R.id.nameParent;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.nameParent);
                if (linearLayout != null) {
                    i10 = R.id.onlin_icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.onlin_icon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.onlin_number;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.onlin_number);
                        if (textView3 != null) {
                            i10 = R.id.onlin_number_tip;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.onlin_number_tip);
                            if (textView4 != null) {
                                return new xk((RelativeLayout) rootView, textView, textView2, linearLayout, simpleDraweeView, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static xk inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47272b;
    }

    @NonNull
    public static xk inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_classify_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

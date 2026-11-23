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
public final class w8 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46662c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46663d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46664e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46665f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46666g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46667h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46668i;

    private w8(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView cover, @NonNull TextView desc, @NonNull SimpleDraweeView icon, @NonNull LinearLayout ll, @NonNull RelativeLayout main, @NonNull TextView name, @NonNull TextView rank) {
        this.f46661b = rootView;
        this.f46662c = cover;
        this.f46663d = desc;
        this.f46664e = icon;
        this.f46665f = ll;
        this.f46666g = main;
        this.f46667h = name;
        this.f46668i = rank;
    }

    @NonNull
    public static w8 bind(@NonNull View rootView) {
        int i10 = R.id.cover;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.cover);
        if (simpleDraweeView != null) {
            i10 = R.id.desc;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
            if (textView != null) {
                i10 = R.id.icon;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                if (simpleDraweeView2 != null) {
                    i10 = R.id.ll;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll);
                    if (linearLayout != null) {
                        i10 = R.id.main;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                        if (relativeLayout != null) {
                            i10 = R.id.name;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                            if (textView2 != null) {
                                i10 = R.id.rank;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.rank);
                                if (textView3 != null) {
                                    return new w8((RelativeLayout) rootView, simpleDraweeView, textView, simpleDraweeView2, linearLayout, relativeLayout, textView2, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static w8 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46661b;
    }

    @NonNull
    public static w8 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.chioce_item_recommand_1_cover, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

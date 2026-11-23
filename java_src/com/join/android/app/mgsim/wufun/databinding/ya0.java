package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ya0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f47642c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f47643d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47644e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f47645f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47646g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47647h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f47648i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47649j;

    private ya0(@NonNull LinearLayout rootView, @NonNull TextView appInfo, @NonNull ImageView giftPackageSwitch, @NonNull SimpleDraweeView img, @NonNull ImageView isSelector, @NonNull LinearLayout linearLayoutApp, @NonNull TextView name, @NonNull ImageView notOpen, @NonNull LinearLayout status) {
        this.f47641b = rootView;
        this.f47642c = appInfo;
        this.f47643d = giftPackageSwitch;
        this.f47644e = img;
        this.f47645f = isSelector;
        this.f47646g = linearLayoutApp;
        this.f47647h = name;
        this.f47648i = notOpen;
        this.f47649j = status;
    }

    @NonNull
    public static ya0 bind(@NonNull View rootView) {
        int i10 = R.id.appInfo;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appInfo);
        if (textView != null) {
            i10 = R.id.giftPackageSwitch;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.giftPackageSwitch);
            if (imageView != null) {
                i10 = R.id.img;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img);
                if (simpleDraweeView != null) {
                    i10 = R.id.isSelector;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.isSelector);
                    if (imageView2 != null) {
                        i10 = R.id.linearLayoutApp;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayoutApp);
                        if (linearLayout != null) {
                            i10 = R.id.name;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                            if (textView2 != null) {
                                i10 = R.id.notOpen;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.notOpen);
                                if (imageView3 != null) {
                                    i10 = R.id.status;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.status);
                                    if (linearLayout2 != null) {
                                        return new ya0((LinearLayout) rootView, textView, imageView, simpleDraweeView, imageView2, linearLayout, textView2, imageView3, linearLayout2);
                                    }
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
    public static ya0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47641b;
    }

    @NonNull
    public static ya0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_mygame_edit_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

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
public final class ze0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f48199c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f48200d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f48201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f48202f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48203g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48204h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48205i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f48206j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f48207k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f48208l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f48209m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48210n;

    private ze0(@NonNull LinearLayout rootView, @NonNull TextView accountName, @NonNull ImageView arrowImage, @NonNull ImageView genderText, @NonNull TextView levelTv, @NonNull LinearLayout main, @NonNull LinearLayout myAccountSuccess, @NonNull LinearLayout myAccountUnSuccess, @NonNull TextView papaGonglue, @NonNull TextView papabiNumber, @NonNull ImageView setUser, @NonNull ImageView userIcon, @NonNull RelativeLayout userModify) {
        this.f48198b = rootView;
        this.f48199c = accountName;
        this.f48200d = arrowImage;
        this.f48201e = genderText;
        this.f48202f = levelTv;
        this.f48203g = main;
        this.f48204h = myAccountSuccess;
        this.f48205i = myAccountUnSuccess;
        this.f48206j = papaGonglue;
        this.f48207k = papabiNumber;
        this.f48208l = setUser;
        this.f48209m = userIcon;
        this.f48210n = userModify;
    }

    @NonNull
    public static ze0 bind(@NonNull View rootView) {
        int i10 = R.id.accountName;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.accountName);
        if (textView != null) {
            i10 = R.id.arrowImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arrowImage);
            if (imageView != null) {
                i10 = R.id.genderText;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.genderText);
                if (imageView2 != null) {
                    i10 = R.id.levelTv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.levelTv);
                    if (textView2 != null) {
                        LinearLayout linearLayout = (LinearLayout) rootView;
                        i10 = R.id.myAccountSuccess;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.myAccountSuccess);
                        if (linearLayout2 != null) {
                            i10 = R.id.myAccountUnSuccess;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.myAccountUnSuccess);
                            if (linearLayout3 != null) {
                                i10 = R.id.papaGonglue;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.papaGonglue);
                                if (textView3 != null) {
                                    i10 = R.id.papabiNumber;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.papabiNumber);
                                    if (textView4 != null) {
                                        i10 = R.id.setUser;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.setUser);
                                        if (imageView3 != null) {
                                            i10 = R.id.userIcon;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.userIcon);
                                            if (imageView4 != null) {
                                                i10 = R.id.userModify;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.userModify);
                                                if (relativeLayout != null) {
                                                    return new ze0(linearLayout, textView, imageView, imageView2, textView2, linearLayout, linearLayout2, linearLayout3, textView3, textView4, imageView3, imageView4, relativeLayout);
                                                }
                                            }
                                        }
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
    public static ze0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48198b;
    }

    @NonNull
    public static ze0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.manage_top_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

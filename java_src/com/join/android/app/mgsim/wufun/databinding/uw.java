package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class uw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CardView f45940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CheckBox f45942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CheckBox f45943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45944f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45945g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45946h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f45947i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45948j;

    private uw(@NonNull CardView rootView, @NonNull ImageView checkbox, @NonNull CheckBox checkboxData, @NonNull CheckBox checkboxPkg, @NonNull SimpleDraweeView gameIcon, @NonNull TextView gameName, @NonNull LinearLayout llPkgAndData, @NonNull TextView tvGameSpace, @NonNull TextView tvSimulatorSize) {
        this.f45940b = rootView;
        this.f45941c = checkbox;
        this.f45942d = checkboxData;
        this.f45943e = checkboxPkg;
        this.f45944f = gameIcon;
        this.f45945g = gameName;
        this.f45946h = llPkgAndData;
        this.f45947i = tvGameSpace;
        this.f45948j = tvSimulatorSize;
    }

    @NonNull
    public static uw bind(@NonNull View rootView) {
        int i10 = R.id.checkbox;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.checkbox);
        if (imageView != null) {
            i10 = R.id.checkboxData;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.checkboxData);
            if (checkBox != null) {
                i10 = R.id.checkboxPkg;
                CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.checkboxPkg);
                if (checkBox2 != null) {
                    i10 = R.id.gameIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameIcon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.gameName;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName);
                        if (textView != null) {
                            i10 = R.id.llPkgAndData;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llPkgAndData);
                            if (linearLayout != null) {
                                i10 = R.id.tvGameSpace;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameSpace);
                                if (textView2 != null) {
                                    i10 = R.id.tvSimulatorSize;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvSimulatorSize);
                                    if (textView3 != null) {
                                        return new uw((CardView) rootView, imageView, checkBox, checkBox2, simpleDraweeView, textView, linearLayout, textView2, textView3);
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
    public static uw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f45940b;
    }

    @NonNull
    public static uw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_clean_space_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

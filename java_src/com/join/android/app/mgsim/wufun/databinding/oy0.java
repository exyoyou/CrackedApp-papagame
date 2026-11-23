package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
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
public final class oy0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43130c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CheckBox f43131d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f43132e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43133f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43134g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43135h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43136i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43137j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f43138k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43139l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f43140m;

    private oy0(@NonNull RelativeLayout rootView, @NonNull TextView appshow, @NonNull CheckBox checkbox, @NonNull ImageView close, @NonNull TextView gameName, @NonNull TextView goH5, @NonNull SimpleDraweeView icon, @NonNull SimpleDraweeView img, @NonNull LinearLayout main, @NonNull TextView message, @NonNull LinearLayout moreSelecter, @NonNull TextView startButn) {
        this.f43129b = rootView;
        this.f43130c = appshow;
        this.f43131d = checkbox;
        this.f43132e = close;
        this.f43133f = gameName;
        this.f43134g = goH5;
        this.f43135h = icon;
        this.f43136i = img;
        this.f43137j = main;
        this.f43138k = message;
        this.f43139l = moreSelecter;
        this.f43140m = startButn;
    }

    @NonNull
    public static oy0 bind(@NonNull View rootView) {
        int i10 = R.id.appshow;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appshow);
        if (textView != null) {
            i10 = R.id.checkbox;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.checkbox);
            if (checkBox != null) {
                i10 = R.id.close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
                if (imageView != null) {
                    i10 = R.id.gameName;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName);
                    if (textView2 != null) {
                        i10 = R.id.goH5;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.goH5);
                        if (textView3 != null) {
                            i10 = R.id.icon;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                            if (simpleDraweeView != null) {
                                i10 = R.id.img;
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img);
                                if (simpleDraweeView2 != null) {
                                    i10 = R.id.main;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                                    if (linearLayout != null) {
                                        i10 = R.id.message;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.message);
                                        if (textView4 != null) {
                                            i10 = R.id.moreSelecter;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.moreSelecter);
                                            if (linearLayout2 != null) {
                                                i10 = R.id.startButn;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.startButn);
                                                if (textView5 != null) {
                                                    return new oy0((RelativeLayout) rootView, textView, checkBox, imageView, textView2, textView3, simpleDraweeView, simpleDraweeView2, linearLayout, textView4, linearLayout2, textView5);
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
    public static oy0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43129b;
    }

    @NonNull
    public static oy0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.wufungame_installappfirst_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

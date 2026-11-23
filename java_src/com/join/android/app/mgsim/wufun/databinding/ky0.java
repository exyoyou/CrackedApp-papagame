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
public final class ky0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41073b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41074c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41075d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41076e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41077f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41078g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41079h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41080i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41081j;

    private ky0(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView appIcon1, @NonNull SimpleDraweeView appIcon2, @NonNull SimpleDraweeView appIcon3, @NonNull SimpleDraweeView appIcon4, @NonNull TextView appname1, @NonNull TextView appname2, @NonNull TextView appname3, @NonNull TextView appname4) {
        this.f41073b = rootView;
        this.f41074c = appIcon1;
        this.f41075d = appIcon2;
        this.f41076e = appIcon3;
        this.f41077f = appIcon4;
        this.f41078g = appname1;
        this.f41079h = appname2;
        this.f41080i = appname3;
        this.f41081j = appname4;
    }

    @NonNull
    public static ky0 bind(@NonNull View rootView) {
        int i10 = R.id.appIcon1;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon1);
        if (simpleDraweeView != null) {
            i10 = R.id.appIcon2;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon2);
            if (simpleDraweeView2 != null) {
                i10 = R.id.appIcon3;
                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon3);
                if (simpleDraweeView3 != null) {
                    i10 = R.id.appIcon4;
                    SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon4);
                    if (simpleDraweeView4 != null) {
                        i10 = R.id.appname1;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname1);
                        if (textView != null) {
                            i10 = R.id.appname2;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname2);
                            if (textView2 != null) {
                                i10 = R.id.appname3;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname3);
                                if (textView3 != null) {
                                    i10 = R.id.appname4;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname4);
                                    if (textView4 != null) {
                                        return new ky0((LinearLayout) rootView, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, simpleDraweeView4, textView, textView2, textView3, textView4);
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
    public static ky0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41073b;
    }

    @NonNull
    public static ky0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.wufun_main_games_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

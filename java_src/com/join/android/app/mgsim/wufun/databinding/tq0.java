package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
public final class tq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45395b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45396c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45397d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45398e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45399f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f45400g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45401h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f45402i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45403j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f45404k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final Button f45405l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f45406m;

    private tq0(@NonNull LinearLayout rootView, @NonNull ImageView hongbao, @NonNull LinearLayout hongbaoLayout, @NonNull TextView listHead, @NonNull TextView message, @NonNull ImageView more, @NonNull TextView name, @NonNull TextView pabiNumber, @NonNull SimpleDraweeView papaPayIcon, @NonNull TextView payRedNumber, @NonNull Button payStart, @NonNull TextView titleTextview) {
        this.f45395b = rootView;
        this.f45396c = hongbao;
        this.f45397d = hongbaoLayout;
        this.f45398e = listHead;
        this.f45399f = message;
        this.f45400g = more;
        this.f45401h = name;
        this.f45402i = pabiNumber;
        this.f45403j = papaPayIcon;
        this.f45404k = payRedNumber;
        this.f45405l = payStart;
        this.f45406m = titleTextview;
    }

    @NonNull
    public static tq0 bind(@NonNull View rootView) {
        int i10 = R.id.hongbao;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.hongbao);
        if (imageView != null) {
            i10 = R.id.hongbaoLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.hongbaoLayout);
            if (linearLayout != null) {
                i10 = R.id.listHead;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.listHead);
                if (textView != null) {
                    i10 = R.id.message;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.message);
                    if (textView2 != null) {
                        i10 = R.id.more;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.more);
                        if (imageView2 != null) {
                            i10 = R.id.name;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                            if (textView3 != null) {
                                i10 = R.id.pabiNumber;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pabiNumber);
                                if (textView4 != null) {
                                    i10 = R.id.papaPayIcon;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.papaPayIcon);
                                    if (simpleDraweeView != null) {
                                        i10 = R.id.payRedNumber;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.payRedNumber);
                                        if (textView5 != null) {
                                            i10 = R.id.payStart;
                                            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.payStart);
                                            if (button != null) {
                                                i10 = R.id.title_textview;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                                if (textView6 != null) {
                                                    return new tq0((LinearLayout) rootView, imageView, linearLayout, textView, textView2, imageView2, textView3, textView4, simpleDraweeView, textView5, button, textView6);
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
    public static tq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45395b;
    }

    @NonNull
    public static tq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papapayhead, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

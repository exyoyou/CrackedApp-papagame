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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class r3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44186b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44187c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44188d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final FlowLayout f44189e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44190f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44191g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44192h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f44193i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f44194j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final Button f44195k;

    private r3(@NonNull LinearLayout rootView, @NonNull ImageView checkBoxPay, @NonNull TextView openTalk, @NonNull FlowLayout papaTopLayout, @NonNull TextView papaTopNumber, @NonNull TextView papaTopOto, @NonNull TextView papaTopPriceBig, @NonNull TextView readMsg, @NonNull TextView showPrice, @NonNull Button startPay) {
        this.f44186b = rootView;
        this.f44187c = checkBoxPay;
        this.f44188d = openTalk;
        this.f44189e = papaTopLayout;
        this.f44190f = papaTopNumber;
        this.f44191g = papaTopOto;
        this.f44192h = papaTopPriceBig;
        this.f44193i = readMsg;
        this.f44194j = showPrice;
        this.f44195k = startPay;
    }

    @NonNull
    public static r3 bind(@NonNull View rootView) {
        int i10 = R.id.checkBoxPay;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.checkBoxPay);
        if (imageView != null) {
            i10 = R.id.openTalk;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.openTalk);
            if (textView != null) {
                i10 = R.id.papa_top_layout;
                FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(rootView, R.id.papa_top_layout);
                if (flowLayout != null) {
                    i10 = R.id.papa_top_number;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.papa_top_number);
                    if (textView2 != null) {
                        i10 = R.id.papa_top_oto;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.papa_top_oto);
                        if (textView3 != null) {
                            i10 = R.id.papaTopPriceBig;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.papaTopPriceBig);
                            if (textView4 != null) {
                                i10 = R.id.readMsg;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.readMsg);
                                if (textView5 != null) {
                                    i10 = R.id.showPrice;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.showPrice);
                                    if (textView6 != null) {
                                        i10 = R.id.startPay;
                                        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.startPay);
                                        if (button != null) {
                                            return new r3((LinearLayout) rootView, imageView, textView, flowLayout, textView2, textView3, textView4, textView5, textView6, button);
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
    public static r3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44186b;
    }

    @NonNull
    public static r3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_pay_start, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

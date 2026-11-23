package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class q3 implements ViewBinding {

    @NonNull
    public final TextView A;

    @NonNull
    public final TextView B;

    @NonNull
    public final TextView C;

    @NonNull
    public final ImageView D;

    @NonNull
    public final ImageView E;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43653c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43654d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f43655e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f43656f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43657g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43658h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43659i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43660j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43661k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43662l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ProgressBar f43663m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final Button f43664n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f43665o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43666p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final HorizontalScrollView f43667q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43668r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43669s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f43670t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f43671u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f43672v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f43673w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f43674x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f43675y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f43676z;

    private q3(@NonNull RelativeLayout rootView, @NonNull ImageView aliPay, @NonNull TextView anotherPayType, @NonNull ImageView creditCardPay, @NonNull ImageView hongbaoPay, @NonNull LinearLayout layoutAlipay, @NonNull LinearLayout layoutCreditCardPay, @NonNull LinearLayout layoutPabiPay, @NonNull LinearLayout layoutUnionpay, @NonNull LinearLayout layoutWeixin, @NonNull LinearLayout layouthongbaoPay, @NonNull ProgressBar mgLoading, @NonNull Button ok, @NonNull ImageView pabiPay, @NonNull LinearLayout papaPay, @NonNull HorizontalScrollView payChoisePayType, @NonNull LinearLayout payDefault, @NonNull LinearLayout payLoding, @NonNull TextView payMoney, @NonNull TextView payProduct, @NonNull TextView payTitle, @NonNull TextView textView, @NonNull TextView textView16, @NonNull TextView textView17, @NonNull TextView textView18, @NonNull TextView textView21, @NonNull TextView textView29, @NonNull TextView textView30, @NonNull ImageView unionpay, @NonNull ImageView weichatPay) {
        this.f43652b = rootView;
        this.f43653c = aliPay;
        this.f43654d = anotherPayType;
        this.f43655e = creditCardPay;
        this.f43656f = hongbaoPay;
        this.f43657g = layoutAlipay;
        this.f43658h = layoutCreditCardPay;
        this.f43659i = layoutPabiPay;
        this.f43660j = layoutUnionpay;
        this.f43661k = layoutWeixin;
        this.f43662l = layouthongbaoPay;
        this.f43663m = mgLoading;
        this.f43664n = ok;
        this.f43665o = pabiPay;
        this.f43666p = papaPay;
        this.f43667q = payChoisePayType;
        this.f43668r = payDefault;
        this.f43669s = payLoding;
        this.f43670t = payMoney;
        this.f43671u = payProduct;
        this.f43672v = payTitle;
        this.f43673w = textView;
        this.f43674x = textView16;
        this.f43675y = textView17;
        this.f43676z = textView18;
        this.A = textView21;
        this.B = textView29;
        this.C = textView30;
        this.D = unionpay;
        this.E = weichatPay;
    }

    @NonNull
    public static q3 bind(@NonNull View rootView) {
        int i10 = R.id.aliPay;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.aliPay);
        if (imageView != null) {
            i10 = R.id.anotherPayType;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.anotherPayType);
            if (textView != null) {
                i10 = R.id.creditCardPay;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.creditCardPay);
                if (imageView2 != null) {
                    i10 = R.id.hongbaoPay;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.hongbaoPay);
                    if (imageView3 != null) {
                        i10 = R.id.layoutAlipay;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutAlipay);
                        if (linearLayout != null) {
                            i10 = R.id.layoutCreditCardPay;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutCreditCardPay);
                            if (linearLayout2 != null) {
                                i10 = R.id.layoutPabiPay;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutPabiPay);
                                if (linearLayout3 != null) {
                                    i10 = R.id.layoutUnionpay;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutUnionpay);
                                    if (linearLayout4 != null) {
                                        i10 = R.id.layoutWeixin;
                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutWeixin);
                                        if (linearLayout5 != null) {
                                            i10 = R.id.layouthongbaoPay;
                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layouthongbaoPay);
                                            if (linearLayout6 != null) {
                                                i10 = R.id.mg_loading;
                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.mg_loading);
                                                if (progressBar != null) {
                                                    i10 = R.id.ok;
                                                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.ok);
                                                    if (button != null) {
                                                        i10 = R.id.pabiPay;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.pabiPay);
                                                        if (imageView4 != null) {
                                                            i10 = R.id.papa_pay;
                                                            LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.papa_pay);
                                                            if (linearLayout7 != null) {
                                                                i10 = R.id.payChoisePayType;
                                                                HorizontalScrollView horizontalScrollView = (HorizontalScrollView) ViewBindings.findChildViewById(rootView, R.id.payChoisePayType);
                                                                if (horizontalScrollView != null) {
                                                                    i10 = R.id.payDefault;
                                                                    LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.payDefault);
                                                                    if (linearLayout8 != null) {
                                                                        i10 = R.id.payLoding;
                                                                        LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.payLoding);
                                                                        if (linearLayout9 != null) {
                                                                            i10 = R.id.payMoney;
                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.payMoney);
                                                                            if (textView2 != null) {
                                                                                i10 = R.id.payProduct;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.payProduct);
                                                                                if (textView3 != null) {
                                                                                    i10 = R.id.payTitle;
                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.payTitle);
                                                                                    if (textView4 != null) {
                                                                                        i10 = R.id.textView;
                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                                                                                        if (textView5 != null) {
                                                                                            i10 = R.id.textView16;
                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView16);
                                                                                            if (textView6 != null) {
                                                                                                i10 = R.id.textView17;
                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView17);
                                                                                                if (textView7 != null) {
                                                                                                    i10 = R.id.textView18;
                                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView18);
                                                                                                    if (textView8 != null) {
                                                                                                        i10 = R.id.textView21;
                                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView21);
                                                                                                        if (textView9 != null) {
                                                                                                            i10 = R.id.textView29;
                                                                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView29);
                                                                                                            if (textView10 != null) {
                                                                                                                i10 = R.id.textView30;
                                                                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView30);
                                                                                                                if (textView11 != null) {
                                                                                                                    i10 = R.id.unionpay;
                                                                                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.unionpay);
                                                                                                                    if (imageView5 != null) {
                                                                                                                        i10 = R.id.weichatPay;
                                                                                                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.weichatPay);
                                                                                                                        if (imageView6 != null) {
                                                                                                                            return new q3((RelativeLayout) rootView, imageView, textView, imageView2, imageView3, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, progressBar, button, imageView4, linearLayout7, horizontalScrollView, linearLayout8, linearLayout9, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, imageView5, imageView6);
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
    public static q3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43652b;
    }

    @NonNull
    public static q3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_pay_now, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

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
public final class hd implements ViewBinding {

    @NonNull
    public final TextView A;

    @NonNull
    public final TextView B;

    @NonNull
    public final TextView C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39280c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39281d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39282e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39283f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f39284g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39285h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39286i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f39287j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f39288k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f39289l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f39290m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39291n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f39292o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39293p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39294q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f39295r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f39296s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f39297t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f39298u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f39299v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f39300w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f39301x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f39302y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f39303z;

    private hd(@NonNull LinearLayout rootView, @NonNull LinearLayout backLayout, @NonNull LinearLayout backLayout1, @NonNull LinearLayout backLayout2, @NonNull LinearLayout backLayout22, @NonNull TextView getGift, @NonNull SimpleDraweeView giftIcon, @NonNull LinearLayout giftLayout, @NonNull TextView giftMessage, @NonNull ImageView imageView15, @NonNull ImageView imageView5, @NonNull ImageView imageView52, @NonNull LinearLayout informationLayout, @NonNull TextView line, @NonNull LinearLayout lookOther, @NonNull LinearLayout lookOther2, @NonNull TextView message1, @NonNull TextView message2, @NonNull TextView messageType1, @NonNull TextView messageType2, @NonNull TextView moreText, @NonNull TextView moreText2, @NonNull TextView textView9, @NonNull TextView textView92, @NonNull TextView time1, @NonNull TextView time2, @NonNull TextView titleText, @NonNull TextView titleText2) {
        this.f39279b = rootView;
        this.f39280c = backLayout;
        this.f39281d = backLayout1;
        this.f39282e = backLayout2;
        this.f39283f = backLayout22;
        this.f39284g = getGift;
        this.f39285h = giftIcon;
        this.f39286i = giftLayout;
        this.f39287j = giftMessage;
        this.f39288k = imageView15;
        this.f39289l = imageView5;
        this.f39290m = imageView52;
        this.f39291n = informationLayout;
        this.f39292o = line;
        this.f39293p = lookOther;
        this.f39294q = lookOther2;
        this.f39295r = message1;
        this.f39296s = message2;
        this.f39297t = messageType1;
        this.f39298u = messageType2;
        this.f39299v = moreText;
        this.f39300w = moreText2;
        this.f39301x = textView9;
        this.f39302y = textView92;
        this.f39303z = time1;
        this.A = time2;
        this.B = titleText;
        this.C = titleText2;
    }

    @NonNull
    public static hd bind(@NonNull View rootView) {
        int i10 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout);
        if (linearLayout != null) {
            i10 = R.id.backLayout1;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout1);
            if (linearLayout2 != null) {
                i10 = R.id.backLayout2;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout2);
                if (linearLayout3 != null) {
                    i10 = R.id.backLayout22;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout22);
                    if (linearLayout4 != null) {
                        i10 = R.id.getGift;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.getGift);
                        if (textView != null) {
                            i10 = R.id.giftIcon;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.giftIcon);
                            if (simpleDraweeView != null) {
                                i10 = R.id.giftLayout;
                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.giftLayout);
                                if (linearLayout5 != null) {
                                    i10 = R.id.giftMessage;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftMessage);
                                    if (textView2 != null) {
                                        i10 = R.id.imageView15;
                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView15);
                                        if (imageView != null) {
                                            i10 = R.id.imageView5;
                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView5);
                                            if (imageView2 != null) {
                                                i10 = R.id.imageView52;
                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView52);
                                                if (imageView3 != null) {
                                                    i10 = R.id.informationLayout;
                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.informationLayout);
                                                    if (linearLayout6 != null) {
                                                        i10 = R.id.line;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.line);
                                                        if (textView3 != null) {
                                                            i10 = R.id.look_other;
                                                            LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.look_other);
                                                            if (linearLayout7 != null) {
                                                                i10 = R.id.look_other2;
                                                                LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.look_other2);
                                                                if (linearLayout8 != null) {
                                                                    i10 = R.id.message1;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.message1);
                                                                    if (textView4 != null) {
                                                                        i10 = R.id.message2;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.message2);
                                                                        if (textView5 != null) {
                                                                            i10 = R.id.messageType1;
                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.messageType1);
                                                                            if (textView6 != null) {
                                                                                i10 = R.id.messageType2;
                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.messageType2);
                                                                                if (textView7 != null) {
                                                                                    i10 = R.id.moreText;
                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moreText);
                                                                                    if (textView8 != null) {
                                                                                        i10 = R.id.moreText2;
                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moreText2);
                                                                                        if (textView9 != null) {
                                                                                            i10 = R.id.textView9;
                                                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                                                                                            if (textView10 != null) {
                                                                                                i10 = R.id.textView92;
                                                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView92);
                                                                                                if (textView11 != null) {
                                                                                                    i10 = R.id.time1;
                                                                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time1);
                                                                                                    if (textView12 != null) {
                                                                                                        i10 = R.id.time2;
                                                                                                        TextView textView13 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time2);
                                                                                                        if (textView13 != null) {
                                                                                                            i10 = R.id.titleText;
                                                                                                            TextView textView14 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                                                                                            if (textView14 != null) {
                                                                                                                i10 = R.id.titleText2;
                                                                                                                TextView textView15 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText2);
                                                                                                                if (textView15 != null) {
                                                                                                                    return new hd((LinearLayout) rootView, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView, simpleDraweeView, linearLayout5, textView2, imageView, imageView2, imageView3, linearLayout6, textView3, linearLayout7, linearLayout8, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15);
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
    public static hd inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39279b;
    }

    @NonNull
    public static hd inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.detial_gift_and_service_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

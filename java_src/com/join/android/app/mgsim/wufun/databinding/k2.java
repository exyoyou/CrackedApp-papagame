package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class k2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ScrollView f40549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40552e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40553f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40554g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f40555h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40556i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40557j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40558k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40559l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f40560m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40561n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40562o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40563p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40564q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40565r;

    private k2(@NonNull ScrollView rootView, @NonNull LinearLayout fbaLay, @NonNull LinearLayout fcLay, @NonNull LinearLayout gbaLay, @NonNull LinearLayout gbcLay, @NonNull TextView handshankName, @NonNull ImageView handshankOnOff, @NonNull LinearLayout lay1, @NonNull LinearLayout lay2, @NonNull LinearLayout mdLay, @NonNull LinearLayout ndsLay, @NonNull ImageView onOffImg, @NonNull LinearLayout papaHandList, @NonNull LinearLayout psLay, @NonNull LinearLayout pspLay, @NonNull LinearLayout sfcLay, @NonNull LinearLayout wscLay) {
        this.f40549b = rootView;
        this.f40550c = fbaLay;
        this.f40551d = fcLay;
        this.f40552e = gbaLay;
        this.f40553f = gbcLay;
        this.f40554g = handshankName;
        this.f40555h = handshankOnOff;
        this.f40556i = lay1;
        this.f40557j = lay2;
        this.f40558k = mdLay;
        this.f40559l = ndsLay;
        this.f40560m = onOffImg;
        this.f40561n = papaHandList;
        this.f40562o = psLay;
        this.f40563p = pspLay;
        this.f40564q = sfcLay;
        this.f40565r = wscLay;
    }

    @NonNull
    public static k2 bind(@NonNull View rootView) {
        int i10 = R.id.fba_lay;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.fba_lay);
        if (linearLayout != null) {
            i10 = R.id.fc_lay;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.fc_lay);
            if (linearLayout2 != null) {
                i10 = R.id.gba_lay;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gba_lay);
                if (linearLayout3 != null) {
                    i10 = R.id.gbc_lay;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gbc_lay);
                    if (linearLayout4 != null) {
                        i10 = R.id.handshank_name;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.handshank_name);
                        if (textView != null) {
                            i10 = R.id.handshank_on_off;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.handshank_on_off);
                            if (imageView != null) {
                                i10 = R.id.lay_1;
                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.lay_1);
                                if (linearLayout5 != null) {
                                    i10 = R.id.lay_2;
                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.lay_2);
                                    if (linearLayout6 != null) {
                                        i10 = R.id.md_lay;
                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.md_lay);
                                        if (linearLayout7 != null) {
                                            i10 = R.id.nds_lay;
                                            LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.nds_lay);
                                            if (linearLayout8 != null) {
                                                i10 = R.id.on_off_img;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.on_off_img);
                                                if (imageView2 != null) {
                                                    i10 = R.id.papaHandList;
                                                    LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.papaHandList);
                                                    if (linearLayout9 != null) {
                                                        i10 = R.id.ps_lay;
                                                        LinearLayout linearLayout10 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ps_lay);
                                                        if (linearLayout10 != null) {
                                                            i10 = R.id.psp_lay;
                                                            LinearLayout linearLayout11 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.psp_lay);
                                                            if (linearLayout11 != null) {
                                                                i10 = R.id.sfc_lay;
                                                                LinearLayout linearLayout12 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.sfc_lay);
                                                                if (linearLayout12 != null) {
                                                                    i10 = R.id.wsc_lay;
                                                                    LinearLayout linearLayout13 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.wsc_lay);
                                                                    if (linearLayout13 != null) {
                                                                        return new k2((ScrollView) rootView, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView, imageView, linearLayout5, linearLayout6, linearLayout7, linearLayout8, imageView2, linearLayout9, linearLayout10, linearLayout11, linearLayout12, linearLayout13);
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
    public static k2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ScrollView getRoot() {
        return this.f40549b;
    }

    @NonNull
    public static k2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_handshank_mapkey, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

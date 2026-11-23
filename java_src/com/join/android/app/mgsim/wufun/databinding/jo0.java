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
public final class jo0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f40327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f40328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40329e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40330f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40331g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40332h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40333i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f40334j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40335k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40336l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40337m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f40338n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f40339o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f40340p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40341q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40342r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f40343s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f40344t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final Button f40345u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f40346v;

    private jo0(@NonNull LinearLayout rootView, @NonNull Button dialogButtonCancle, @NonNull Button dialogButtonOk, @NonNull TextView dialogContent, @NonNull TextView dialogContent2, @NonNull TextView failedMessage, @NonNull LinearLayout gameLay, @NonNull LinearLayout loadingLay, @NonNull ImageView lodingBackImage, @NonNull LinearLayout lodingFaile, @NonNull SimpleDraweeView plugImgIv, @NonNull LinearLayout plugLay, @NonNull TextView plugNameTv, @NonNull TextView plugSizeTv, @NonNull ImageView relodingimag, @NonNull SimpleDraweeView romImgIv, @NonNull LinearLayout romLay, @NonNull TextView romNameTv, @NonNull TextView romSizeTv, @NonNull Button setNetwork, @NonNull TextView tipTitle) {
        this.f40326b = rootView;
        this.f40327c = dialogButtonCancle;
        this.f40328d = dialogButtonOk;
        this.f40329e = dialogContent;
        this.f40330f = dialogContent2;
        this.f40331g = failedMessage;
        this.f40332h = gameLay;
        this.f40333i = loadingLay;
        this.f40334j = lodingBackImage;
        this.f40335k = lodingFaile;
        this.f40336l = plugImgIv;
        this.f40337m = plugLay;
        this.f40338n = plugNameTv;
        this.f40339o = plugSizeTv;
        this.f40340p = relodingimag;
        this.f40341q = romImgIv;
        this.f40342r = romLay;
        this.f40343s = romNameTv;
        this.f40344t = romSizeTv;
        this.f40345u = setNetwork;
        this.f40346v = tipTitle;
    }

    @NonNull
    public static jo0 bind(@NonNull View rootView) {
        int i10 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_cancle);
        if (button != null) {
            i10 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_ok);
            if (button2 != null) {
                i10 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_content);
                if (textView != null) {
                    i10 = R.id.dialog_content_2;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_content_2);
                    if (textView2 != null) {
                        i10 = R.id.failedMessage;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.failedMessage);
                        if (textView3 != null) {
                            i10 = R.id.game_lay;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.game_lay);
                            if (linearLayout != null) {
                                i10 = R.id.loading_lay;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loading_lay);
                                if (linearLayout2 != null) {
                                    i10 = R.id.lodingBackImage;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lodingBackImage);
                                    if (imageView != null) {
                                        i10 = R.id.loding_faile;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loding_faile);
                                        if (linearLayout3 != null) {
                                            i10 = R.id.plugImgIv;
                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.plugImgIv);
                                            if (simpleDraweeView != null) {
                                                i10 = R.id.plug_lay;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.plug_lay);
                                                if (linearLayout4 != null) {
                                                    i10 = R.id.plugNameTv;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.plugNameTv);
                                                    if (textView4 != null) {
                                                        i10 = R.id.plugSizeTv;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.plugSizeTv);
                                                        if (textView5 != null) {
                                                            i10 = R.id.relodingimag;
                                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.relodingimag);
                                                            if (imageView2 != null) {
                                                                i10 = R.id.romImgIv;
                                                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.romImgIv);
                                                                if (simpleDraweeView2 != null) {
                                                                    i10 = R.id.rom_lay;
                                                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.rom_lay);
                                                                    if (linearLayout5 != null) {
                                                                        i10 = R.id.romNameTv;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.romNameTv);
                                                                        if (textView6 != null) {
                                                                            i10 = R.id.romSizeTv;
                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.romSizeTv);
                                                                            if (textView7 != null) {
                                                                                i10 = R.id.setNetwork;
                                                                                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.setNetwork);
                                                                                if (button3 != null) {
                                                                                    i10 = R.id.tip_title;
                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_title);
                                                                                    if (textView8 != null) {
                                                                                        return new jo0((LinearLayout) rootView, button, button2, textView, textView2, textView3, linearLayout, linearLayout2, imageView, linearLayout3, simpleDraweeView, linearLayout4, textView4, textView5, imageView2, simpleDraweeView2, linearLayout5, textView6, textView7, button3, textView8);
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
    public static jo0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40326b;
    }

    @NonNull
    public static jo0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.net_whole_invite_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

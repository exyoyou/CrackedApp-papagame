package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class xw0 implements ViewBinding {

    @NonNull
    public final Button A;

    @NonNull
    public final RelativeLayout B;

    @NonNull
    public final Button C;

    @NonNull
    public final Button D;

    @NonNull
    public final TextView E;

    @NonNull
    public final Button F;

    @NonNull
    public final Button G;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47457c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f47458d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47459e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47460f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47461g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final FrameLayout f47462h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47463i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final EditText f47464j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f47465k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final FrameLayout f47466l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f47467m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final EditText f47468n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f47469o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final FrameLayout f47470p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47471q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47472r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47473s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final FrameLayout f47474t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final ScrollView f47475u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47476v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47477w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47478x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f47479y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final FrameLayout f47480z;

    private xw0(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull Button continueUpload, @NonNull TextView dscFaildTxt, @NonNull TextView dscIngTxt, @NonNull TextView dscSuccessTxt, @NonNull FrameLayout fileLay, @NonNull TextView fileName, @NonNull EditText gameDsc, @NonNull TextView gameIcon, @NonNull FrameLayout gameIconLay, @NonNull TextView gameImage, @NonNull EditText gameName, @NonNull TextView gameType, @NonNull FrameLayout gameTypeLay, @NonNull SimpleDraweeView img1, @NonNull SimpleDraweeView img2, @NonNull SimpleDraweeView img3, @NonNull FrameLayout imgLay, @NonNull ScrollView lay1, @NonNull LinearLayout lay2, @NonNull LinearLayout lay3, @NonNull LinearLayout lay4, @NonNull TextView platformType, @NonNull FrameLayout platformTypeLay, @NonNull Button reContinueUpload, @NonNull RelativeLayout relativeLayout, @NonNull Button reupload, @NonNull Button stopupload, @NonNull TextView titleText, @NonNull Button uploadBtn, @NonNull Button uploadDsc) {
        this.f47456b = rootView;
        this.f47457c = backImage;
        this.f47458d = continueUpload;
        this.f47459e = dscFaildTxt;
        this.f47460f = dscIngTxt;
        this.f47461g = dscSuccessTxt;
        this.f47462h = fileLay;
        this.f47463i = fileName;
        this.f47464j = gameDsc;
        this.f47465k = gameIcon;
        this.f47466l = gameIconLay;
        this.f47467m = gameImage;
        this.f47468n = gameName;
        this.f47469o = gameType;
        this.f47470p = gameTypeLay;
        this.f47471q = img1;
        this.f47472r = img2;
        this.f47473s = img3;
        this.f47474t = imgLay;
        this.f47475u = lay1;
        this.f47476v = lay2;
        this.f47477w = lay3;
        this.f47478x = lay4;
        this.f47479y = platformType;
        this.f47480z = platformTypeLay;
        this.A = reContinueUpload;
        this.B = relativeLayout;
        this.C = reupload;
        this.D = stopupload;
        this.E = titleText;
        this.F = uploadBtn;
        this.G = uploadDsc;
    }

    @NonNull
    public static xw0 bind(@NonNull View rootView) {
        int i10 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backImage);
        if (imageView != null) {
            i10 = R.id.continue_upload;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.continue_upload);
            if (button != null) {
                i10 = R.id.dscFaildTxt;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dscFaildTxt);
                if (textView != null) {
                    i10 = R.id.dscIngTxt;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dscIngTxt);
                    if (textView2 != null) {
                        i10 = R.id.dscSuccessTxt;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dscSuccessTxt);
                        if (textView3 != null) {
                            i10 = R.id.file_lay;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.file_lay);
                            if (frameLayout != null) {
                                i10 = R.id.fileName;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.fileName);
                                if (textView4 != null) {
                                    i10 = R.id.gameDsc;
                                    EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.gameDsc);
                                    if (editText != null) {
                                        i10 = R.id.gameIcon;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameIcon);
                                        if (textView5 != null) {
                                            i10 = R.id.gameIcon_lay;
                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.gameIcon_lay);
                                            if (frameLayout2 != null) {
                                                i10 = R.id.gameImage;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameImage);
                                                if (textView6 != null) {
                                                    i10 = R.id.gameName;
                                                    EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.gameName);
                                                    if (editText2 != null) {
                                                        i10 = R.id.gameType;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameType);
                                                        if (textView7 != null) {
                                                            i10 = R.id.gameType_lay;
                                                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.gameType_lay);
                                                            if (frameLayout3 != null) {
                                                                i10 = R.id.img_1;
                                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_1);
                                                                if (simpleDraweeView != null) {
                                                                    i10 = R.id.img_2;
                                                                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_2);
                                                                    if (simpleDraweeView2 != null) {
                                                                        i10 = R.id.img_3;
                                                                        SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_3);
                                                                        if (simpleDraweeView3 != null) {
                                                                            i10 = R.id.img_lay;
                                                                            FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.img_lay);
                                                                            if (frameLayout4 != null) {
                                                                                i10 = R.id.lay_1;
                                                                                ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.lay_1);
                                                                                if (scrollView != null) {
                                                                                    i10 = R.id.lay_2;
                                                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.lay_2);
                                                                                    if (linearLayout != null) {
                                                                                        i10 = R.id.lay_3;
                                                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.lay_3);
                                                                                        if (linearLayout2 != null) {
                                                                                            i10 = R.id.lay_4;
                                                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.lay_4);
                                                                                            if (linearLayout3 != null) {
                                                                                                i10 = R.id.platformType;
                                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.platformType);
                                                                                                if (textView8 != null) {
                                                                                                    i10 = R.id.platformType_lay;
                                                                                                    FrameLayout frameLayout5 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.platformType_lay);
                                                                                                    if (frameLayout5 != null) {
                                                                                                        i10 = R.id.re_continue_upload;
                                                                                                        Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.re_continue_upload);
                                                                                                        if (button2 != null) {
                                                                                                            i10 = R.id.relativeLayout;
                                                                                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relativeLayout);
                                                                                                            if (relativeLayout != null) {
                                                                                                                i10 = R.id.reupload;
                                                                                                                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.reupload);
                                                                                                                if (button3 != null) {
                                                                                                                    i10 = R.id.stopupload;
                                                                                                                    Button button4 = (Button) ViewBindings.findChildViewById(rootView, R.id.stopupload);
                                                                                                                    if (button4 != null) {
                                                                                                                        i10 = R.id.titleText;
                                                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                                                                                                        if (textView9 != null) {
                                                                                                                            i10 = R.id.uploadBtn;
                                                                                                                            Button button5 = (Button) ViewBindings.findChildViewById(rootView, R.id.uploadBtn);
                                                                                                                            if (button5 != null) {
                                                                                                                                i10 = R.id.uploadDsc;
                                                                                                                                Button button6 = (Button) ViewBindings.findChildViewById(rootView, R.id.uploadDsc);
                                                                                                                                if (button6 != null) {
                                                                                                                                    return new xw0((LinearLayout) rootView, imageView, button, textView, textView2, textView3, frameLayout, textView4, editText, textView5, frameLayout2, textView6, editText2, textView7, frameLayout3, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, frameLayout4, scrollView, linearLayout, linearLayout2, linearLayout3, textView8, frameLayout5, button2, relativeLayout, button3, button4, textView9, button5, button6);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static xw0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47456b;
    }

    @NonNull
    public static xw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.upload_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

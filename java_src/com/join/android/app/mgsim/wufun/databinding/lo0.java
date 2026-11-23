package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class lo0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f41435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41436c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41437d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41439f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41440g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41441h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ProgressBar f41442i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final Button f41443j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41444k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f41445l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f41446m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final Button f41447n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41448o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f41449p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f41450q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ImageView f41451r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final ImageView f41452s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f41453t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final ImageView f41454u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final ImageView f41455v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final ImageView f41456w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41457x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41458y;

    private lo0(@NonNull FrameLayout rootView, @NonNull TextView cardArenaLay, @NonNull TextView cardImageInviteLay, @NonNull TextView cardImageLocalLay, @NonNull TextView cardImageMatchLay, @NonNull TextView cardImageSoloLay, @NonNull LinearLayout gameLay, @NonNull ProgressBar mgLoading, @NonNull Button netMatch2GameFaliIcon, @NonNull LinearLayout netMatch2GameFaliLay, @NonNull TextView netMatch2GameFaliTxt, @NonNull TextView pspLay, @NonNull Button region, @NonNull LinearLayout regionLay, @NonNull TextView title1, @NonNull ImageView title1Icon1, @NonNull ImageView title1Icon2, @NonNull ImageView title1Icon3, @NonNull TextView title2, @NonNull ImageView title2Icon1, @NonNull ImageView title2Icon2, @NonNull ImageView title2Icon3, @NonNull LinearLayout titlelay1, @NonNull LinearLayout titlelay2) {
        this.f41435b = rootView;
        this.f41436c = cardArenaLay;
        this.f41437d = cardImageInviteLay;
        this.f41438e = cardImageLocalLay;
        this.f41439f = cardImageMatchLay;
        this.f41440g = cardImageSoloLay;
        this.f41441h = gameLay;
        this.f41442i = mgLoading;
        this.f41443j = netMatch2GameFaliIcon;
        this.f41444k = netMatch2GameFaliLay;
        this.f41445l = netMatch2GameFaliTxt;
        this.f41446m = pspLay;
        this.f41447n = region;
        this.f41448o = regionLay;
        this.f41449p = title1;
        this.f41450q = title1Icon1;
        this.f41451r = title1Icon2;
        this.f41452s = title1Icon3;
        this.f41453t = title2;
        this.f41454u = title2Icon1;
        this.f41455v = title2Icon2;
        this.f41456w = title2Icon3;
        this.f41457x = titlelay1;
        this.f41458y = titlelay2;
    }

    @NonNull
    public static lo0 bind(@NonNull View rootView) {
        int i10 = R.id.cardArena_lay;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cardArena_lay);
        if (textView != null) {
            i10 = R.id.cardImageInvite_lay;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.cardImageInvite_lay);
            if (textView2 != null) {
                i10 = R.id.cardImageLocal_lay;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.cardImageLocal_lay);
                if (textView3 != null) {
                    i10 = R.id.cardImageMatch_lay;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.cardImageMatch_lay);
                    if (textView4 != null) {
                        i10 = R.id.cardImageSolo_lay;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.cardImageSolo_lay);
                        if (textView5 != null) {
                            i10 = R.id.game_lay;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.game_lay);
                            if (linearLayout != null) {
                                i10 = R.id.mg_loading;
                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.mg_loading);
                                if (progressBar != null) {
                                    i10 = R.id.net_match2_game_fali_icon;
                                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.net_match2_game_fali_icon);
                                    if (button != null) {
                                        i10 = R.id.net_match2_game_fali_lay;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.net_match2_game_fali_lay);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.net_match2_game_fali_txt;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.net_match2_game_fali_txt);
                                            if (textView6 != null) {
                                                i10 = R.id.psp_lay;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.psp_lay);
                                                if (textView7 != null) {
                                                    i10 = R.id.region;
                                                    Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.region);
                                                    if (button2 != null) {
                                                        i10 = R.id.region_lay;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.region_lay);
                                                        if (linearLayout3 != null) {
                                                            i10 = R.id.title_1;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_1);
                                                            if (textView8 != null) {
                                                                i10 = R.id.title1_icon_1;
                                                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.title1_icon_1);
                                                                if (imageView != null) {
                                                                    i10 = R.id.title1_icon_2;
                                                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.title1_icon_2);
                                                                    if (imageView2 != null) {
                                                                        i10 = R.id.title1_icon_3;
                                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.title1_icon_3);
                                                                        if (imageView3 != null) {
                                                                            i10 = R.id.title_2;
                                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_2);
                                                                            if (textView9 != null) {
                                                                                i10 = R.id.title2_icon_1;
                                                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.title2_icon_1);
                                                                                if (imageView4 != null) {
                                                                                    i10 = R.id.title2_icon_2;
                                                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.title2_icon_2);
                                                                                    if (imageView5 != null) {
                                                                                        i10 = R.id.title2_icon_3;
                                                                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.title2_icon_3);
                                                                                        if (imageView6 != null) {
                                                                                            i10 = R.id.titlelay_1;
                                                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.titlelay_1);
                                                                                            if (linearLayout4 != null) {
                                                                                                i10 = R.id.titlelay_2;
                                                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.titlelay_2);
                                                                                                if (linearLayout5 != null) {
                                                                                                    return new lo0((FrameLayout) rootView, textView, textView2, textView3, textView4, textView5, linearLayout, progressBar, button, linearLayout2, textView6, textView7, button2, linearLayout3, textView8, imageView, imageView2, imageView3, textView9, imageView4, imageView5, imageView6, linearLayout4, linearLayout5);
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
    public static lo0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f41435b;
    }

    @NonNull
    public static lo0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.network_fight_child_lay, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

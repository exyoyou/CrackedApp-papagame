package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ce implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f36881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f36883e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36884f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36885g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36886h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36887i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36888j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36889k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36890l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f36891m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36892n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f36893o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ProgressBar f36894p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f36895q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final Button f36896r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f36897s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f36898t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f36899u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f36900v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f36901w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f36902x;

    private ce(@NonNull RelativeLayout rootView, @NonNull Button btnGoGame, @NonNull TextView failedMessage, @NonNull ProgressBar gameProgressBar, @NonNull LinearLayout ivClose, @NonNull SimpleDraweeView ivGameIcon, @NonNull SimpleDraweeView ivPluginIcon, @NonNull LinearLayout llContent, @NonNull LinearLayout llGame, @NonNull LinearLayout llPlugin, @NonNull LinearLayout loadingLay, @NonNull ImageView lodingBackImage, @NonNull LinearLayout lodingFaile, @NonNull TextView moneyText, @NonNull ProgressBar plugProgressBar, @NonNull ImageView relodingimag, @NonNull Button setNetwork, @NonNull TextView tvGameName, @NonNull TextView tvGameSize, @NonNull TextView tvInfo, @NonNull TextView tvPluginName, @NonNull TextView tvPluginSize, @NonNull TextView tvTitle) {
        this.f36880b = rootView;
        this.f36881c = btnGoGame;
        this.f36882d = failedMessage;
        this.f36883e = gameProgressBar;
        this.f36884f = ivClose;
        this.f36885g = ivGameIcon;
        this.f36886h = ivPluginIcon;
        this.f36887i = llContent;
        this.f36888j = llGame;
        this.f36889k = llPlugin;
        this.f36890l = loadingLay;
        this.f36891m = lodingBackImage;
        this.f36892n = lodingFaile;
        this.f36893o = moneyText;
        this.f36894p = plugProgressBar;
        this.f36895q = relodingimag;
        this.f36896r = setNetwork;
        this.f36897s = tvGameName;
        this.f36898t = tvGameSize;
        this.f36899u = tvInfo;
        this.f36900v = tvPluginName;
        this.f36901w = tvPluginSize;
        this.f36902x = tvTitle;
    }

    @NonNull
    public static ce bind(@NonNull View rootView) {
        int i10 = R.id.btnGoGame;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btnGoGame);
        if (button != null) {
            i10 = R.id.failedMessage;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.failedMessage);
            if (textView != null) {
                i10 = R.id.gameProgressBar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.gameProgressBar);
                if (progressBar != null) {
                    i10 = R.id.iv_close;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                    if (linearLayout != null) {
                        i10 = R.id.iv_game_icon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_game_icon);
                        if (simpleDraweeView != null) {
                            i10 = R.id.iv_plugin_icon;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_plugin_icon);
                            if (simpleDraweeView2 != null) {
                                i10 = R.id.ll_content;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_content);
                                if (linearLayout2 != null) {
                                    i10 = R.id.ll_game;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_game);
                                    if (linearLayout3 != null) {
                                        i10 = R.id.ll_plugin;
                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_plugin);
                                        if (linearLayout4 != null) {
                                            i10 = R.id.loading_lay;
                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loading_lay);
                                            if (linearLayout5 != null) {
                                                i10 = R.id.lodingBackImage;
                                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lodingBackImage);
                                                if (imageView != null) {
                                                    i10 = R.id.loding_faile;
                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loding_faile);
                                                    if (linearLayout6 != null) {
                                                        i10 = R.id.moneyText;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText);
                                                        if (textView2 != null) {
                                                            i10 = R.id.plugProgressBar;
                                                            ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.plugProgressBar);
                                                            if (progressBar2 != null) {
                                                                i10 = R.id.relodingimag;
                                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.relodingimag);
                                                                if (imageView2 != null) {
                                                                    i10 = R.id.setNetwork;
                                                                    Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.setNetwork);
                                                                    if (button2 != null) {
                                                                        i10 = R.id.tv_game_name;
                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_game_name);
                                                                        if (textView3 != null) {
                                                                            i10 = R.id.tv_game_size;
                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_game_size);
                                                                            if (textView4 != null) {
                                                                                i10 = R.id.tv_info;
                                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_info);
                                                                                if (textView5 != null) {
                                                                                    i10 = R.id.tv_plugin_name;
                                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_plugin_name);
                                                                                    if (textView6 != null) {
                                                                                        i10 = R.id.tv_plugin_size;
                                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_plugin_size);
                                                                                        if (textView7 != null) {
                                                                                            i10 = R.id.tv_title;
                                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                                                                                            if (textView8 != null) {
                                                                                                return new ce((RelativeLayout) rootView, button, textView, progressBar, linearLayout, simpleDraweeView, simpleDraweeView2, linearLayout2, linearLayout3, linearLayout4, linearLayout5, imageView, linearLayout6, textView2, progressBar2, imageView2, button2, textView3, textView4, textView5, textView6, textView7, textView8);
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
    public static ce inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36880b;
    }

    @NonNull
    public static ce inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_arena_download_game_plugin, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

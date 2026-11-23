package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class fu implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f38528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38529c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38530d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38531e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38532f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ListView f38533g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f38534h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38535i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f38536j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ProgressBar f38537k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f38538l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f38539m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f38540n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f38541o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f38542p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f38543q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f38544r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final Button f38545s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f38546t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38547u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final FrameLayout f38548v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f38549w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final FrameLayout f38550x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final Button f38551y;

    private fu(@NonNull FrameLayout rootView, @NonNull TextView changci, @NonNull TextView failedMessage, @NonNull TextView jibie, @NonNull LinearLayout layoutMain, @NonNull ListView listview, @NonNull ImageView lodingBackImage, @NonNull LinearLayout lodingFaile, @NonNull TextView pabi, @NonNull ProgressBar progressBar, @NonNull TextView progressBarTxt, @NonNull ImageView relodingimag, @NonNull TextView saishiAllChangci, @NonNull TextView saishiFailed, @NonNull TextView saishiSenglv, @NonNull TextView saishiType, @NonNull TextView saishiWinnumber, @NonNull Button setNetwork, @NonNull TextView shenglv, @NonNull SimpleDraweeView userIconImage, @NonNull FrameLayout userIconImageLay, @NonNull TextView userName, @NonNull FrameLayout userNameLay, @NonNull Button worldBack) {
        this.f38528b = rootView;
        this.f38529c = changci;
        this.f38530d = failedMessage;
        this.f38531e = jibie;
        this.f38532f = layoutMain;
        this.f38533g = listview;
        this.f38534h = lodingBackImage;
        this.f38535i = lodingFaile;
        this.f38536j = pabi;
        this.f38537k = progressBar;
        this.f38538l = progressBarTxt;
        this.f38539m = relodingimag;
        this.f38540n = saishiAllChangci;
        this.f38541o = saishiFailed;
        this.f38542p = saishiSenglv;
        this.f38543q = saishiType;
        this.f38544r = saishiWinnumber;
        this.f38545s = setNetwork;
        this.f38546t = shenglv;
        this.f38547u = userIconImage;
        this.f38548v = userIconImageLay;
        this.f38549w = userName;
        this.f38550x = userNameLay;
        this.f38551y = worldBack;
    }

    @NonNull
    public static fu bind(@NonNull View rootView) {
        int i10 = R.id.changci;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.changci);
        if (textView != null) {
            i10 = R.id.failedMessage;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.failedMessage);
            if (textView2 != null) {
                i10 = R.id.jibie;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.jibie);
                if (textView3 != null) {
                    i10 = R.id.layoutMain;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutMain);
                    if (linearLayout != null) {
                        i10 = R.id.listview;
                        ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.listview);
                        if (listView != null) {
                            i10 = R.id.lodingBackImage;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lodingBackImage);
                            if (imageView != null) {
                                i10 = R.id.loding_faile;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loding_faile);
                                if (linearLayout2 != null) {
                                    i10 = R.id.pabi;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pabi);
                                    if (textView4 != null) {
                                        i10 = R.id.progressBar;
                                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                        if (progressBar != null) {
                                            i10 = R.id.progressBarTxt;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.progressBarTxt);
                                            if (textView5 != null) {
                                                i10 = R.id.relodingimag;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.relodingimag);
                                                if (imageView2 != null) {
                                                    i10 = R.id.saishiAllChangci;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.saishiAllChangci);
                                                    if (textView6 != null) {
                                                        i10 = R.id.saishiFailed;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.saishiFailed);
                                                        if (textView7 != null) {
                                                            i10 = R.id.saishiSenglv;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.saishiSenglv);
                                                            if (textView8 != null) {
                                                                i10 = R.id.saishiType;
                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.saishiType);
                                                                if (textView9 != null) {
                                                                    i10 = R.id.saishiWinnumber;
                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.saishiWinnumber);
                                                                    if (textView10 != null) {
                                                                        i10 = R.id.setNetwork;
                                                                        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.setNetwork);
                                                                        if (button != null) {
                                                                            i10 = R.id.shenglv;
                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.shenglv);
                                                                            if (textView11 != null) {
                                                                                i10 = R.id.userIconImage;
                                                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.userIconImage);
                                                                                if (simpleDraweeView != null) {
                                                                                    i10 = R.id.userIconImage_lay;
                                                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.userIconImage_lay);
                                                                                    if (frameLayout != null) {
                                                                                        i10 = R.id.userName;
                                                                                        TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                                                                                        if (textView12 != null) {
                                                                                            i10 = R.id.userNameLay;
                                                                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.userNameLay);
                                                                                            if (frameLayout2 != null) {
                                                                                                i10 = R.id.world_back;
                                                                                                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.world_back);
                                                                                                if (button2 != null) {
                                                                                                    return new fu((FrameLayout) rootView, textView, textView2, textView3, linearLayout, listView, imageView, linearLayout2, textView4, progressBar, textView5, imageView2, textView6, textView7, textView8, textView9, textView10, button, textView11, simpleDraweeView, frameLayout, textView12, frameLayout2, button2);
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
    public static fu inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f38528b;
    }

    @NonNull
    public static fu inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gameworld_fight_recoder_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

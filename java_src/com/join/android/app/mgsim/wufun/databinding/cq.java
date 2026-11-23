package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;

/* JADX INFO: loaded from: classes4.dex */
public final class cq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37040c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f37041d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37043f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37044g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f37045h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37046i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f37047j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final Button f37048k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37049l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f37050m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RecyclerView f37051n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37052o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f37053p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f37054q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ImageView f37055r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f37056s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final CustomerDownloadView f37057t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f37058u;

    private cq(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView appIcon, @NonNull ImageView appImage, @NonNull RelativeLayout applayout, @NonNull TextView appname, @NonNull TextView appsize, @NonNull ImageView backImage, @NonNull LinearLayout bottomLay, @NonNull ImageView comment, @NonNull Button downloadImage, @NonNull LinearLayout layoutShare, @NonNull TextView moneyText2, @NonNull RecyclerView recyclerView, @NonNull RelativeLayout relativeLayout, @NonNull TextView rightTextButn, @NonNull TextView roundMessage, @NonNull ImageView shareImg, @NonNull TextView shareTextview, @NonNull CustomerDownloadView titleNormalDownloadCdv, @NonNull TextView titleText) {
        this.f37039b = rootView;
        this.f37040c = appIcon;
        this.f37041d = appImage;
        this.f37042e = applayout;
        this.f37043f = appname;
        this.f37044g = appsize;
        this.f37045h = backImage;
        this.f37046i = bottomLay;
        this.f37047j = comment;
        this.f37048k = downloadImage;
        this.f37049l = layoutShare;
        this.f37050m = moneyText2;
        this.f37051n = recyclerView;
        this.f37052o = relativeLayout;
        this.f37053p = rightTextButn;
        this.f37054q = roundMessage;
        this.f37055r = shareImg;
        this.f37056s = shareTextview;
        this.f37057t = titleNormalDownloadCdv;
        this.f37058u = titleText;
    }

    @NonNull
    public static cq bind(@NonNull View rootView) {
        int i10 = R.id.appIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon);
        if (simpleDraweeView != null) {
            i10 = R.id.appImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.appImage);
            if (imageView != null) {
                i10 = R.id.applayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.applayout);
                if (relativeLayout != null) {
                    i10 = R.id.appname;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname);
                    if (textView != null) {
                        i10 = R.id.appsize;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appsize);
                        if (textView2 != null) {
                            i10 = R.id.backImage;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backImage);
                            if (imageView2 != null) {
                                i10 = R.id.bottom_lay;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.bottom_lay);
                                if (linearLayout != null) {
                                    i10 = R.id.comment;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.comment);
                                    if (imageView3 != null) {
                                        i10 = R.id.downloadImage;
                                        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.downloadImage);
                                        if (button != null) {
                                            i10 = R.id.layout_share;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_share);
                                            if (linearLayout2 != null) {
                                                i10 = R.id.moneyText2;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText2);
                                                if (textView3 != null) {
                                                    i10 = R.id.recyclerView;
                                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
                                                    if (recyclerView != null) {
                                                        i10 = R.id.relativeLayout;
                                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relativeLayout);
                                                        if (relativeLayout2 != null) {
                                                            i10 = R.id.rightTextButn;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.rightTextButn);
                                                            if (textView4 != null) {
                                                                i10 = R.id.roundMessage;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.roundMessage);
                                                                if (textView5 != null) {
                                                                    i10 = R.id.shareImg;
                                                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.shareImg);
                                                                    if (imageView4 != null) {
                                                                        i10 = R.id.share_textview;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.share_textview);
                                                                        if (textView6 != null) {
                                                                            i10 = R.id.title_normal_download_cdv;
                                                                            CustomerDownloadView customerDownloadView = (CustomerDownloadView) ViewBindings.findChildViewById(rootView, R.id.title_normal_download_cdv);
                                                                            if (customerDownloadView != null) {
                                                                                i10 = R.id.titleText;
                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                                                                if (textView7 != null) {
                                                                                    return new cq((RelativeLayout) rootView, simpleDraweeView, imageView, relativeLayout, textView, textView2, imageView2, linearLayout, imageView3, button, linearLayout2, textView3, recyclerView, relativeLayout2, textView4, textView5, imageView4, textView6, customerDownloadView, textView7);
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
    public static cq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37039b;
    }

    @NonNull
    public static cq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_information_layoutv2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

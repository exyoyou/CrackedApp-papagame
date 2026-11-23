package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class sx implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45020c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f45021d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45022e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45023f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45024g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45025h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45026i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45027j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f45028k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final CardView f45029l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final MultiStandVideo f45030m;

    private sx(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView bannerView, @NonNull DownloadNormalView dvView, @NonNull TextView gameMessage, @NonNull TextView gameName, @NonNull SimpleDraweeView icon, @NonNull SimpleDraweeView loading, @NonNull LinearLayout tag, @NonNull TextView tvText3, @NonNull TextView tvText4, @NonNull CardView video, @NonNull MultiStandVideo wfVideo) {
        this.f45019b = rootView;
        this.f45020c = bannerView;
        this.f45021d = dvView;
        this.f45022e = gameMessage;
        this.f45023f = gameName;
        this.f45024g = icon;
        this.f45025h = loading;
        this.f45026i = tag;
        this.f45027j = tvText3;
        this.f45028k = tvText4;
        this.f45029l = video;
        this.f45030m = wfVideo;
    }

    @NonNull
    public static sx bind(@NonNull View rootView) {
        int i10 = R.id.bannerView;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.bannerView);
        if (simpleDraweeView != null) {
            i10 = R.id.dv_view;
            DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
            if (downloadNormalView != null) {
                i10 = R.id.gameMessage;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameMessage);
                if (textView != null) {
                    i10 = R.id.gameName;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName);
                    if (textView2 != null) {
                        i10 = R.id.icon;
                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                        if (simpleDraweeView2 != null) {
                            i10 = R.id.loading;
                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.loading);
                            if (simpleDraweeView3 != null) {
                                i10 = R.id.tag;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tag);
                                if (linearLayout != null) {
                                    i10 = R.id.tv_text_3;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_3);
                                    if (textView3 != null) {
                                        i10 = R.id.tv_text_4;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_4);
                                        if (textView4 != null) {
                                            i10 = R.id.video;
                                            CardView cardView = (CardView) ViewBindings.findChildViewById(rootView, R.id.video);
                                            if (cardView != null) {
                                                i10 = R.id.wf_video;
                                                MultiStandVideo multiStandVideo = (MultiStandVideo) ViewBindings.findChildViewById(rootView, R.id.wf_video);
                                                if (multiStandVideo != null) {
                                                    return new sx((LinearLayout) rootView, simpleDraweeView, downloadNormalView, textView, textView2, simpleDraweeView2, simpleDraweeView3, linearLayout, textView3, textView4, cardView, multiStandVideo);
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
    public static sx inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45019b;
    }

    @NonNull
    public static sx inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_collection_seven_video_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

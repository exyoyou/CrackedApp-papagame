package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
public final class na implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42234c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f42235d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f42236e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42237f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42238g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f42239h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f42240i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ProgressBar f42241j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42242k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f42243l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ProgressBar f42244m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f42245n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f42246o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f42247p;

    private na(@NonNull LinearLayout rootView, @NonNull LinearLayout gameHistory, @NonNull ImageView gameHistoryFinishImage, @NonNull ProgressBar gameHistoryLoding, @NonNull TextView gameHistoryinfo, @NonNull LinearLayout gameList, @NonNull ImageView gameListFinish, @NonNull TextView gameListInfo, @NonNull ProgressBar gameListloding, @NonNull LinearLayout gamekey, @NonNull ImageView gamekeyFinish, @NonNull ProgressBar gamekeyLoding, @NonNull TextView gamekeyinfo, @NonNull ImageView imageView, @NonNull TextView recoverinfo) {
        this.f42233b = rootView;
        this.f42234c = gameHistory;
        this.f42235d = gameHistoryFinishImage;
        this.f42236e = gameHistoryLoding;
        this.f42237f = gameHistoryinfo;
        this.f42238g = gameList;
        this.f42239h = gameListFinish;
        this.f42240i = gameListInfo;
        this.f42241j = gameListloding;
        this.f42242k = gamekey;
        this.f42243l = gamekeyFinish;
        this.f42244m = gamekeyLoding;
        this.f42245n = gamekeyinfo;
        this.f42246o = imageView;
        this.f42247p = recoverinfo;
    }

    @NonNull
    public static na bind(@NonNull View rootView) {
        int i10 = R.id.gameHistory;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gameHistory);
        if (linearLayout != null) {
            i10 = R.id.gameHistoryFinishImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.gameHistoryFinishImage);
            if (imageView != null) {
                i10 = R.id.gameHistoryLoding;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.gameHistoryLoding);
                if (progressBar != null) {
                    i10 = R.id.gameHistoryinfo;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameHistoryinfo);
                    if (textView != null) {
                        i10 = R.id.gameList;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gameList);
                        if (linearLayout2 != null) {
                            i10 = R.id.gameListFinish;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.gameListFinish);
                            if (imageView2 != null) {
                                i10 = R.id.gameListInfo;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameListInfo);
                                if (textView2 != null) {
                                    i10 = R.id.gameListloding;
                                    ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.gameListloding);
                                    if (progressBar2 != null) {
                                        i10 = R.id.gamekey;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gamekey);
                                        if (linearLayout3 != null) {
                                            i10 = R.id.gamekeyFinish;
                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.gamekeyFinish);
                                            if (imageView3 != null) {
                                                i10 = R.id.gamekeyLoding;
                                                ProgressBar progressBar3 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.gamekeyLoding);
                                                if (progressBar3 != null) {
                                                    i10 = R.id.gamekeyinfo;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gamekeyinfo);
                                                    if (textView3 != null) {
                                                        i10 = R.id.imageView;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView);
                                                        if (imageView4 != null) {
                                                            i10 = R.id.recoverinfo;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.recoverinfo);
                                                            if (textView4 != null) {
                                                                return new na((LinearLayout) rootView, linearLayout, imageView, progressBar, textView, linearLayout2, imageView2, textView2, progressBar2, linearLayout3, imageView3, progressBar3, textView3, imageView4, textView4);
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
    public static na inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42233b;
    }

    @NonNull
    public static na inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.cloud_recoding_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

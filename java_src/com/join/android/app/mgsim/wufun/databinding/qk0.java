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
public final class qk0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43863c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43864d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43865e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43866f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43867g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43868h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43869i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f43870j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f43871k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f43872l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43873m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f43874n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f43875o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f43876p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f43877q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f43878r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43879s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f43880t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f43881u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f43882v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f43883w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f43884x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f43885y;

    private qk0(@NonNull LinearLayout rootView, @NonNull TextView gamebroadcastMore, @NonNull LinearLayout gamebroadcastTop, @NonNull SimpleDraweeView gamebroadcastTopImage1, @NonNull SimpleDraweeView gamebroadcastTopImage2, @NonNull TextView gamebroadcastTopText1, @NonNull TextView gamebroadcastTopText2, @NonNull LinearLayout gamebroadcastbottom1, @NonNull ImageView gamebroadcastbottom1Image, @NonNull TextView gamebroadcastbottom1Text1, @NonNull TextView gamebroadcastbottom1Text2, @NonNull LinearLayout gamebroadcastbottom2, @NonNull ImageView gamebroadcastbottom2Image, @NonNull TextView gamebroadcastbottom2Text1, @NonNull TextView gamebroadcastbottom2Text2, @NonNull TextView hideh5, @NonNull TextView hotGameTitle, @NonNull LinearLayout hotgameLayout, @NonNull TextView textView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView7, @NonNull TextView textView8) {
        this.f43862b = rootView;
        this.f43863c = gamebroadcastMore;
        this.f43864d = gamebroadcastTop;
        this.f43865e = gamebroadcastTopImage1;
        this.f43866f = gamebroadcastTopImage2;
        this.f43867g = gamebroadcastTopText1;
        this.f43868h = gamebroadcastTopText2;
        this.f43869i = gamebroadcastbottom1;
        this.f43870j = gamebroadcastbottom1Image;
        this.f43871k = gamebroadcastbottom1Text1;
        this.f43872l = gamebroadcastbottom1Text2;
        this.f43873m = gamebroadcastbottom2;
        this.f43874n = gamebroadcastbottom2Image;
        this.f43875o = gamebroadcastbottom2Text1;
        this.f43876p = gamebroadcastbottom2Text2;
        this.f43877q = hideh5;
        this.f43878r = hotGameTitle;
        this.f43879s = hotgameLayout;
        this.f43880t = textView;
        this.f43881u = textView3;
        this.f43882v = textView4;
        this.f43883w = textView5;
        this.f43884x = textView7;
        this.f43885y = textView8;
    }

    @NonNull
    public static qk0 bind(@NonNull View rootView) {
        int i10 = R.id.gamebroadcastMore;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastMore);
        if (textView != null) {
            i10 = R.id.gamebroadcastTop;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTop);
            if (linearLayout != null) {
                i10 = R.id.gamebroadcastTopImage1;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopImage1);
                if (simpleDraweeView != null) {
                    i10 = R.id.gamebroadcastTopImage2;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopImage2);
                    if (simpleDraweeView2 != null) {
                        i10 = R.id.gamebroadcastTopText1;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopText1);
                        if (textView2 != null) {
                            i10 = R.id.gamebroadcastTopText2;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopText2);
                            if (textView3 != null) {
                                i10 = R.id.gamebroadcastbottom1;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastbottom1);
                                if (linearLayout2 != null) {
                                    i10 = R.id.gamebroadcastbottom1Image;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastbottom1Image);
                                    if (imageView != null) {
                                        i10 = R.id.gamebroadcastbottom1Text1;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastbottom1Text1);
                                        if (textView4 != null) {
                                            i10 = R.id.gamebroadcastbottom1Text2;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastbottom1Text2);
                                            if (textView5 != null) {
                                                i10 = R.id.gamebroadcastbottom2;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastbottom2);
                                                if (linearLayout3 != null) {
                                                    i10 = R.id.gamebroadcastbottom2Image;
                                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastbottom2Image);
                                                    if (imageView2 != null) {
                                                        i10 = R.id.gamebroadcastbottom2Text1;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastbottom2Text1);
                                                        if (textView6 != null) {
                                                            i10 = R.id.gamebroadcastbottom2Text2;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastbottom2Text2);
                                                            if (textView7 != null) {
                                                                i10 = R.id.hideh5;
                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.hideh5);
                                                                if (textView8 != null) {
                                                                    i10 = R.id.hotGameTitle;
                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.hotGameTitle);
                                                                    if (textView9 != null) {
                                                                        i10 = R.id.hotgameLayout;
                                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.hotgameLayout);
                                                                        if (linearLayout4 != null) {
                                                                            i10 = R.id.textView;
                                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                                                                            if (textView10 != null) {
                                                                                i10 = R.id.textView3;
                                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView3);
                                                                                if (textView11 != null) {
                                                                                    i10 = R.id.textView4;
                                                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView4);
                                                                                    if (textView12 != null) {
                                                                                        i10 = R.id.textView5;
                                                                                        TextView textView13 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView5);
                                                                                        if (textView13 != null) {
                                                                                            i10 = R.id.textView7;
                                                                                            TextView textView14 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView7);
                                                                                            if (textView14 != null) {
                                                                                                i10 = R.id.textView8;
                                                                                                TextView textView15 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView8);
                                                                                                if (textView15 != null) {
                                                                                                    return new qk0((LinearLayout) rootView, textView, linearLayout, simpleDraweeView, simpleDraweeView2, textView2, textView3, linearLayout2, imageView, textView4, textView5, linearLayout3, imageView2, textView6, textView7, textView8, textView9, linearLayout4, textView10, textView11, textView12, textView13, textView14, textView15);
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
    public static qk0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43862b;
    }

    @NonNull
    public static qk0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_hotgame_include, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

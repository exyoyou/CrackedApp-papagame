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
public final class oj implements ViewBinding {

    @NonNull
    public final LinearLayout A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42886f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42887g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42888h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f42889i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f42890j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f42891k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f42892l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f42893m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f42894n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42895o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42896p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42897q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42898r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f42899s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f42900t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f42901u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f42902v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42903w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f42904x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42905y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f42906z;

    private oj(@NonNull LinearLayout rootView, @NonNull LinearLayout autoLayout, @NonNull LinearLayout bottomLayout, @NonNull SimpleDraweeView fastFourlayoutImage, @NonNull TextView fastFourlayoutText, @NonNull SimpleDraweeView forumImage, @NonNull LinearLayout forumLayout, @NonNull TextView forumText, @NonNull ImageView imageView19, @NonNull ImageView imageView20, @NonNull ImageView imageView21, @NonNull ImageView imageView22, @NonNull ImageView imageView23, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout mainlayout, @NonNull SimpleDraweeView qqImage, @NonNull LinearLayout qqLayout, @NonNull TextView qqText, @NonNull TextView textView34, @NonNull TextView textView35, @NonNull TextView textView36, @NonNull LinearLayout title, @NonNull TextView todayNumber, @NonNull SimpleDraweeView weiCharImage, @NonNull TextView weiCharText, @NonNull LinearLayout weichartLayout) {
        this.f42882b = rootView;
        this.f42883c = autoLayout;
        this.f42884d = bottomLayout;
        this.f42885e = fastFourlayoutImage;
        this.f42886f = fastFourlayoutText;
        this.f42887g = forumImage;
        this.f42888h = forumLayout;
        this.f42889i = forumText;
        this.f42890j = imageView19;
        this.f42891k = imageView20;
        this.f42892l = imageView21;
        this.f42893m = imageView22;
        this.f42894n = imageView23;
        this.f42895o = linearLayout5;
        this.f42896p = mainlayout;
        this.f42897q = qqImage;
        this.f42898r = qqLayout;
        this.f42899s = qqText;
        this.f42900t = textView34;
        this.f42901u = textView35;
        this.f42902v = textView36;
        this.f42903w = title;
        this.f42904x = todayNumber;
        this.f42905y = weiCharImage;
        this.f42906z = weiCharText;
        this.A = weichartLayout;
    }

    @NonNull
    public static oj bind(@NonNull View rootView) {
        int i10 = R.id.autoLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.autoLayout);
        if (linearLayout != null) {
            i10 = R.id.bottomLayout;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.bottomLayout);
            if (linearLayout2 != null) {
                i10 = R.id.fastFourlayoutImage;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.fastFourlayoutImage);
                if (simpleDraweeView != null) {
                    i10 = R.id.fastFourlayoutText;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.fastFourlayoutText);
                    if (textView != null) {
                        i10 = R.id.forumImage;
                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.forumImage);
                        if (simpleDraweeView2 != null) {
                            i10 = R.id.forum_layout;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_layout);
                            if (linearLayout3 != null) {
                                i10 = R.id.forumText;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forumText);
                                if (textView2 != null) {
                                    i10 = R.id.imageView19;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView19);
                                    if (imageView != null) {
                                        i10 = R.id.imageView20;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView20);
                                        if (imageView2 != null) {
                                            i10 = R.id.imageView21;
                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView21);
                                            if (imageView3 != null) {
                                                i10 = R.id.imageView22;
                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView22);
                                                if (imageView4 != null) {
                                                    i10 = R.id.imageView23;
                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView23);
                                                    if (imageView5 != null) {
                                                        i10 = R.id.linearLayout5;
                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout5);
                                                        if (linearLayout4 != null) {
                                                            i10 = R.id.mainlayout;
                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.mainlayout);
                                                            if (linearLayout5 != null) {
                                                                i10 = R.id.qqImage;
                                                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.qqImage);
                                                                if (simpleDraweeView3 != null) {
                                                                    i10 = R.id.qqLayout;
                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.qqLayout);
                                                                    if (linearLayout6 != null) {
                                                                        i10 = R.id.qqText;
                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.qqText);
                                                                        if (textView3 != null) {
                                                                            i10 = R.id.textView34;
                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView34);
                                                                            if (textView4 != null) {
                                                                                i10 = R.id.textView35;
                                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView35);
                                                                                if (textView5 != null) {
                                                                                    i10 = R.id.textView36;
                                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView36);
                                                                                    if (textView6 != null) {
                                                                                        i10 = R.id.title;
                                                                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.title);
                                                                                        if (linearLayout7 != null) {
                                                                                            i10 = R.id.today_number;
                                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.today_number);
                                                                                            if (textView7 != null) {
                                                                                                i10 = R.id.weiCharImage;
                                                                                                SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.weiCharImage);
                                                                                                if (simpleDraweeView4 != null) {
                                                                                                    i10 = R.id.weiCharText;
                                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.weiCharText);
                                                                                                    if (textView8 != null) {
                                                                                                        i10 = R.id.weichartLayout;
                                                                                                        LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.weichartLayout);
                                                                                                        if (linearLayout8 != null) {
                                                                                                            return new oj((LinearLayout) rootView, linearLayout, linearLayout2, simpleDraweeView, textView, simpleDraweeView2, linearLayout3, textView2, imageView, imageView2, imageView3, imageView4, imageView5, linearLayout4, linearLayout5, simpleDraweeView3, linearLayout6, textView3, textView4, textView5, textView6, linearLayout7, textView7, simpleDraweeView4, textView8, linearLayout8);
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
    public static oj inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42882b;
    }

    @NonNull
    public static oj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fast_entry_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

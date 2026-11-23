package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ef implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f37921c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37922d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37924f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f37925g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f37926h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f37927i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f37928j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final Group f37929k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f37930l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final View f37931m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37932n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f37933o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f37934p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final View f37935q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37936r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f37937s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f37938t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f37939u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f37940v;

    private ef(@NonNull ConstraintLayout rootView, @NonNull View close, @NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout container, @NonNull TextView download, @NonNull ImageView imageView51, @NonNull ImageView imageView55, @NonNull TextView link, @NonNull TextView name, @NonNull Group noPrompt, @NonNull ImageView noPromptCheck, @NonNull View noPromptCheckPlaceholder, @NonNull ConstraintLayout outside, @NonNull TextView protocol, @NonNull ImageView protocolCheck, @NonNull View protocolCheckPlaceholder, @NonNull ConstraintLayout res, @NonNull TextView subTitle, @NonNull TextView textView77, @NonNull TextView title, @NonNull TextView userProtocolTxt) {
        this.f37920b = rootView;
        this.f37921c = close;
        this.f37922d = constraintLayout;
        this.f37923e = container;
        this.f37924f = download;
        this.f37925g = imageView51;
        this.f37926h = imageView55;
        this.f37927i = link;
        this.f37928j = name;
        this.f37929k = noPrompt;
        this.f37930l = noPromptCheck;
        this.f37931m = noPromptCheckPlaceholder;
        this.f37932n = outside;
        this.f37933o = protocol;
        this.f37934p = protocolCheck;
        this.f37935q = protocolCheckPlaceholder;
        this.f37936r = res;
        this.f37937s = subTitle;
        this.f37938t = textView77;
        this.f37939u = title;
        this.f37940v = userProtocolTxt;
    }

    @NonNull
    public static ef bind(@NonNull View rootView) {
        int i10 = R.id.close;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.close);
        if (viewFindChildViewById != null) {
            i10 = R.id.constraintLayout;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.constraintLayout);
            if (constraintLayout != null) {
                ConstraintLayout constraintLayout2 = (ConstraintLayout) rootView;
                i10 = R.id.download;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.download);
                if (textView != null) {
                    i10 = R.id.imageView51;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView51);
                    if (imageView != null) {
                        i10 = R.id.imageView55;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView55);
                        if (imageView2 != null) {
                            i10 = R.id.link;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.link);
                            if (textView2 != null) {
                                i10 = R.id.name;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                                if (textView3 != null) {
                                    i10 = R.id.noPrompt;
                                    Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.noPrompt);
                                    if (group != null) {
                                        i10 = R.id.noPromptCheck;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.noPromptCheck);
                                        if (imageView3 != null) {
                                            i10 = R.id.noPromptCheckPlaceholder;
                                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.noPromptCheckPlaceholder);
                                            if (viewFindChildViewById2 != null) {
                                                i10 = R.id.outside;
                                                ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.outside);
                                                if (constraintLayout3 != null) {
                                                    i10 = R.id.protocol;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.protocol);
                                                    if (textView4 != null) {
                                                        i10 = R.id.protocolCheck;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.protocolCheck);
                                                        if (imageView4 != null) {
                                                            i10 = R.id.protocolCheckPlaceholder;
                                                            View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.protocolCheckPlaceholder);
                                                            if (viewFindChildViewById3 != null) {
                                                                i10 = R.id.res;
                                                                ConstraintLayout constraintLayout4 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.res);
                                                                if (constraintLayout4 != null) {
                                                                    i10 = R.id.subTitle;
                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.subTitle);
                                                                    if (textView5 != null) {
                                                                        i10 = R.id.textView77;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView77);
                                                                        if (textView6 != null) {
                                                                            i10 = R.id.title;
                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                                            if (textView7 != null) {
                                                                                i10 = R.id.userProtocolTxt;
                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userProtocolTxt);
                                                                                if (textView8 != null) {
                                                                                    return new ef(constraintLayout2, viewFindChildViewById, constraintLayout, constraintLayout2, textView, imageView, imageView2, textView2, textView3, group, imageView3, viewFindChildViewById2, constraintLayout3, textView4, imageView4, viewFindChildViewById3, constraintLayout4, textView5, textView6, textView7, textView8);
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
    public static ef inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37920b;
    }

    @NonNull
    public static ef inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_download_method_prompt, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

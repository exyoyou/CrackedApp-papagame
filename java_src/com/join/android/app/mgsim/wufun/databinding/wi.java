package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wi implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CheckBox f46804d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CheckBox f46805e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f46806f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46807g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46808h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46809i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f46810j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46811k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46812l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f46813m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f46814n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f46815o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final View f46816p;

    private wi(@NonNull LinearLayout rootView, @NonNull TextView changeSdkard, @NonNull CheckBox checkBoxSd, @NonNull CheckBox checkBoxlocal, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout localPathLayout, @NonNull TextView localpath, @NonNull TextView localsize, @NonNull LinearLayout noticelayout, @NonNull RelativeLayout sdPathLayout, @NonNull TextView sdSize, @NonNull TextView sdpath, @NonNull TextView textView, @NonNull View textView2) {
        this.f46802b = rootView;
        this.f46803c = changeSdkard;
        this.f46804d = checkBoxSd;
        this.f46805e = checkBoxlocal;
        this.f46806f = imageView;
        this.f46807g = linearLayout;
        this.f46808h = localPathLayout;
        this.f46809i = localpath;
        this.f46810j = localsize;
        this.f46811k = noticelayout;
        this.f46812l = sdPathLayout;
        this.f46813m = sdSize;
        this.f46814n = sdpath;
        this.f46815o = textView;
        this.f46816p = textView2;
    }

    @NonNull
    public static wi bind(@NonNull View rootView) {
        int i10 = R.id.changeSdkard;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.changeSdkard);
        if (textView != null) {
            i10 = R.id.checkBoxSd;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.checkBoxSd);
            if (checkBox != null) {
                i10 = R.id.checkBoxlocal;
                CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.checkBoxlocal);
                if (checkBox2 != null) {
                    i10 = R.id.imageView;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView);
                    if (imageView != null) {
                        i10 = R.id.linearLayout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                        if (linearLayout != null) {
                            i10 = R.id.localPathLayout;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.localPathLayout);
                            if (relativeLayout != null) {
                                i10 = R.id.localpath;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.localpath);
                                if (textView2 != null) {
                                    i10 = R.id.localsize;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.localsize);
                                    if (textView3 != null) {
                                        i10 = R.id.noticelayout;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.noticelayout);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.sdPathLayout;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.sdPathLayout);
                                            if (relativeLayout2 != null) {
                                                i10 = R.id.sdSize;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.sdSize);
                                                if (textView4 != null) {
                                                    i10 = R.id.sdpath;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.sdpath);
                                                    if (textView5 != null) {
                                                        i10 = R.id.textView;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                                                        if (textView6 != null) {
                                                            i10 = R.id.textView2;
                                                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.textView2);
                                                            if (viewFindChildViewById != null) {
                                                                return new wi((LinearLayout) rootView, textView, checkBox, checkBox2, imageView, linearLayout, relativeLayout, textView2, textView3, linearLayout2, relativeLayout2, textView4, textView5, textView6, viewFindChildViewById);
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
    public static wi inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46802b;
    }

    @NonNull
    public static wi inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.download_path_set_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

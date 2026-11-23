package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.module.hmcloud.pad.HMButtonView;
import com.join.mgps.customview.SegmentSelectorView;

/* JADX INFO: loaded from: classes4.dex */
public final class ha0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39241b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39242c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39243d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39244e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39245f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f39246g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final HMButtonView f39247h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final HMButtonView f39248i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final HMButtonView f39249j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final FrameLayout f39250k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f39251l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39252m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final EditText f39253n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f39254o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f39255p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f39256q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final SegmentSelectorView f39257r;

    private ha0(@NonNull ConstraintLayout rootView, @NonNull LinearLayout clSize, @NonNull LinearLayout combineKeys, @NonNull TextView delete, @NonNull TextView edit, @NonNull ImageView ivKey, @NonNull HMButtonView k10, @NonNull HMButtonView k11, @NonNull HMButtonView k12, @NonNull FrameLayout keyContainer, @NonNull TextView name, @NonNull LinearLayout nameEditContainer, @NonNull EditText nameEt, @NonNull ImageView plus1, @NonNull ImageView plus2, @NonNull TextView saveName, @NonNull SegmentSelectorView scale) {
        this.f39241b = rootView;
        this.f39242c = clSize;
        this.f39243d = combineKeys;
        this.f39244e = delete;
        this.f39245f = edit;
        this.f39246g = ivKey;
        this.f39247h = k10;
        this.f39248i = k11;
        this.f39249j = k12;
        this.f39250k = keyContainer;
        this.f39251l = name;
        this.f39252m = nameEditContainer;
        this.f39253n = nameEt;
        this.f39254o = plus1;
        this.f39255p = plus2;
        this.f39256q = saveName;
        this.f39257r = scale;
    }

    @NonNull
    public static ha0 bind(@NonNull View rootView) {
        int i10 = R.id.cl_size;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.cl_size);
        if (linearLayout != null) {
            i10 = R.id.combine_keys;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.combine_keys);
            if (linearLayout2 != null) {
                i10 = R.id.delete;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.delete);
                if (textView != null) {
                    i10 = R.id.edit;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.edit);
                    if (textView2 != null) {
                        i10 = R.id.iv_key;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_key);
                        if (imageView != null) {
                            i10 = R.id.f35465k1;
                            HMButtonView hMButtonView = (HMButtonView) ViewBindings.findChildViewById(rootView, R.id.f35465k1);
                            if (hMButtonView != null) {
                                i10 = R.id.f35466k2;
                                HMButtonView hMButtonView2 = (HMButtonView) ViewBindings.findChildViewById(rootView, R.id.f35466k2);
                                if (hMButtonView2 != null) {
                                    i10 = R.id.f35467k3;
                                    HMButtonView hMButtonView3 = (HMButtonView) ViewBindings.findChildViewById(rootView, R.id.f35467k3);
                                    if (hMButtonView3 != null) {
                                        i10 = R.id.key_container;
                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.key_container);
                                        if (frameLayout != null) {
                                            i10 = R.id.name;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                                            if (textView3 != null) {
                                                i10 = R.id.name_edit_container;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.name_edit_container);
                                                if (linearLayout3 != null) {
                                                    i10 = R.id.name_et;
                                                    EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.name_et);
                                                    if (editText != null) {
                                                        i10 = R.id.plus1;
                                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.plus1);
                                                        if (imageView2 != null) {
                                                            i10 = R.id.plus2;
                                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.plus2);
                                                            if (imageView3 != null) {
                                                                i10 = R.id.save_name;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.save_name);
                                                                if (textView4 != null) {
                                                                    i10 = R.id.scale;
                                                                    SegmentSelectorView segmentSelectorView = (SegmentSelectorView) ViewBindings.findChildViewById(rootView, R.id.scale);
                                                                    if (segmentSelectorView != null) {
                                                                        return new ha0((ConstraintLayout) rootView, linearLayout, linearLayout2, textView, textView2, imageView, hMButtonView, hMButtonView2, hMButtonView3, frameLayout, textView3, linearLayout3, editText, imageView2, imageView3, textView4, segmentSelectorView);
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
    public static ha0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39241b;
    }

    @NonNull
    public static ha0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_pad_key_edit, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

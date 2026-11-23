package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wa0 implements ViewBinding {

    @NonNull
    public final View A;

    @NonNull
    public final View B;

    @NonNull
    public final LinearLayout C;

    @NonNull
    public final LinearLayout D;

    @NonNull
    public final LinearLayout E;

    @NonNull
    public final LinearLayout F;

    @NonNull
    public final View G;

    @NonNull
    public final View H;

    @NonNull
    public final View I;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46706c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Group f46707d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f46708e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f46709f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f46710g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f46711h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f46712i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f46713j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f46714k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46715l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f46716m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f46717n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f46718o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f46719p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f46720q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f46721r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f46722s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f46723t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f46724u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f46725v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f46726w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f46727x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f46728y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f46729z;

    private wa0(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clHead, @NonNull Group g10, @NonNull ImageView iv1, @NonNull ImageView iv2, @NonNull ImageView iv3, @NonNull ImageView iv4, @NonNull ImageView iv5, @NonNull ImageView iv6, @NonNull ImageView iv7, @NonNull SimpleDraweeView sdvHead, @NonNull TextView tvLabel1, @NonNull TextView tvLabel2, @NonNull TextView tvLabel3, @NonNull TextView tvLabel4, @NonNull TextView tvLabel5, @NonNull TextView tvLabel6, @NonNull TextView tvLabel7, @NonNull TextView tvText1, @NonNull TextView tvText2, @NonNull TextView tvText3, @NonNull TextView tvText4, @NonNull TextView tvText5, @NonNull TextView tvText6, @NonNull TextView tvText7, @NonNull View v10, @NonNull View v11, @NonNull LinearLayout v12, @NonNull LinearLayout v13, @NonNull LinearLayout v14, @NonNull LinearLayout v15, @NonNull View v16, @NonNull View v17, @NonNull View vHead) {
        this.f46705b = rootView;
        this.f46706c = clHead;
        this.f46707d = g10;
        this.f46708e = iv1;
        this.f46709f = iv2;
        this.f46710g = iv3;
        this.f46711h = iv4;
        this.f46712i = iv5;
        this.f46713j = iv6;
        this.f46714k = iv7;
        this.f46715l = sdvHead;
        this.f46716m = tvLabel1;
        this.f46717n = tvLabel2;
        this.f46718o = tvLabel3;
        this.f46719p = tvLabel4;
        this.f46720q = tvLabel5;
        this.f46721r = tvLabel6;
        this.f46722s = tvLabel7;
        this.f46723t = tvText1;
        this.f46724u = tvText2;
        this.f46725v = tvText3;
        this.f46726w = tvText4;
        this.f46727x = tvText5;
        this.f46728y = tvText6;
        this.f46729z = tvText7;
        this.A = v10;
        this.B = v11;
        this.C = v12;
        this.D = v13;
        this.E = v14;
        this.F = v15;
        this.G = v16;
        this.H = v17;
        this.I = vHead;
    }

    @NonNull
    public static wa0 bind(@NonNull View rootView) {
        int i10 = R.id.cl_head;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_head);
        if (constraintLayout != null) {
            i10 = R.id.g_1;
            Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.g_1);
            if (group != null) {
                i10 = R.id.iv_1;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
                if (imageView != null) {
                    i10 = R.id.iv_2;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_2);
                    if (imageView2 != null) {
                        i10 = R.id.iv_3;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_3);
                        if (imageView3 != null) {
                            i10 = R.id.iv_4;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_4);
                            if (imageView4 != null) {
                                i10 = R.id.iv_5;
                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_5);
                                if (imageView5 != null) {
                                    i10 = R.id.iv_6;
                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_6);
                                    if (imageView6 != null) {
                                        i10 = R.id.iv_7;
                                        ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_7);
                                        if (imageView7 != null) {
                                            i10 = R.id.sdv_head;
                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_head);
                                            if (simpleDraweeView != null) {
                                                i10 = R.id.tv_label_1;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_1);
                                                if (textView != null) {
                                                    i10 = R.id.tv_label_2;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_2);
                                                    if (textView2 != null) {
                                                        i10 = R.id.tv_label_3;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_3);
                                                        if (textView3 != null) {
                                                            i10 = R.id.tv_label_4;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_4);
                                                            if (textView4 != null) {
                                                                i10 = R.id.tv_label_5;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_5);
                                                                if (textView5 != null) {
                                                                    i10 = R.id.tv_label_6;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_6);
                                                                    if (textView6 != null) {
                                                                        i10 = R.id.tv_label_7;
                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_7);
                                                                        if (textView7 != null) {
                                                                            i10 = R.id.tv_text_1;
                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                                                                            if (textView8 != null) {
                                                                                i10 = R.id.tv_text_2;
                                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                                                                                if (textView9 != null) {
                                                                                    i10 = R.id.tv_text_3;
                                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_3);
                                                                                    if (textView10 != null) {
                                                                                        i10 = R.id.tv_text_4;
                                                                                        TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_4);
                                                                                        if (textView11 != null) {
                                                                                            i10 = R.id.tv_text_5;
                                                                                            TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_5);
                                                                                            if (textView12 != null) {
                                                                                                i10 = R.id.tv_text_6;
                                                                                                TextView textView13 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_6);
                                                                                                if (textView13 != null) {
                                                                                                    i10 = R.id.tv_text_7;
                                                                                                    TextView textView14 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_7);
                                                                                                    if (textView14 != null) {
                                                                                                        i10 = R.id.v_1;
                                                                                                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_1);
                                                                                                        if (viewFindChildViewById != null) {
                                                                                                            i10 = R.id.v_2;
                                                                                                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_2);
                                                                                                            if (viewFindChildViewById2 != null) {
                                                                                                                i10 = R.id.v_3;
                                                                                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.v_3);
                                                                                                                if (linearLayout != null) {
                                                                                                                    i10 = R.id.v_4;
                                                                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.v_4);
                                                                                                                    if (linearLayout2 != null) {
                                                                                                                        i10 = R.id.v_5;
                                                                                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.v_5);
                                                                                                                        if (linearLayout3 != null) {
                                                                                                                            i10 = R.id.v_6;
                                                                                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.v_6);
                                                                                                                            if (linearLayout4 != null) {
                                                                                                                                i10 = R.id.v_7;
                                                                                                                                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.v_7);
                                                                                                                                if (viewFindChildViewById3 != null) {
                                                                                                                                    i10 = R.id.v_8;
                                                                                                                                    View viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, R.id.v_8);
                                                                                                                                    if (viewFindChildViewById4 != null) {
                                                                                                                                        i10 = R.id.v_head;
                                                                                                                                        View viewFindChildViewById5 = ViewBindings.findChildViewById(rootView, R.id.v_head);
                                                                                                                                        if (viewFindChildViewById5 != null) {
                                                                                                                                            return new wa0((ConstraintLayout) rootView, constraintLayout, group, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, simpleDraweeView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, viewFindChildViewById, viewFindChildViewById2, linearLayout, linearLayout2, linearLayout3, linearLayout4, viewFindChildViewById3, viewFindChildViewById4, viewFindChildViewById5);
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
    public static wa0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46705b;
    }

    @NonNull
    public static wa0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_my_cloud_game_head, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

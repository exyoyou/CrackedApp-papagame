package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class th implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f45230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f45231d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f45232e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f45233f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45234g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45235h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45236i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45237j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f45238k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f45239l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f45240m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f45241n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f45242o;

    private th(@NonNull RelativeLayout rootView, @NonNull Button btn1, @NonNull Button btn2, @NonNull Button btn3, @NonNull Button btn4, @NonNull LinearLayout ivClose, @NonNull LinearLayout llInfo, @NonNull LinearLayout llSetChallengeGold, @NonNull TextView tvCurrentCopper, @NonNull TextView tvInfoDetail, @NonNull TextView tvInfoTitle1, @NonNull TextView tvInfoTitle2, @NonNull TextView tvTitle, @NonNull TextView tvTop) {
        this.f45229b = rootView;
        this.f45230c = btn1;
        this.f45231d = btn2;
        this.f45232e = btn3;
        this.f45233f = btn4;
        this.f45234g = ivClose;
        this.f45235h = llInfo;
        this.f45236i = llSetChallengeGold;
        this.f45237j = tvCurrentCopper;
        this.f45238k = tvInfoDetail;
        this.f45239l = tvInfoTitle1;
        this.f45240m = tvInfoTitle2;
        this.f45241n = tvTitle;
        this.f45242o = tvTop;
    }

    @NonNull
    public static th bind(@NonNull View rootView) {
        int i10 = R.id.btn_1;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_1);
        if (button != null) {
            i10 = R.id.btn_2;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_2);
            if (button2 != null) {
                i10 = R.id.btn_3;
                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_3);
                if (button3 != null) {
                    i10 = R.id.btn_4;
                    Button button4 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_4);
                    if (button4 != null) {
                        i10 = R.id.iv_close;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                        if (linearLayout != null) {
                            i10 = R.id.ll_info;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_info);
                            if (linearLayout2 != null) {
                                i10 = R.id.ll_set_challenge_gold;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_set_challenge_gold);
                                if (linearLayout3 != null) {
                                    i10 = R.id.tv_current_copper;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_current_copper);
                                    if (textView != null) {
                                        i10 = R.id.tv_info_detail;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_info_detail);
                                        if (textView2 != null) {
                                            i10 = R.id.tv_info_title_1;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_info_title_1);
                                            if (textView3 != null) {
                                                i10 = R.id.tv_info_title_2;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_info_title_2);
                                                if (textView4 != null) {
                                                    i10 = R.id.tv_title;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                                                    if (textView5 != null) {
                                                        i10 = R.id.tv_top;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_top);
                                                        if (textView6 != null) {
                                                            return new th((RelativeLayout) rootView, button, button2, button3, button4, linearLayout, linearLayout2, linearLayout3, textView, textView2, textView3, textView4, textView5, textView6);
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
    public static th inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45229b;
    }

    @NonNull
    public static th inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_set_challenge_gold, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

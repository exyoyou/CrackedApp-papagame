package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class lt0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f41545c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f41546d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41547e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41548f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41549g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41550h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41551i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41552j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f41553k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f41554l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f41555m;

    private lt0(@NonNull LinearLayout rootView, @NonNull Button dialogButtonCancle, @NonNull Button dialogButtonOk, @NonNull TextView dialogContent, @NonNull TextView dialogDesci, @NonNull TextView dialogTime, @NonNull LinearLayout layoutBottom, @NonNull LinearLayout layoutTop, @NonNull TextView moneyText, @NonNull TextView saveCodeContent, @NonNull TextView saveCodeTv, @NonNull TextView tipTitle) {
        this.f41544b = rootView;
        this.f41545c = dialogButtonCancle;
        this.f41546d = dialogButtonOk;
        this.f41547e = dialogContent;
        this.f41548f = dialogDesci;
        this.f41549g = dialogTime;
        this.f41550h = layoutBottom;
        this.f41551i = layoutTop;
        this.f41552j = moneyText;
        this.f41553k = saveCodeContent;
        this.f41554l = saveCodeTv;
        this.f41555m = tipTitle;
    }

    @NonNull
    public static lt0 bind(@NonNull View rootView) {
        int i10 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_cancle);
        if (button != null) {
            i10 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_ok);
            if (button2 != null) {
                i10 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_content);
                if (textView != null) {
                    i10 = R.id.dialog_desci;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_desci);
                    if (textView2 != null) {
                        i10 = R.id.dialog_time;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialog_time);
                        if (textView3 != null) {
                            i10 = R.id.layoutBottom;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutBottom);
                            if (linearLayout != null) {
                                i10 = R.id.layoutTop;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutTop);
                                if (linearLayout2 != null) {
                                    i10 = R.id.moneyText;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText);
                                    if (textView4 != null) {
                                        i10 = R.id.saveCodeContent;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.saveCodeContent);
                                        if (textView5 != null) {
                                            i10 = R.id.saveCodeTv;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.saveCodeTv);
                                            if (textView6 != null) {
                                                i10 = R.id.tip_title;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_title);
                                                if (textView7 != null) {
                                                    return new lt0((LinearLayout) rootView, button, button2, textView, textView2, textView3, linearLayout, linearLayout2, textView4, textView5, textView6, textView7);
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
    public static lt0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41544b;
    }

    @NonNull
    public static lt0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.save_code_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.input.InputView_Num;

/* JADX INFO: loaded from: classes4.dex */
public final class la0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final InputView_Num f41244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final GridView f41245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41246e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41247f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41248g;

    private la0(@NonNull RelativeLayout rootView, @NonNull InputView_Num MyPwdInputInputpwd, @NonNull GridView MyPwdInputList, @NonNull LinearLayout ivClose, @NonNull RelativeLayout top, @NonNull TextView tvTitle) {
        this.f41243b = rootView;
        this.f41244c = MyPwdInputInputpwd;
        this.f41245d = MyPwdInputList;
        this.f41246e = ivClose;
        this.f41247f = top;
        this.f41248g = tvTitle;
    }

    @NonNull
    public static la0 bind(@NonNull View rootView) {
        int i10 = R.id.MyPwdInput_inputpwd;
        InputView_Num inputView_Num = (InputView_Num) ViewBindings.findChildViewById(rootView, R.id.MyPwdInput_inputpwd);
        if (inputView_Num != null) {
            i10 = R.id.MyPwdInput_list;
            GridView gridView = (GridView) ViewBindings.findChildViewById(rootView, R.id.MyPwdInput_list);
            if (gridView != null) {
                i10 = R.id.iv_close;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                if (linearLayout != null) {
                    i10 = R.id.top;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.top);
                    if (relativeLayout != null) {
                        i10 = R.id.tv_title;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                        if (textView != null) {
                            return new la0((RelativeLayout) rootView, inputView_Num, gridView, linearLayout, relativeLayout, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static la0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41243b;
    }

    @NonNull
    public static la0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_input, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}

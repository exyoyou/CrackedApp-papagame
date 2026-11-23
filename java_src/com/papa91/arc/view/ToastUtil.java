package com.papa91.arc.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import org.ppsspp.ppsspp.R;

/* JADX INFO: loaded from: classes2.dex */
public class ToastUtil {
    private Toast toast;
    private LinearLayout toastView;

    public ToastUtil() {
    }

    public static void showShort(Context context, String str) {
        if (context == null) {
            return;
        }
        Toast toast = new Toast(context);
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.toast_style, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.message)).setText(str);
        toast.setView(viewInflate);
        toast.setDuration(0);
        toast.show();
    }

    public ToastUtil Indefinite(Context context, CharSequence charSequence, int i10) {
        LinearLayout linearLayout;
        if (this.toast == null || ((linearLayout = this.toastView) != null && linearLayout.getChildCount() > 1)) {
            this.toast = Toast.makeText(context, charSequence, i10);
            this.toastView = null;
        } else {
            this.toast.setText(charSequence);
            this.toast.setDuration(i10);
        }
        return this;
    }

    public ToastUtil Long(Context context, CharSequence charSequence) {
        LinearLayout linearLayout;
        if (this.toast == null || ((linearLayout = this.toastView) != null && linearLayout.getChildCount() > 1)) {
            this.toast = Toast.makeText(context, charSequence, 1);
            this.toastView = null;
        } else {
            this.toast.setText(charSequence);
            this.toast.setDuration(1);
        }
        return this;
    }

    public ToastUtil Short(Context context, CharSequence charSequence) {
        LinearLayout linearLayout;
        if (this.toast == null || ((linearLayout = this.toastView) != null && linearLayout.getChildCount() > 1)) {
            this.toast = Toast.makeText(context, charSequence, 0);
            this.toastView = null;
        } else {
            this.toast.setText(charSequence);
            this.toast.setDuration(0);
        }
        return this;
    }

    public ToastUtil addView(View view, int i10) {
        LinearLayout linearLayout = (LinearLayout) this.toast.getView();
        this.toastView = linearLayout;
        linearLayout.addView(view, i10);
        return this;
    }

    public Toast getToast() {
        return this.toast;
    }

    public ToastUtil setToastBackground(int i10, int i11) {
        View view = this.toast.getView();
        if (view != null) {
            TextView textView = (TextView) view.findViewById(android.R.id.message);
            textView.setBackgroundResource(i11);
            textView.setTextColor(i10);
        }
        return this;
    }

    public ToastUtil setToastColor(int i10, int i11) {
        View view = this.toast.getView();
        if (view != null) {
            TextView textView = (TextView) view.findViewById(android.R.id.message);
            textView.setBackgroundColor(i11);
            textView.setTextColor(i10);
        }
        return this;
    }

    public ToastUtil show() {
        this.toast.show();
        return this;
    }

    public ToastUtil(Context context, View view, int i10) {
        Toast toast = new Toast(context);
        this.toast = toast;
        toast.setView(view);
        this.toast.setDuration(i10);
    }

    public static void show(Context context, String str) {
        if (context == null) {
            return;
        }
        Toast toast = new Toast(context);
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.toast_style, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.message)).setText(str);
        toast.setView(viewInflate);
        toast.setDuration(1);
        toast.show();
    }

    public ToastUtil Indefinite(Context context, int i10, int i11) {
        LinearLayout linearLayout;
        if (this.toast != null && ((linearLayout = this.toastView) == null || linearLayout.getChildCount() <= 1)) {
            this.toast.setText(i10);
            this.toast.setDuration(i11);
        } else {
            this.toast = Toast.makeText(context, i10, i11);
            this.toastView = null;
        }
        return this;
    }

    public ToastUtil Long(Context context, int i10) {
        LinearLayout linearLayout;
        if (this.toast != null && ((linearLayout = this.toastView) == null || linearLayout.getChildCount() <= 1)) {
            this.toast.setText(i10);
            this.toast.setDuration(1);
        } else {
            this.toast = Toast.makeText(context, i10, 1);
            this.toastView = null;
        }
        return this;
    }

    public ToastUtil Short(Context context, int i10) {
        LinearLayout linearLayout;
        if (this.toast != null && ((linearLayout = this.toastView) == null || linearLayout.getChildCount() <= 1)) {
            this.toast.setText(i10);
            this.toast.setDuration(0);
        } else {
            this.toast = Toast.makeText(context, i10, 0);
            this.toastView = null;
        }
        return this;
    }
}

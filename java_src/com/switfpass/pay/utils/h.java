package com.switfpass.pay.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ProgressDialog f82799a;

    public static AlertDialog.Builder a(String str, Context context, List list) {
        CharSequence[] charSequenceArr = new CharSequence[list.size()];
        Iterator it2 = list.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            charSequenceArr[i10] = ((g) it2.next()).b();
            i10++;
        }
        return new AlertDialog.Builder(context).setTitle(str).setItems(charSequenceArr, new s0(list, context));
    }

    public static void b() {
        ProgressDialog progressDialog = f82799a;
        if (progressDialog != null) {
            progressDialog.dismiss();
            f82799a = null;
        }
    }

    public static void c(DialogInterface dialogInterface) {
        if (dialogInterface == null) {
            return;
        }
        try {
            Field declaredField = dialogInterface.getClass().getSuperclass().getDeclaredField("mShowing");
            declaredField.setAccessible(true);
            declaredField.set(dialogInterface, Boolean.TRUE);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void d(DialogInterface dialogInterface) {
        if (dialogInterface == null) {
            return;
        }
        try {
            Field declaredField = dialogInterface.getClass().getSuperclass().getDeclaredField("mShowing");
            declaredField.setAccessible(true);
            declaredField.set(dialogInterface, Boolean.FALSE);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void e(Activity activity, Dialog dialog) {
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        defaultDisplay.getHeight();
        Window window = dialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.height = -2;
        attributes.width = (int) (((double) width) * 0.85d);
        window.setAttributes(attributes);
    }

    public static Dialog f(String str, View view, int i10, int i11, Context context, DialogInterface.OnClickListener onClickListener) {
        return new AlertDialog.Builder(context).setTitle(str).setView(view).setNegativeButton(i10, new d1()).setPositiveButton(i11, onClickListener).create();
    }

    public static Dialog g(String str, View view, Context context) {
        return new AlertDialog.Builder(context).setTitle(str).setView(view).create();
    }

    public static Dialog h(String str, String str2, int i10, int i11, Context context, DialogInterface.OnClickListener onClickListener) {
        return new AlertDialog.Builder(context).setTitle(str).setMessage(str2).setNegativeButton(i10, new a1()).setPositiveButton(i11, onClickListener).setOnKeyListener(new b1()).create();
    }

    public static Dialog i(String str, String str2, int i10, Context context) {
        return new AlertDialog.Builder(context).setTitle(str).setMessage(str2).setPositiveButton(i10, new z0()).create();
    }

    public static Dialog j(String str, String str2, int i10, Context context, DialogInterface.OnClickListener onClickListener) {
        return new AlertDialog.Builder(context).setTitle(str).setMessage(str2).setPositiveButton(i10, onClickListener).create();
    }

    public static Dialog k(String str, String str2, String str3, String str4, Context context, DialogInterface.OnClickListener onClickListener, int i10) {
        return l(str, str2, str3, str4, context, onClickListener, new c1());
    }

    public static Dialog l(String str, String str2, String str3, String str4, Context context, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2) {
        return new AlertDialog.Builder(context).setTitle(str).setMessage(str2).setNegativeButton(str3, onClickListener2).setPositiveButton(str4, onClickListener).create();
    }

    public static void m(String str, Context context) {
        if (f82799a == null) {
            f82799a = new ProgressDialog(context);
        }
        f82799a.setMessage(str);
        f82799a.show();
    }
}

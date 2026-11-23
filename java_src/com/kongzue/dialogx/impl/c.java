package com.kongzue.dialogx.impl;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.interfaces.BaseDialog;
import com.kongzue.dialogx.interfaces.o;
import com.uc.crashsdk.export.LogType;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class c extends DialogFragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f74050c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BaseDialog f74051d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    WeakReference<Activity> f74052e;

    class a implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f74053b;

        a(Activity activity) {
            this.f74053b = activity;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            for (BaseDialog baseDialog : BaseDialog.Q()) {
                if (baseDialog.N() == this.f74053b && baseDialog != c.this.f74051d && baseDialog.A() == c.this.f74051d.A() && !(baseDialog instanceof o) && baseDialog.C() != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("onTouch: dialog=");
                    sb2.append(baseDialog);
                    sb2.append("  baseDialog=");
                    sb2.append(c.this.f74051d);
                    baseDialog.C().dispatchTouchEvent(motionEvent);
                    return true;
                }
            }
            if (c.this.f74051d instanceof o) {
                return this.f74053b.dispatchTouchEvent(motionEvent);
            }
            return false;
        }
    }

    public c() {
        this.f74052e = null;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return this.f74050c;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Activity activity = this.f74052e.get();
        if (getDialog() == null || (window = getDialog().getWindow()) == null) {
            return;
        }
        window.clearFlags(8);
        window.setSoftInputMode(16);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        attributes.dimAmount = 0.0f;
        attributes.format = -2;
        this.f74050c.setOnTouchListener(new a(activity));
        window.setAttributes(attributes);
        window.addFlags(67108864);
        window.getDecorView().setPadding(0, 0, 0, 0);
        if (Build.VERSION.SDK_INT >= 28) {
            attributes.layoutInDisplayCutoutMode = 1;
        }
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.getDecorView().setSystemUiVisibility((activity == null || (activity.getWindow().getDecorView().getSystemUiVisibility() & 8192) != 8192) ? LogType.UNEXP_ANR : 9472);
        window.addFlags(-2013265920);
        window.setStatusBarColor(0);
        window.setNavigationBarColor(0);
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, @Nullable String str) {
        if (fragmentManager == null) {
            DialogX.b("DialogX.DialogFragment 模式无法支持非 AppCompatActivity 启动。");
            return;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        fragmentTransactionBeginTransaction.add(this, str);
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }

    public c(BaseDialog baseDialog, View view) {
        this.f74052e = null;
        this.f74050c = view;
        this.f74051d = baseDialog;
        this.f74052e = new WeakReference<>(baseDialog.N());
    }
}

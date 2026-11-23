package com.mingle.widget;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mingle.shapeloading.R;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f75433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Dialog f75434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LoadingView f75435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f75436d;

    public a(Context context) {
        this.f75433a = context;
        c();
    }

    private void c() {
        this.f75434b = new Dialog(this.f75433a, R.style.custom_dialog);
        View viewInflate = LayoutInflater.from(this.f75433a).inflate(R.layout.layout_dialog, (ViewGroup) null);
        this.f75436d = viewInflate;
        this.f75435c = (LoadingView) viewInflate.findViewById(R.id.loadView);
        this.f75434b.setContentView(this.f75436d);
    }

    public void a() {
        this.f75434b.dismiss();
    }

    public Dialog b() {
        return this.f75434b;
    }

    public void d(int i10) {
        ((GradientDrawable) this.f75436d.getBackground()).setColor(i10);
    }

    public void e(boolean z10) {
        this.f75434b.setCanceledOnTouchOutside(z10);
    }

    public void f(CharSequence charSequence) {
        this.f75435c.setLoadingText(charSequence);
    }

    public void g() {
        this.f75434b.show();
    }
}

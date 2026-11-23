package ru.alexbykov.nopermission;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.annotation.ColorRes;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.byazt.quv.AbsServerManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes10.dex */
public class b {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f96874j = 98;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f96875k = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f96876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Fragment f96877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String[] f96878c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Runnable f96879d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Runnable f96880e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Runnable f96881f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AlertDialog.Builder f96882g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f96883h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f96884i = 0;

    class a implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String[] f96885b;

        a(String[] strArr) {
            this.f96885b = strArr;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            b.this.b(this.f96885b);
        }
    }

    public b(Activity activity) {
        this.f96876a = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public void b(String[] strArr) {
        Activity activity = this.f96876a;
        if (activity != null) {
            activity.requestPermissions(strArr, 98);
        } else {
            this.f96877b.requestPermissions(strArr, 98);
        }
    }

    @SuppressLint({"NewApi"})
    private void e(String[] strArr) {
        if (this.f96882g == null || !l(strArr)) {
            b(strArr);
        } else {
            x(strArr);
        }
    }

    @RequiresApi(api = 23)
    private void f() {
        String[] strArrH = h();
        if (strArrH.length > 0) {
            e(strArrH);
        } else {
            this.f96879d.run();
        }
    }

    private AlertDialog.Builder g(@StringRes int i10, @StringRes int i11) {
        Context context = getContext();
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle(context.getString(i10));
        builder.setMessage(context.getString(i11));
        builder.setCancelable(false);
        return builder;
    }

    private Context getContext() {
        Activity activity = this.f96876a;
        return activity == null ? this.f96877b.getContext() : activity;
    }

    private String[] h() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f96878c) {
            if (m(str)) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private boolean i() {
        return (this.f96879d == null || this.f96880e == null) ? false : true;
    }

    private boolean j() {
        return Build.VERSION.SDK_INT >= 23;
    }

    @SuppressLint({"NewApi"})
    private boolean k(String str) {
        Activity activity = this.f96876a;
        return activity != null ? !activity.shouldShowRequestPermissionRationale(str) : !this.f96877b.shouldShowRequestPermissionRationale(str);
    }

    private boolean l(String[] strArr) {
        for (String str : strArr) {
            if (k(str)) {
                return false;
            }
        }
        return true;
    }

    private boolean m(String str) {
        Activity activity = this.f96876a;
        if (activity != null) {
            return ContextCompat.checkSelfPermission(activity, str) != 0;
        }
        return ContextCompat.checkSelfPermission(this.f96877b.getContext(), str) != 0;
    }

    @SuppressLint({"NewApi"})
    private void t(String str) {
        if (k(str)) {
            u();
        } else {
            this.f96880e.run();
        }
        z();
    }

    private void u() {
        Runnable runnable = this.f96881f;
        if (runnable != null) {
            runnable.run();
        }
    }

    private void v() {
        if (j()) {
            f();
        } else {
            this.f96879d.run();
        }
    }

    private void x(String[] strArr) {
        this.f96882g.setPositiveButton(this.f96883h, new a(strArr));
        AlertDialog alertDialogCreate = this.f96882g.create();
        alertDialogCreate.show();
        if (this.f96884i != 0) {
            alertDialogCreate.getButton(-1).setTextColor(this.f96884i);
        }
    }

    private void z() {
        this.f96880e = null;
        this.f96879d = null;
        if (this.f96882g != null) {
            this.f96882g = null;
            this.f96883h = 0;
        }
        if (this.f96881f != null) {
            this.f96881f = null;
        }
    }

    @Deprecated
    public void A() {
        z();
    }

    public b B(@StringRes int i10, @StringRes int i11, @StringRes int i12) {
        this.f96883h = i12;
        this.f96882g = g(i10, i11);
        return this;
    }

    public b c(String str) {
        this.f96878c = new String[]{str};
        return this;
    }

    public b d(String... strArr) {
        this.f96878c = strArr;
        return this;
    }

    public b n(Runnable runnable) {
        this.f96880e = runnable;
        return this;
    }

    @Deprecated
    public b o(Runnable runnable) {
        this.f96880e = runnable;
        return this;
    }

    public b p(Runnable runnable) {
        this.f96881f = runnable;
        return this;
    }

    @SuppressLint({"NewApi"})
    public void q(int i10, String[] strArr, int[] iArr) {
        if (i10 == 98) {
            for (String str : strArr) {
                if (m(str)) {
                    t(str);
                    return;
                }
            }
        }
        this.f96879d.run();
        z();
    }

    public b r(Runnable runnable) {
        this.f96879d = runnable;
        return this;
    }

    public void s() {
        if (!i()) {
            throw new RuntimeException("permissionSuccessListener or permissionDeniedListener have null reference. You must realize onSuccess and onDenied methods");
        }
        v();
    }

    public b w(@ColorRes int i10) {
        this.f96884i = ContextCompat.getColor(getContext(), i10);
        return this;
    }

    public void y() {
        Context context = getContext();
        Intent intent = new Intent();
        Uri uriFromParts = Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, context.getPackageName(), null);
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(uriFromParts);
        context.startActivity(intent);
    }

    public b(Fragment fragment) {
        this.f96877b = fragment;
    }
}

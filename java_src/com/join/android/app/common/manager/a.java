package com.join.android.app.common.manager;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static a f34617k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f34618l = 80;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f34619m = 17;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f34620n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f34621o = 2;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f34622p = 3;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Button f34624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Button f34625c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f34626d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f34627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f34628f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f34629g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Toast f34630h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f34631i = 80;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Handler f34632j = new Handler(new C0639a());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PopupWindow f34623a = null;

    /* JADX INFO: renamed from: com.join.android.app.common.manager.a$a, reason: collision with other inner class name */
    class C0639a implements Handler.Callback {
        C0639a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) {
            try {
                a.this.f34623a.showAtLocation(a.this.f34628f.findViewById(R.id.full_main), 17, 0, 0);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return false;
        }
    }

    private a() {
    }

    private DisplayMetrics g(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static a h() {
        if (f34617k == null) {
            f34617k = new a();
        }
        return f34617k;
    }

    private void n() {
        this.f34623a.setFocusable(true);
        this.f34623a.setOutsideTouchable(false);
        this.f34623a.setBackgroundDrawable(new ColorDrawable(0));
        this.f34623a.update();
    }

    public void c(View view, int width, int height, int x10, int y10, View parent) {
        this.f34623a = new PopupWindow(view, width, height);
        n();
        this.f34623a.showAtLocation(parent, 51, x10, y10);
    }

    public void d(Context context, String title, String message) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.alert_dialog_view, (ViewGroup) null);
        this.f34628f = viewInflate;
        this.f34626d = (TextView) viewInflate.findViewById(R.id.tv_dialog_title);
        this.f34627e = (TextView) this.f34628f.findViewById(R.id.tv_dialog_content);
        this.f34626d.setText(title);
        this.f34627e.setText(message);
        this.f34625c = (Button) this.f34628f.findViewById(R.id.btn_dialog_cancel);
        this.f34624b = (Button) this.f34628f.findViewById(R.id.btn_dialog_ok);
        this.f34623a = new PopupWindow(this.f34628f, -1, -1);
        n();
        this.f34632j.sendEmptyMessage(0);
    }

    public void e(Context context, String title, String message) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.alert_dialog_view, (ViewGroup) null);
        this.f34628f = viewInflate;
        this.f34626d = (TextView) viewInflate.findViewById(R.id.tv_dialog_title);
        this.f34627e = (TextView) this.f34628f.findViewById(R.id.tv_dialog_content);
        this.f34626d.setText(title);
        this.f34627e.setText(message);
        this.f34625c = (Button) this.f34628f.findViewById(R.id.btn_dialog_cancel);
        this.f34624b = (Button) this.f34628f.findViewById(R.id.btn_dialog_ok);
        this.f34623a = new PopupWindow(this.f34628f, -1, -1);
        n();
        this.f34632j.sendEmptyMessage(0);
    }

    public void f() {
        PopupWindow popupWindow = this.f34623a;
        if (popupWindow != null) {
            try {
                popupWindow.dismiss();
            } catch (Exception unused) {
            }
        }
    }

    public int i(Activity activity) {
        Rect rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        return rect.top;
    }

    public void j(Context context, String message, int dialogType) {
        Toast.makeText(context, message, 0).show();
    }

    public void k(String name, View.OnClickListener click) {
        this.f34625c.setOnClickListener(click);
        this.f34625c.setText(name);
    }

    public void l(Context context) {
        this.f34629g = context;
    }

    public void m(String name, View.OnClickListener click) {
        this.f34624b.setOnClickListener(click);
        this.f34624b.setText(name);
    }

    public void o(int position) {
        this.f34631i = position;
    }

    public int p(Activity activity) {
        return g(activity).heightPixels;
    }

    public int q(Activity activity) {
        return g(activity).widthPixels;
    }
}

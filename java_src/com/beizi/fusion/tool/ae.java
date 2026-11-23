package com.beizi.fusion.tool;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.R;
import com.beizi.fusion.widget.CustomRoundImageView;

/* JADX INFO: loaded from: classes6.dex */
public class ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Handler f10360a = new Handler(Looper.getMainLooper()) { // from class: com.beizi.fusion.tool.ae.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1001:
                    if (ae.this.f10361b != null) {
                        try {
                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(ae.this.f10371l, ae.this.f10372m);
                            ae.this.f10362c.setPadding(ae.this.f10376q, ae.this.f10376q, ae.this.f10376q, ae.this.f10376q);
                            ar.a(ae.this.f10362c, "#FFFFFF", 0, null, ae.this.f10372m / 4);
                            ae.this.f10361b.addView(ae.this.f10362c, layoutParams);
                            q.a(ae.this.f10362c, ae.this.f10371l, ae.this.f10372m, ae.this.f10369j, ae.this.f10370k, ae.this.f10373n, 300);
                            if (ae.this.f10368i != null) {
                                ae.this.f10368i.a();
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                        break;
                    }
                    break;
                case 1002:
                    ae.this.a();
                    break;
                case 1003:
                    ae.this.c();
                    break;
            }
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewGroup f10361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f10362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CustomRoundImageView f10363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f10364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f10365f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LinearLayout f10366g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f10367h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f10368i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f10369j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f10370k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f10371l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f10372m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f10373n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f10374o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f10375p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f10376q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f10377r;

    /* JADX INFO: renamed from: com.beizi.fusion.tool.ae$2, reason: invalid class name */
    class AnonymousClass2 implements com.beizi.ad.internal.e.h.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10379a;

        AnonymousClass2(Context context) {
            this.f10379a = context;
        }

        @Override // com.beizi.ad.internal.e.h.a
        public void a() {
        }

        @Override // com.beizi.ad.internal.e.h.a
        public void a(final Bitmap bitmap) {
            try {
                float fAbs = Math.abs(1.0f - ((float) ((((double) bitmap.getWidth()) * 1.0d) / ((double) bitmap.getHeight()))));
                if (fAbs > 0.1f) {
                    com.beizi.ad.lance.a.c.b().e().execute(new Runnable() { // from class: com.beizi.fusion.tool.ae.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Bitmap bitmap2;
                            try {
                                Context context = AnonymousClass2.this.f10379a;
                                if (context == null || (bitmap2 = bitmap) == null) {
                                    return;
                                }
                                final BitmapDrawable bitmapDrawable = new BitmapDrawable(com.beizi.ad.internal.e.i.a(context, bitmap2, 20.0f));
                                Handler handler = ae.this.f10360a;
                                if (handler != null) {
                                    handler.post(new Runnable() { // from class: com.beizi.fusion.tool.ae.2.1.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            try {
                                                if (bitmapDrawable == null || ae.this.f10363d == null) {
                                                    return;
                                                }
                                                ae.this.f10363d.setBackground(bitmapDrawable);
                                            } catch (Throwable th) {
                                                th.printStackTrace();
                                            }
                                        }
                                    });
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    });
                } else if (fAbs > 0.07d) {
                    ae.this.f10363d.setScaleType(ImageView.ScaleType.CENTER_CROP);
                } else {
                    ae.this.f10363d.setScaleType(ImageView.ScaleType.FIT_XY);
                }
                if (ae.this.f10363d != null) {
                    ae.this.f10363d.setVisibility(0);
                    ae.this.f10363d.setImageBitmap(bitmap);
                    ae.this.f10363d.setRectRadius(20.0f);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public interface a {
        void a();

        void b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c() {
        try {
            if (this.f10368i == null) {
                return;
            }
            if (this.f10377r) {
                return;
            }
            this.f10377r = true;
            View view = this.f10362c;
            if (view != null) {
                if (view.getVisibility() == 8) {
                    return;
                } else {
                    a();
                }
            }
            this.f10368i.b();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(ViewGroup viewGroup, int i10, int i11, com.beizi.ad.model.l lVar, a aVar) {
        Handler handler;
        Handler handler2;
        TextView textView;
        TextView textView2;
        if (viewGroup == null || lVar == null) {
            return;
        }
        try {
            this.f10368i = aVar;
            this.f10361b = viewGroup;
            Context context = viewGroup.getContext();
            this.f10373n = lVar.e();
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.beizi_notification_window, (ViewGroup) null);
            this.f10362c = viewInflate;
            this.f10363d = (CustomRoundImageView) viewInflate.findViewById(R.id.bz_notification_iv);
            this.f10364e = (TextView) this.f10362c.findViewById(R.id.bz_notification_title_tv);
            this.f10365f = (TextView) this.f10362c.findViewById(R.id.bz_notification_desc_tv);
            this.f10366g = (LinearLayout) this.f10362c.findViewById(R.id.bz_notification_action_container_ll);
            this.f10367h = (TextView) this.f10362c.findViewById(R.id.bz_notification_action_tv);
            a(context, i10, i11, lVar);
            String strF = lVar.f();
            this.f10376q = au.a(context, 15.0f);
            if (TextUtils.isEmpty(strF)) {
                CustomRoundImageView customRoundImageView = this.f10363d;
                if (customRoundImageView != null) {
                    customRoundImageView.setVisibility(8);
                }
            } else {
                int i12 = this.f10372m;
                int i13 = this.f10376q;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i12 - (i13 * 2), i12 - (i13 * 2));
                CustomRoundImageView customRoundImageView2 = this.f10363d;
                if (customRoundImageView2 != null) {
                    customRoundImageView2.setLayoutParams(layoutParams);
                    com.beizi.ad.internal.e.h.a((Context) null).a(strF, new AnonymousClass2(context));
                }
            }
            String strG = lVar.g();
            if (!TextUtils.isEmpty(strG) && (textView2 = this.f10364e) != null) {
                textView2.setText(strG);
            }
            String strH = lVar.h();
            if (!TextUtils.isEmpty(strH) && (textView = this.f10365f) != null) {
                textView.setText(strH);
            }
            String strI = lVar.i();
            if (TextUtils.isEmpty(strI)) {
                LinearLayout linearLayout = this.f10366g;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
            } else {
                LinearLayout linearLayout2 = this.f10366g;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(0);
                    final int iJ = lVar.j();
                    this.f10366g.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.tool.ae.3
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            try {
                                Handler handler3 = ae.this.f10360a;
                                if (handler3 != null) {
                                    if (iJ == 0) {
                                        handler3.sendEmptyMessage(1003);
                                    } else {
                                        handler3.sendEmptyMessage(1002);
                                    }
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    });
                }
                TextView textView3 = this.f10367h;
                if (textView3 != null) {
                    ar.a(textView3, "#80000000", 0, null, (this.f10372m - (this.f10376q * 2)) / 2);
                    this.f10367h.setText(strI);
                }
            }
            final int iD = lVar.d();
            this.f10362c.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.tool.ae.4
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    Handler handler3;
                    try {
                        if (motionEvent.getAction() == 0 && (handler3 = ae.this.f10360a) != null) {
                            if (iD == 1) {
                                handler3.sendEmptyMessage(1003);
                            } else {
                                handler3.sendEmptyMessage(1002);
                            }
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    return true;
                }
            });
            int iB = lVar.b();
            Handler handler3 = this.f10360a;
            if (handler3 != null) {
                handler3.sendEmptyMessageDelayed(1001, iB);
            }
            int iK = lVar.k();
            if (iK > 0 && (handler2 = this.f10360a) != null) {
                handler2.sendEmptyMessageDelayed(1003, iK + iB);
            }
            int iC = lVar.c();
            if (iC <= 0 || (handler = this.f10360a) == null) {
                return;
            }
            handler.sendEmptyMessageDelayed(1002, iC + iB);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b() {
        try {
            Handler handler = this.f10360a;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f10360a = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a() {
        try {
            q.a(this.f10362c, this.f10374o, this.f10375p, this.f10373n, 300);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(Context context, int i10, int i11, com.beizi.ad.model.l lVar) {
        if (context == null || lVar == null) {
            return;
        }
        try {
            com.beizi.ad.model.n nVarA = lVar.a();
            if (nVarA == null) {
                return;
            }
            String strA = nVarA.a();
            String strC = nVarA.c();
            String strD = nVarA.d();
            String strE = nVarA.e();
            if (TextUtils.isEmpty(strA)) {
                strA = "0";
            }
            if (TextUtils.isEmpty(strC)) {
                strC = "10%";
            }
            if (TextUtils.isEmpty(strD) || "0".equals(strD)) {
                strD = "90%";
            }
            if (TextUtils.isEmpty(strE) || "0".equals(strE)) {
                strE = "80";
            }
            if (strA.endsWith("%")) {
                this.f10369j = (Integer.parseInt(strA.substring(0, strA.indexOf("%"))) * i10) / 100;
            } else {
                this.f10369j = au.a(context, Integer.parseInt(strA));
            }
            if (strC.endsWith("%")) {
                this.f10370k = (Integer.parseInt(strC.substring(0, strC.indexOf("%"))) * i11) / 100;
            } else {
                this.f10370k = au.a(context, Integer.parseInt(strC));
            }
            if (strD.endsWith("%")) {
                this.f10371l = (Integer.parseInt(strD.substring(0, strD.indexOf("%"))) * i10) / 100;
            } else {
                this.f10371l = au.a(context, Integer.parseInt(strD));
            }
            if (strE.endsWith("%")) {
                this.f10372m = (i11 * Integer.parseInt(strE.substring(0, strE.indexOf("%")))) / 100;
            } else {
                this.f10372m = au.a(context, Integer.parseInt(strE));
            }
            int iM = au.m(context);
            this.f10374o = iM;
            if (this.f10371l > iM) {
                this.f10371l = iM;
            }
            int iN = au.n(context);
            this.f10375p = iN;
            if (this.f10372m > iN) {
                this.f10372m = iN;
            }
            int i12 = this.f10369j;
            int i13 = this.f10371l;
            int i14 = i12 - (i13 / 2);
            this.f10369j = i14;
            if (i14 <= 0) {
                this.f10369j = (i10 - i13) / 2;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}

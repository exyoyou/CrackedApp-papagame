package com.byazt.omf;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.aas.DeviceUtils;
import com.byazt.aas.nb;
import com.byazt.dna.qp;
import com.byazt.ete.ic;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 31, 32})
public class EmptyView extends View implements qp.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<View> f17930a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.aas.c.tt f17931c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final Handler f17932da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17933i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f17934m;
    public boolean my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View f17935n;
    public final AtomicBoolean nu;
    public int rh;
    public final AtomicBoolean sl;
    public List<View> sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f17936t;
    public volatile boolean tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ic f17937u;
    public c uj;
    public volatile boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public List<View> f17938x;
    public String yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f17939z;

    public interface c {
        void c();

        void c(View view, Map<String, Object> map);

        void c(boolean z10);

        void tt();
    }

    @com.byazt.zqa.c(c = {0, 1, 31, 1960})
    public static final class tt implements c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final c f17946c;

        public tt(c cVar) {
            this.f17946c = cVar;
        }

        @Override // com.byazt.omf.EmptyView.c
        public void tt() {
            if (this.f17946c != null) {
                com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.omf.EmptyView.tt.3
                    @Override // java.lang.Runnable
                    public void run() {
                        tt.this.f17946c.tt();
                    }
                });
            }
        }

        @Override // com.byazt.omf.EmptyView.c
        public void c(final boolean z10) {
            if (this.f17946c != null) {
                com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.omf.EmptyView.tt.1
                    @Override // java.lang.Runnable
                    public void run() {
                        tt.this.f17946c.c(z10);
                    }
                });
            }
        }

        @Override // com.byazt.omf.EmptyView.c
        public void c() {
            if (this.f17946c != null) {
                com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.omf.EmptyView.tt.2
                    @Override // java.lang.Runnable
                    public void run() {
                        tt.this.f17946c.c();
                    }
                });
            }
        }

        @Override // com.byazt.omf.EmptyView.c
        public void c(final View view, final Map<String, Object> map) {
            if (this.f17946c != null) {
                com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.omf.EmptyView.tt.4
                    @Override // java.lang.Runnable
                    public void run() {
                        tt.this.f17946c.c(view, map);
                    }
                });
            }
        }
    }

    public EmptyView(Context context, View view) {
        super(gt.getContext());
        this.ve = true;
        this.sl = new AtomicBoolean(true);
        this.f17936t = 1000;
        this.f17939z = false;
        this.f17934m = false;
        this.nu = new AtomicBoolean(false);
        this.rh = 0;
        this.my = false;
        this.f17931c = new com.byazt.aas.c.tt() { // from class: com.byazt.omf.EmptyView.6
            @Override // com.byazt.aas.c.tt
            public void onAppBackground() {
                if (!x.m().d() && EmptyView.this.my) {
                    EmptyView.this.my = false;
                    if (EmptyView.this.a()) {
                        com.byazt.rgb.tt.tt(EmptyView.this.getLifecycleId(), 1);
                    }
                    com.byazt.rgb.uj.uj(EmptyView.this.getLifecycleId());
                }
            }

            @Override // com.byazt.aas.c.tt
            public void onAppExit() {
            }

            @Override // com.byazt.aas.c.tt
            public void onAppForeground() {
                if (x.m().d() || EmptyView.this.my) {
                    return;
                }
                EmptyView emptyView = EmptyView.this;
                if (emptyView.c(emptyView.f17935n)) {
                    EmptyView.this.my = true;
                    if (EmptyView.this.a()) {
                        com.byazt.rgb.tt.c(EmptyView.this.getLifecycleId(), 1);
                    }
                    com.byazt.rgb.uj.ve(EmptyView.this.getLifecycleId());
                }
            }

            @Override // com.byazt.aas.c.tt
            public void onAppStart() {
            }
        };
        this.f17935n = view;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
        this.f17932da = new com.byazt.nr.d(com.byazt.bzd.x.tt(), this);
        this.f17939z = gt.tt().jl();
        this.f17934m = gt.tt().xx();
    }

    public static /* synthetic */ int a(EmptyView emptyView) {
        int i10 = emptyView.rh;
        emptyView.rh = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getLifecycleId() {
        ic icVar = this.f17937u;
        if (icVar != null) {
            return icVar.zm();
        }
        return null;
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rgb.uj.tt(getLifecycleId(), 3);
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        int iC;
        boolean z10 = this.f17939z || this.f17934m;
        Object obj = message.obj;
        boolean z11 = (obj instanceof String) && (TextUtils.equals("checkWhenAddToWindow", obj.toString()) || TextUtils.equals("checkWhenClicked", message.obj.toString()));
        if (message.what != 1) {
            return;
        }
        if (this.tt || (z10 && z11)) {
            if (!this.my && c(this.f17935n)) {
                this.my = true;
                if (a()) {
                    com.byazt.rgb.tt.c(getLifecycleId(), 0);
                }
                if (!sp()) {
                    com.byazt.rgb.uj.ve(getLifecycleId());
                }
            }
            String message2 = null;
            if (!z10) {
                if (!zb.tt(this.f17935n, 20, this.f17933i)) {
                    this.f17932da.sendEmptyMessageDelayed(1, this.f17936t);
                    return;
                }
                n();
                c cVar = this.uj;
                if (cVar != null) {
                    cVar.c(this.f17935n, null);
                    return;
                }
                return;
            }
            try {
                iC = zb.c(this.f17935n, 20, this.f17933i);
            } catch (Throwable th) {
                com.byazt.nr.m.c(th);
                message2 = th.getMessage();
                iC = 7;
            }
            if (iC == 0) {
                n();
                if (this.uj != null && !this.nu.get()) {
                    this.nu.set(true);
                    this.uj.c(this.f17935n, c(z11, message));
                }
            } else if (!z11) {
                this.f17932da.sendEmptyMessageDelayed(1, this.f17936t);
            }
            Object obj2 = message.obj;
            if ((obj2 instanceof String) && TextUtils.equals("checkWhenClicked", obj2.toString())) {
                c(iC, message2);
            }
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.nu.set(false);
        uj();
        if (this.f17939z) {
            c("checkWhenAddToWindow");
        }
        if (!this.my && sp()) {
            this.my = true;
            com.byazt.rgb.uj.ve(getLifecycleId());
        }
        tt();
        x.m().ve().c(this.f17931c);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.nu.set(false);
        n();
        if (this.my) {
            this.my = false;
            if (a()) {
                com.byazt.rgb.tt.tt(getLifecycleId(), 0);
            }
            com.byazt.rgb.uj.uj(getLifecycleId());
        }
        ve();
        x.m().ve().tt(this.f17931c);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        View view;
        super.onWindowFocusChanged(z10);
        com.byazt.rgb.uj.c(getLifecycleId(), z10 ? 1 : 2);
        c cVar = this.uj;
        if (cVar != null) {
            cVar.c(z10);
        }
        if (!z10) {
            if (!this.my || (view = this.f17935n) == null) {
                return;
            }
            view.postDelayed(new Runnable() { // from class: com.byazt.omf.EmptyView.1
                @Override // java.lang.Runnable
                public void run() {
                    if (zb.tt(EmptyView.this.f17935n, 20, EmptyView.this.f17933i)) {
                        return;
                    }
                    EmptyView.this.my = false;
                    com.byazt.rgb.uj.uj(EmptyView.this.getLifecycleId());
                }
            }, 500L);
            return;
        }
        if (this.my || !c(this.f17935n)) {
            return;
        }
        this.my = true;
        com.byazt.rgb.uj.ve(getLifecycleId());
    }

    public void setAdType(int i10) {
        this.f17933i = i10;
    }

    public void setCallback(c cVar) {
        this.uj = new tt(cVar);
    }

    public void setNeedCheckingShow(final boolean z10) {
        this.nu.set(false);
        this.f17932da.post(new Runnable() { // from class: com.byazt.omf.EmptyView.5
            @Override // java.lang.Runnable
            public void run() {
                EmptyView.this.ve = z10;
                if (!z10 && EmptyView.this.tt) {
                    EmptyView.this.n();
                } else {
                    if (!z10 || EmptyView.this.tt) {
                        return;
                    }
                    EmptyView.this.uj();
                }
            }
        });
    }

    public void setRefClickViews(List<View> list) {
        this.f17930a = list;
    }

    public void setRefCreativeViews(List<View> list) {
        this.sp = list;
    }

    public void setRefDirectDownloadViews(List<View> list) {
        this.f17938x = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        int i10 = this.f17933i;
        return i10 == 1 || i10 == 5 || i10 == 9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        this.f17932da.post(new Runnable() { // from class: com.byazt.omf.EmptyView.4
            @Override // java.lang.Runnable
            public void run() {
                EmptyView.this.tt = false;
                EmptyView.this.f17932da.removeMessages(1);
            }
        });
    }

    private boolean sp() {
        int i10 = this.f17933i;
        return i10 == 7 || i10 == 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj() {
        this.f17932da.post(new Runnable() { // from class: com.byazt.omf.EmptyView.2
            @Override // java.lang.Runnable
            public void run() {
                if (!EmptyView.this.ve || EmptyView.this.tt) {
                    return;
                }
                EmptyView.this.tt = true;
                EmptyView.a(EmptyView.this);
                Message messageObtain = Message.obtain();
                messageObtain.what = 1;
                EmptyView.this.f17932da.handleMessage(messageObtain);
            }
        });
    }

    private void tt() {
        if (this.sl.getAndSet(false)) {
            com.byazt.rgb.uj.tt(getLifecycleId());
            c cVar = this.uj;
            if (cVar != null) {
                cVar.c();
            }
        }
    }

    private void ve() {
        if (this.sl.getAndSet(true)) {
            return;
        }
        com.byazt.rgb.uj.n(getLifecycleId());
        c cVar = this.uj;
        if (cVar != null) {
            cVar.tt();
        }
    }

    public void c() {
        c(this.f17930a, (com.byazt.hkv.uj) null);
        c(this.sp, (com.byazt.hkv.uj) null);
        c(this.f17938x, (com.byazt.hkv.uj) null);
    }

    public void c(List<View> list, com.byazt.hkv.uj ujVar) {
        if (com.byazt.nr.u.tt(list)) {
            for (View view : list) {
                if (view != null) {
                    view.setOnClickListener(ujVar);
                    view.setOnTouchListener(ujVar);
                }
            }
        }
    }

    public void c(final String str) {
        this.f17932da.post(new Runnable() { // from class: com.byazt.omf.EmptyView.3
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.equals(str, "checkWhenClicked")) {
                    if (!EmptyView.this.ve) {
                        EmptyView.this.c(8, (String) null);
                    }
                    if (!EmptyView.this.tt) {
                        EmptyView.this.c(EmptyView.this.nu.get() ? 10 : 9, (String) null);
                    }
                }
                Message messageObtain = Message.obtain();
                messageObtain.what = 1;
                messageObtain.obj = str;
                EmptyView.this.f17932da.handleMessage(messageObtain);
            }
        });
    }

    public void c(ic icVar, String str) {
        this.f17937u = icVar;
        this.yp = str;
        if (icVar != null) {
            String strValueOf = String.valueOf(nb.t(icVar));
            int iSl = nb.sl(icVar);
            if (this.f17933i == 0) {
                this.f17933i = iSl;
            }
            com.byazt.rgb.uj.c(icVar, strValueOf, iSl, getLifecycleId());
        }
    }

    public EmptyView(Context context, View view, int i10) {
        this(context, view);
        this.f17936t = i10;
    }

    private Map<String, Object> c(boolean z10, Message message) {
        if (!z10) {
            return null;
        }
        HashMap map = new HashMap();
        if (TextUtils.equals("checkWhenAddToWindow", message.obj.toString())) {
            map.put("show_send_type", 2);
        } else if (TextUtils.equals("checkWhenClicked", message.obj.toString())) {
            map.put("show_send_type", 1);
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, String str) {
        HashMap map = new HashMap();
        if (i10 == 0) {
            map.put("is_success", Boolean.TRUE);
        } else {
            map.put("is_success", Boolean.FALSE);
            if (i10 != 7) {
                str = zb.c(i10);
            }
            map.put("error_code", Integer.valueOf(i10));
            map.put("error_message", str);
        }
        map.put("checking_cnt", Integer.valueOf(this.rh));
        com.byazt.ddx.uj.c(this.f17937u, this.yp, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(View view) {
        try {
            return DeviceUtils.c() && view != null && view.isShown();
        } catch (Throwable unused) {
        }
    }
}

package com.byazt.atv;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.byazt.cd.i;
import com.byazt.cd.x;
import com.byazt.ete.ic;
import com.byazt.ete.pu;
import com.byazt.omf.gt;
import com.byazt.pm.sl;
import com.byazt.pm.u;
import com.byazt.pm.yp;
import com.byazt.sz.z;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 134, 15})
public class uj {
    public static void c(ic icVar, z zVar, int i10, AtomicBoolean atomicBoolean) {
        if (icVar == null || zVar == null || i10 != 1) {
            return;
        }
        JSONObject jSONObjectU = pu.u(icVar);
        int iOptInt = 0;
        if (jSONObjectU != null) {
            try {
                iOptInt = jSONObjectU.optInt("tap_min_duration_threshold", 0);
            } catch (Exception unused) {
            }
        }
        if (iOptInt <= 0) {
            return;
        }
        zVar.c(new tt(iOptInt, atomicBoolean));
    }

    public static void tt(ic icVar, z zVar, int i10, AtomicBoolean atomicBoolean) {
        int iOptInt;
        boolean zTw;
        if (icVar == null || zVar == null) {
            return;
        }
        JSONObject jSONObjectU = pu.u(icVar);
        int i11 = -1;
        if (jSONObjectU == null || i10 != 1) {
            iOptInt = -1;
        } else {
            try {
                int iOptInt2 = jSONObjectU.optInt("slide_ignore_up", -1);
                try {
                    iOptInt = jSONObjectU.optInt("slide_min_threshold", -1);
                    i11 = iOptInt2;
                } catch (Exception unused) {
                    i11 = iOptInt2;
                    iOptInt = -1;
                    zTw = false;
                    zVar.c(new c(i11, iOptInt, zTw, atomicBoolean));
                }
            } catch (Exception unused2) {
            }
        }
        try {
            zTw = gt.tt().tw();
        } catch (Exception unused3) {
            zTw = false;
        }
        zVar.c(new c(i11, iOptInt, zTw, atomicBoolean));
    }

    @com.byazt.zqa.c(c = {0, 1, 134, 123})
    public static class c implements u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f11778a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f11779c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f11780n;
        public boolean sp;
        public float tt;
        public final AtomicBoolean ve;
        public final Map<String, ve> uj = new HashMap();

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public boolean f11781x = true;

        /* JADX INFO: renamed from: com.byazt.atv.uj$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, 134, MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS})
        private static class C0254c {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final int f11782c;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public final boolean f11783n;
            public final AtomicInteger tt;
            public final String uj;
            public final int ve;

            public C0254c(String str, int i10, AtomicInteger atomicInteger, int i11, boolean z10) {
                this.uj = str;
                this.f11782c = i10;
                this.tt = atomicInteger;
                this.ve = i11;
                this.f11783n = z10;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int c() {
                return this.f11782c;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean n() {
                return this.f11783n;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public AtomicInteger tt() {
                return this.tt;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public String uj() {
                return this.uj;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int ve() {
                return this.ve;
            }
        }

        @com.byazt.zqa.c(c = {0, 1, 134, 570})
        private static class tt {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final C0254c f11784a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final com.byazt.xj.ve f11785c;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public final boolean f11786n;
            public final MotionEvent tt;
            public final sl uj;
            public final com.byazt.ji.tt ve;

            public tt(com.byazt.xj.ve veVar, MotionEvent motionEvent, com.byazt.ji.tt ttVar, sl slVar, boolean z10, C0254c c0254c) {
                this.f11785c = veVar;
                this.tt = motionEvent;
                this.ve = ttVar;
                this.uj = slVar;
                this.f11786n = z10;
                this.f11784a = c0254c;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public C0254c a() {
                return this.f11784a;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public com.byazt.xj.ve c() {
                return this.f11785c;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean n() {
                return this.f11786n;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean sp() {
                return this.uj != null;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public MotionEvent tt() {
                return this.tt;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public sl uj() {
                return this.uj;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public com.byazt.ji.tt ve() {
                return this.ve;
            }
        }

        @com.byazt.zqa.c(c = {0, 1, 134, MediaPlayer.MEDIA_PLAYER_OPTION_ROTATION})
        private static class ve {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public float f11787c;
            public float tt;
            public boolean ve;

            private ve() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public float tt() {
                return this.tt;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void uj() {
                this.ve = true;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean ve() {
                return this.ve;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void c(float f10, float f11) {
                this.f11787c = f10;
                this.tt = f11;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public float c() {
                return this.f11787c;
            }
        }

        public c(int i10, int i11, boolean z10, AtomicBoolean atomicBoolean) {
            this.f11780n = i10;
            this.f11778a = i11;
            this.sp = z10;
            this.ve = atomicBoolean;
        }

        private boolean a(tt ttVar) {
            if (this.ve.get()) {
                return true;
            }
            MotionEvent motionEventTt = ttVar.tt();
            float x10 = motionEventTt.getX();
            float y10 = motionEventTt.getY();
            if (ttVar.a().c() == 0 && c(ttVar, x10, y10, "Slide event, check limit threshold 0")) {
                return true;
            }
            if (!c(x10, y10, this.f11779c, this.tt, ttVar.a())) {
                return false;
            }
            c(ttVar, x10, y10, (String) null);
            return true;
        }

        private boolean n(tt ttVar) {
            if (ttVar.n() && !this.ve.get()) {
                MotionEvent motionEventTt = ttVar.tt();
                float x10 = motionEventTt.getX();
                float y10 = motionEventTt.getY();
                if (c(x10, y10, this.f11779c, this.tt, ttVar.a()) && ttVar.sp()) {
                    c();
                    return c(ttVar, x10, y10);
                }
            }
            return true;
        }

        private boolean tt(tt ttVar) {
            MotionEvent motionEventTt = ttVar.tt();
            int actionMasked = motionEventTt.getActionMasked();
            int actionIndex = motionEventTt.getActionIndex();
            int pointerId = motionEventTt.getPointerId(actionIndex);
            String strC = c(pointerId, ttVar.ve());
            motionEventTt.getPointerCount();
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked == 2) {
                        return ve(ttVar);
                    }
                    if (actionMasked == 3) {
                        this.uj.clear();
                        return true;
                    }
                    if (actionMasked != 5) {
                        if (actionMasked != 6) {
                            return true;
                        }
                    }
                }
                return c(ttVar, actionIndex, pointerId, strC);
            }
            this.ve.set(false);
            c(motionEventTt, actionIndex, strC);
            return true;
        }

        private boolean uj(tt ttVar) {
            MotionEvent motionEventTt = ttVar.tt();
            int action = motionEventTt.getAction();
            if (action == 0) {
                return c(motionEventTt);
            }
            if (action != 1) {
                if (action == 2) {
                    return n(ttVar);
                }
                if (action != 3 || tt(motionEventTt)) {
                    return true;
                }
            }
            return a(ttVar);
        }

        private boolean ve(tt ttVar) {
            MotionEvent motionEventTt = ttVar.tt();
            for (int i10 = 0; i10 < motionEventTt.getPointerCount(); i10++) {
                int pointerId = motionEventTt.getPointerId(i10);
                ve veVar = this.uj.get(c(pointerId, ttVar.ve()));
                if (c(ttVar, veVar) && c(ttVar, veVar, pointerId, i10)) {
                    return true;
                }
            }
            return true;
        }

        @Override // com.byazt.pm.u
        public void c(String str, Object obj) {
            try {
                if (((str.hashCode() == 2001723438 && str.equals("lastEventInView")) ? (byte) 0 : (byte) -1) != 0) {
                    return;
                }
                this.f11781x = ((Boolean) obj).booleanValue();
            } catch (Exception unused) {
            }
        }

        @Override // com.byazt.pm.u
        public boolean c(com.byazt.xj.ve veVar, MotionEvent motionEvent, sl slVar, com.byazt.ji.tt ttVar, String str, int i10, AtomicInteger atomicInteger, int i11, boolean z10) {
            boolean z11;
            C0254c c0254c = new C0254c(str, i10, atomicInteger, i11, z10);
            com.byazt.pm.a aVarDa = ttVar.da();
            if (aVarDa != null && !aVarDa.tt().isEmpty()) {
                Iterator<com.byazt.pm.a.c> it2 = aVarDa.tt().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z11 = false;
                        break;
                    }
                    if (TextUtils.equals(it2.next().tt(), "convert")) {
                        z11 = true;
                        break;
                    }
                }
            } else {
                z11 = false;
                break;
            }
            return c(new tt(veVar, motionEvent, ttVar, slVar, z11 && this.f11780n == 1, c0254c));
        }

        private String c(int i10, com.byazt.ji.tt ttVar) {
            return i10 + "_" + System.identityHashCode(ttVar);
        }

        private void c(MotionEvent motionEvent, int i10, String str) {
            ve veVar = new ve();
            veVar.c(motionEvent.getX(i10), motionEvent.getY(i10));
            this.uj.put(str, veVar);
        }

        private boolean tt(MotionEvent motionEvent) {
            return motionEvent.getRawY() == 0.0f && motionEvent.getRawX() == 0.0f;
        }

        private boolean c(tt ttVar, ve veVar) {
            return (!ttVar.n() || veVar == null || veVar.ve() || this.ve.get()) ? false : true;
        }

        private boolean c(tt ttVar, ve veVar, int i10, int i11) {
            MotionEvent motionEventTt = ttVar.tt();
            float x10 = motionEventTt.getX(i11);
            float y10 = motionEventTt.getY(i11);
            if (!c(x10, y10, veVar.c(), veVar.tt(), ttVar.a())) {
                return false;
            }
            veVar.uj();
            return ttVar.sp() && c(ttVar, x10, y10);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0062 A[Catch: all -> 0x0083, TRY_ENTER, TryCatch #0 {all -> 0x0083, blocks: (B:6:0x001a, B:8:0x0021, B:11:0x002a, B:13:0x003c, B:17:0x0062, B:20:0x0078), top: B:25:0x001a }] */
        /* JADX WARN: Code duplicated, block: B:19:0x0077  */
        /* JADX WARN: Code duplicated, block: B:20:0x0078 A[Catch: all -> 0x0083, TRY_LEAVE, TryCatch #0 {all -> 0x0083, blocks: (B:6:0x001a, B:8:0x0021, B:11:0x002a, B:13:0x003c, B:17:0x0062, B:20:0x0078), top: B:25:0x001a }] */
        private boolean c(tt ttVar, int i10, int i11, String str) {
            MotionEvent motionEventTt = ttVar.tt();
            ve veVar = this.uj.get(str);
            if (veVar != null) {
                try {
                    if (!veVar.ve() && !this.ve.get()) {
                        float x10 = motionEventTt.getX(i10);
                        float y10 = motionEventTt.getY(i10);
                        if (ttVar.a().c() != 0) {
                            if (!c(x10, y10, veVar.c(), veVar.tt(), ttVar.a())) {
                                c(ttVar, veVar, x10, y10, (String) null);
                            }
                        } else {
                            if (!c(ttVar, veVar, x10, y10, "Slide event for pointer " + i11 + ", check limit threshold 0")) {
                                if (!c(x10, y10, veVar.c(), veVar.tt(), ttVar.a())) {
                                    c(ttVar, veVar, x10, y10, (String) null);
                                }
                            }
                        }
                    }
                    return true;
                } finally {
                    this.uj.remove(str);
                }
            }
            return false;
        }

        private boolean c(tt ttVar, ve veVar, float f10, float f11, String str) {
            if (!ttVar.sp() || veVar.ve() || this.ve.get()) {
                return false;
            }
            TextUtils.isEmpty(str);
            veVar.uj();
            return c(ttVar, f10, f11);
        }

        private boolean c(MotionEvent motionEvent) {
            this.ve.set(false);
            this.f11779c = motionEvent.getX();
            this.tt = motionEvent.getY();
            return true;
        }

        private boolean c(tt ttVar, float f10, float f11, String str) {
            if (!ttVar.sp() || this.ve.get()) {
                return false;
            }
            TextUtils.isEmpty(str);
            c();
            return c(ttVar, f10, f11);
        }

        private void c() {
            this.f11779c = 0.0f;
            this.tt = 0.0f;
        }

        public boolean c(tt ttVar) {
            if (this.sp) {
                return tt(ttVar);
            }
            return uj(ttVar);
        }

        private boolean c(View view, float f10, float f11) {
            return f10 >= 0.0f && f10 < ((float) view.getWidth()) && f11 >= 0.0f && f11 < ((float) view.getHeight());
        }

        private boolean c(tt ttVar, float f10, float f11) {
            C0254c c0254cA = ttVar.a();
            AtomicInteger atomicIntegerTt = c0254cA.tt();
            if ((atomicIntegerTt != null && atomicIntegerTt.get() <= 0) || !c0254cA.n()) {
                return false;
            }
            if (c0254cA.ve() == 1 && (!c(ttVar.c().i(), f10, f11) || !this.f11781x)) {
                return false;
            }
            this.ve.set(true);
            ttVar.uj().c(ttVar.c(), ttVar.ve().sp(), ttVar.ve().da().tt(), ttVar.ve().da());
            if (atomicIntegerTt != null && atomicIntegerTt.get() != Integer.MAX_VALUE) {
                atomicIntegerTt.decrementAndGet();
            }
            return true;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:20:0x0054  */
        private boolean c(float f10, float f11, float f12, float f13, C0254c c0254c) {
            byte b10;
            int iTt = x.tt(gt.getContext(), f10 - f12);
            int iTt2 = x.tt(gt.getContext(), f11 - f13);
            switch (c0254c.uj()) {
                case "up":
                    b10 = 0;
                    break;
                case "all":
                    b10 = 4;
                    break;
                case "down":
                    b10 = 1;
                    break;
                case "left":
                    b10 = 2;
                    break;
                case "right":
                    b10 = 3;
                    break;
                default:
                    b10 = -1;
                    break;
            }
            if (b10 == 0) {
                iTt = -iTt2;
            } else if (b10 == 1) {
                iTt = iTt2;
            } else if (b10 == 2) {
                iTt = -iTt;
            } else if (b10 != 3) {
                iTt = (int) Math.abs(Math.sqrt(Math.pow(iTt, 2.0d) + Math.pow(iTt2, 2.0d)));
            }
            int i10 = this.f11778a;
            if (i10 >= 0) {
                return iTt >= i10;
            }
            return iTt >= c0254c.c();
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 134, 153})
    public static class tt implements i.c, yp {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public com.byazt.ji.tt f11788a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f11789c;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Handler f11790i = new i(Looper.getMainLooper(), this);

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public com.byazt.xj.ve f11791n;
        public sl sp;
        public float tt;
        public final int uj;
        public boolean ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final AtomicBoolean f11792x;

        public tt(int i10, AtomicBoolean atomicBoolean) {
            this.uj = i10;
            this.f11792x = atomicBoolean;
        }

        @Override // com.byazt.pm.yp
        public boolean c(com.byazt.xj.ve veVar, MotionEvent motionEvent, sl slVar, com.byazt.ji.tt ttVar) {
            boolean z10;
            com.byazt.pm.a aVarDa = ttVar.da();
            if (aVarDa == null || aVarDa.tt().isEmpty()) {
                z10 = false;
            } else {
                Iterator<com.byazt.pm.a.c> it2 = aVarDa.tt().iterator();
                while (it2.hasNext()) {
                    if (TextUtils.equals(it2.next().tt(), "convert")) {
                        z10 = true;
                    }
                }
                z10 = false;
            }
            return c(veVar, motionEvent, ttVar, slVar, z10);
        }

        /* JADX WARN: Code duplicated, block: B:21:0x0057  */
        /* JADX WARN: Code duplicated, block: B:23:0x0066  */
        /* JADX WARN: Code duplicated, block: B:25:0x006d  */
        public boolean c(com.byazt.xj.ve veVar, MotionEvent motionEvent, com.byazt.ji.tt ttVar, sl slVar, boolean z10) {
            int i10;
            float rawX;
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f11792x.set(false);
                this.f11789c = motionEvent.getRawX();
                this.tt = motionEvent.getRawY();
                this.f11791n = veVar;
                this.f11788a = ttVar;
                this.sp = slVar;
                if (z10 && (i10 = this.uj) > 0) {
                    this.f11790i.sendEmptyMessageDelayed(1, i10);
                }
            } else if (action == 1) {
                this.f11790i.removeMessages(1);
                this.f11791n = null;
                this.f11788a = null;
                this.sp = null;
                if (this.ve) {
                    this.ve = false;
                    this.f11789c = 0.0f;
                    this.tt = 0.0f;
                    return false;
                }
                rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                if (Math.abs(rawX - this.f11789c) >= 15.0f && Math.abs(rawY - this.tt) < 15.0f) {
                    if (!this.f11792x.get()) {
                        this.f11792x.set(true);
                        if (slVar != null) {
                            slVar.c(veVar, ttVar.sp(), ttVar.da().tt(), this.f11788a.da());
                            this.f11789c = 0.0f;
                            this.tt = 0.0f;
                            return true;
                        }
                    }
                } else {
                    this.ve = false;
                    return false;
                }
            } else if (action == 2) {
                float rawX2 = motionEvent.getRawX();
                float rawY2 = motionEvent.getRawY();
                if (Math.abs(rawX2 - this.f11789c) >= 15.0f || Math.abs(rawY2 - this.tt) >= 15.0f) {
                    this.ve = true;
                }
            } else if (action == 3) {
                this.ve = false;
                float rawX3 = motionEvent.getRawX();
                if (motionEvent.getRawY() == 0.0f && rawX3 == 0.0f) {
                    this.f11790i.removeMessages(1);
                    this.f11791n = null;
                    this.f11788a = null;
                    this.sp = null;
                } else {
                    this.f11790i.removeMessages(1);
                    this.f11791n = null;
                    this.f11788a = null;
                    this.sp = null;
                    if (this.ve) {
                        this.ve = false;
                        this.f11789c = 0.0f;
                        this.tt = 0.0f;
                        return false;
                    }
                    rawX = motionEvent.getRawX();
                    float rawY3 = motionEvent.getRawY();
                    if (Math.abs(rawX - this.f11789c) >= 15.0f) {
                    }
                    this.ve = false;
                    return false;
                }
            }
            return true;
        }

        @Override // com.byazt.cd.i.c
        public void c(Message message) {
            if (this.sp == null || this.f11791n == null || this.f11788a == null || this.ve) {
                return;
            }
            if (!this.f11792x.get()) {
                this.f11792x.set(true);
                this.sp.c(this.f11791n, this.f11788a.sp(), this.f11788a.da().tt(), this.f11788a.da());
            }
            this.f11791n = null;
            this.f11788a = null;
            this.sp = null;
        }
    }
}

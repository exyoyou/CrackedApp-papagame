package com.join.mgps.joystick;

import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.Toast;
import com.join.mgps.joystick.map.KeyCodes;
import com.join.mgps.joystick.map.KeyMap;
import com.papa.controller.core.ControllerManager;
import com.papa.controller.core.PadKeyEvent;
import com.papa.controller.core.PadMotionEvent;
import com.papa.controller.core.PadStateEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static a f71725j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f71726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<ControllerManager.c> f71727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected KeyMap.EmuMap f71728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected List<String> f71729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int[] f71730e = {0, 0, 0, 0};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f71731f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    com.papa.controller.core.d f71732g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f71733h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f71734i;

    /* JADX INFO: renamed from: com.join.mgps.joystick.a$a, reason: collision with other inner class name */
    class C0735a implements ControllerManager.d {
        C0735a() {
        }

        @Override // com.papa.controller.core.ControllerManager.d
        public void onControllerDeviceAdded(ControllerManager.c device) {
            if (a.this.f71732g.p() == 1) {
                a aVar = a.this;
                aVar.l(1, aVar.f71732g.q());
            }
        }

        @Override // com.papa.controller.core.ControllerManager.d
        public void onControllerDeviceRemoved(ControllerManager.c device) {
            if (a.this.f71732g.p() == 0) {
                a aVar = a.this;
                aVar.l(0, aVar.f71732g.q());
            }
        }
    }

    class b implements com.papa.controller.core.c {
        b() {
        }

        @Override // com.papa.controller.core.c
        public void onKeyDown(int keyCode, PadKeyEvent padKeyEvent) {
            a.this.q(keyCode, padKeyEvent);
        }

        @Override // com.papa.controller.core.c
        public void onKeyPressure(int keyCode, float pressure, PadKeyEvent padKeyEvent) {
            a.this.q(keyCode, padKeyEvent);
        }

        @Override // com.papa.controller.core.c
        public void onKeyUp(int keyCode, PadKeyEvent padKeyEvent) {
            a.this.q(keyCode, padKeyEvent);
        }

        @Override // com.papa.controller.core.c
        public void onLeftStick(float x10, float y10, PadMotionEvent padMotionEvent) {
            a.this.r(padMotionEvent);
        }

        @Override // com.papa.controller.core.c
        public void onRightStick(float x10, float y10, PadMotionEvent padMotionEvent) {
            a.this.r(padMotionEvent);
        }

        @Override // com.papa.controller.core.c
        public void onStateEvent(PadStateEvent padStateEvent) {
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            Integer num = (Integer) animation.getAnimatedValue();
            a.this.z(num.intValue(), num.intValue());
        }
    }

    public interface d {
        void onGenericMotionEvent(int keyCode, float x10, float y10);

        void onKeyMap(int[] keyState, com.join.mgps.joystick.map.c keyMapEvent, KeyEvent event);

        void onVirtualKeyboard(boolean hide);
    }

    protected a() {
        if (this.f71728c == null) {
            return;
        }
        n();
    }

    private boolean A() {
        KeyMap.EmuMap emuMap = this.f71728c;
        return emuMap != null && emuMap == KeyMap.EmuMap.WSC;
    }

    private void E(boolean add) {
        Context context = this.f71726a;
        if (context == null) {
            return;
        }
        if (add) {
            Toast.makeText(context, "手柄已连接", 0).show();
        } else {
            Toast.makeText(context, "手柄已断开", 0).show();
        }
    }

    private boolean G(List<ControllerManager.c> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            arrayList.addAll(list);
        }
        if (this.f71727b != null) {
            if (this.f71727b.size() < arrayList.size()) {
                arrayList.removeAll(this.f71727b);
                if (k(arrayList) > 0) {
                    return true;
                }
            } else {
                this.f71727b.removeAll(arrayList);
                if (k(this.f71727b) > 0) {
                    return true;
                }
            }
        } else if (arrayList.size() != 0 && k(arrayList) > 0) {
            return true;
        }
        return false;
    }

    private com.papa.controller.core.c b() {
        return new b();
    }

    public static a g() {
        if (f71725j == null) {
            f71725j = new a();
        }
        return f71725j;
    }

    private List<ControllerManager.c> j(List<ControllerManager.c> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() != 0) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (!m(list.get(i10).d())) {
                    arrayList.add(list.get(i10));
                }
            }
        }
        return arrayList;
    }

    private int k(List<ControllerManager.c> list) {
        return j(j(list)).size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int state, List<ControllerManager.c> list) {
        if (state == 1 || state == 0) {
            try {
                if (G(list)) {
                    E(state == 1);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (this.f71727b == null) {
            this.f71727b = new ArrayList();
        }
        this.f71727b.clear();
        this.f71727b.addAll(list);
        boolean zL = com.join.mgps.joystick.map.d.l(0, new Boolean[0]);
        boolean z10 = k(list) < 1 ? zL & false : zL & true;
        d dVar = this.f71731f;
        if (dVar != null) {
            dVar.onVirtualKeyboard(z10);
        }
    }

    private void n() {
        try {
            com.join.mgps.joystick.map.d.f(this.f71728c);
            String[] strArr = (String[]) Arrays.asList(com.join.mgps.joystick.map.d.c(this.f71728c.section).keySet().toArray()).toArray(new String[0]);
            if (strArr == null || strArr.length == 0) {
                strArr = this.f71728c.keysKey;
            }
            this.f71729d = Arrays.asList(strArr);
            B();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean o() {
        KeyMap.EmuMap emuMap = this.f71728c;
        return emuMap != null && emuMap == KeyMap.EmuMap.PSP;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007e  */
    private void t(KeyEvent event, com.join.mgps.joystick.map.c mapEvent) {
        int iValue;
        if (A()) {
            return;
        }
        if (o()) {
            if (event.getKeyCode() == 21) {
                iValue = KeyCodes.KEY_LEFT1.value();
            } else if (event.getKeyCode() == 19) {
                iValue = KeyCodes.KEY_UP1.value();
            } else if (event.getKeyCode() == 22) {
                iValue = KeyCodes.KEY_RIGHT1.value();
            } else if (event.getKeyCode() == 20) {
                iValue = KeyCodes.KEY_DOWN1.value();
            } else {
                iValue = 0;
            }
        } else if (event.getKeyCode() == 21) {
            iValue = KeyCodes.KEY_LEFT.value();
        } else if (event.getKeyCode() == 19) {
            iValue = KeyCodes.KEY_UP.value();
        } else if (event.getKeyCode() == 22) {
            iValue = KeyCodes.KEY_RIGHT.value();
        } else if (event.getKeyCode() == 20) {
            iValue = KeyCodes.KEY_DOWN.value();
        } else {
            iValue = 0;
        }
        if (event.getAction() == 0) {
            int[] iArr = this.f71730e;
            iArr[0] = iValue | iArr[0];
        } else {
            int[] iArr2 = this.f71730e;
            iArr2[0] = (~iValue) & iArr2[0];
        }
    }

    private void u(KeyEvent event, com.join.mgps.joystick.map.c keyMapEvent) {
        List<String> list;
        if (keyMapEvent == null) {
            return;
        }
        int i10 = (TextUtils.isEmpty(keyMapEvent.b()) || (list = this.f71729d) == null || !list.contains(keyMapEvent.b())) ? 0 : Integer.parseInt(keyMapEvent.b());
        if (event.getAction() == 0) {
            int[] iArr = this.f71730e;
            iArr[0] = i10 | iArr[0];
        } else {
            int[] iArr2 = this.f71730e;
            iArr2[0] = (~i10) & iArr2[0];
        }
    }

    void B() {
        try {
            if (this.f71732g == null) {
                com.papa.controller.core.d dVar = new com.papa.controller.core.d(this.f71726a);
                this.f71732g = dVar;
                dVar.w(b(), new Handler());
                x();
            }
            com.papa.controller.core.d dVar2 = this.f71732g;
            if (dVar2 != null) {
                dVar2.B();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void C() {
        EaseBreathInterpolator easeBreathInterpolator = new EaseBreathInterpolator();
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 255);
        valueAnimatorOfInt.setDuration(1200L);
        valueAnimatorOfInt.setInterpolator(easeBreathInterpolator);
        valueAnimatorOfInt.addUpdateListener(new c());
        valueAnimatorOfInt.start();
    }

    void D() {
        com.papa.controller.core.d dVar = this.f71732g;
        if (dVar != null) {
            dVar.F();
        }
    }

    public void F() {
        D();
    }

    public boolean c(MotionEvent event) {
        com.papa.controller.core.d dVar = this.f71732g;
        if (dVar != null) {
            return false | dVar.n(event);
        }
        return false;
    }

    public boolean d(KeyEvent event) {
        com.papa.controller.core.d dVar = this.f71732g;
        if (dVar != null) {
            return false | dVar.o(event);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0050  */
    /* JADX WARN: Code duplicated, block: B:22:0x0061  */
    /* JADX WARN: Code duplicated, block: B:24:0x0067  */
    /* JADX WARN: Code duplicated, block: B:26:0x006b  */
    /* JADX WARN: Code duplicated, block: B:29:0x0077 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0079  */
    boolean e(PadMotionEvent event) {
        boolean z10;
        float f10;
        float fY = event.y();
        float fA = event.A();
        float f11 = this.f71733h;
        if (fY * f11 >= 0.0f) {
            if (fY * f11 == 0.0f) {
                if (fY == 0.0f || f11 != 0.0f) {
                    if (fY == 0.0f && f11 != 0.0f) {
                        p(h(f11, 1));
                    }
                    f10 = this.f71734i;
                    if (fA * f10 >= 0.0f) {
                        if (fA * f10 == 0.0f) {
                            if (fA == 0.0f && f10 == 0.0f) {
                                p(i(fA, 0));
                            } else if (fA == 0.0f && f10 != 0.0f) {
                                p(i(f10, 1));
                            }
                        }
                        this.f71733h = fY;
                        this.f71734i = fA;
                        return z10;
                    }
                    p(i(f10, 1));
                    p(i(fA, 0));
                    z10 |= true;
                    this.f71733h = fY;
                    this.f71734i = fA;
                    return z10;
                }
                p(h(fY, 0));
            }
            z10 = false;
            f10 = this.f71734i;
            if (fA * f10 >= 0.0f) {
                if (fA * f10 == 0.0f) {
                    if (fA == 0.0f) {
                        if (fA == 0.0f) {
                            p(i(f10, 1));
                        }
                    } else if (fA == 0.0f) {
                        p(i(f10, 1));
                    }
                }
                this.f71733h = fY;
                this.f71734i = fA;
                return z10;
            }
            p(i(f10, 1));
            p(i(fA, 0));
            z10 |= true;
            this.f71733h = fY;
            this.f71734i = fA;
            return z10;
        }
        p(h(f11, 1));
        p(h(fY, 0));
        z10 = true;
        f10 = this.f71734i;
        if (fA * f10 >= 0.0f) {
            if (fA * f10 == 0.0f) {
                if (fA == 0.0f) {
                    if (fA == 0.0f) {
                        p(i(f10, 1));
                    }
                } else if (fA == 0.0f) {
                    p(i(f10, 1));
                }
            }
            this.f71733h = fY;
            this.f71734i = fA;
            return z10;
        }
        p(i(f10, 1));
        p(i(fA, 0));
        z10 |= true;
        this.f71733h = fY;
        this.f71734i = fA;
        return z10;
    }

    boolean f(PadMotionEvent event) {
        int iW = event.w();
        float fY = event.y();
        float fA = event.A();
        try {
            d dVar = this.f71731f;
            if (dVar == null) {
                return false;
            }
            dVar.onGenericMotionEvent(iW, fY, fA);
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    KeyEvent h(float direction, int action) {
        int i10;
        if (direction < 0.0f) {
            i10 = 21;
        } else {
            i10 = direction > 0.0f ? 22 : 0;
        }
        return new KeyEvent(action, i10);
    }

    KeyEvent i(float direction, int action) {
        int i10;
        if (direction < 0.0f) {
            i10 = 19;
        } else {
            i10 = direction > 0.0f ? 20 : 0;
        }
        return new KeyEvent(action, i10);
    }

    public boolean m(String deviceName) {
        return com.join.mgps.joystick.map.a.b().f(deviceName);
    }

    @Deprecated
    public boolean p(KeyEvent event) {
        try {
            if (event.getDevice() != null && m(event.getDevice().getName())) {
                return false;
            }
            com.join.mgps.joystick.map.c cVarB = com.join.mgps.joystick.map.d.b(0, event);
            t(event, cVarB);
            u(event, cVarB);
            d dVar = this.f71731f;
            if (dVar == null) {
                return true;
            }
            dVar.onKeyMap(this.f71730e, cVarB, event);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return true;
        }
    }

    boolean q(int keyCode, PadKeyEvent event) {
        if (m(event.f())) {
            return false;
        }
        p(s(event));
        return false;
    }

    boolean r(PadMotionEvent event) {
        if (m(event.f())) {
            return false;
        }
        event.y();
        event.A();
        if (event.w() == 200) {
            return o() ? f(event) : e(event);
        }
        if (event.w() == 201) {
            return f(event);
        }
        return false;
    }

    KeyEvent s(PadKeyEvent event) {
        int iY = event.y();
        int iW = event.w();
        event.A();
        event.b();
        event.d();
        return new KeyEvent(iW, iY);
    }

    @Deprecated
    public void v() {
        com.papa.controller.core.d dVar = this.f71732g;
        if (dVar != null) {
            l(dVar.p() != 1 ? 0 : 1, this.f71732g.q());
        } else {
            B();
        }
    }

    public void w(Context ctx, KeyMap.EmuMap emuMap) {
        this.f71726a = ctx;
        this.f71728c = emuMap;
        n();
    }

    void x() {
        com.papa.controller.core.d dVar = this.f71732g;
        if (dVar != null) {
            dVar.v(new C0735a());
        }
    }

    public void y(d l10) {
        this.f71731f = l10;
    }

    public void z(int intensityL, int intensityR) {
        com.papa.controller.core.d dVar = this.f71732g;
        if (dVar != null) {
            dVar.y(intensityL, intensityR);
        }
    }
}

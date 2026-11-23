package com.facebook.drawee.gestures;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    InterfaceC0566a f27354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final float f27355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    boolean f27356c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    boolean f27357d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    long f27358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    float f27359f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    float f27360g;

    /* JADX INFO: renamed from: com.facebook.drawee.gestures.a$a, reason: collision with other inner class name */
    public interface InterfaceC0566a {
        boolean onClick();
    }

    public a(Context context) {
        this.f27355b = ViewConfiguration.get(context).getScaledTouchSlop();
        a();
    }

    public static a c(Context context) {
        return new a(context);
    }

    public void a() {
        this.f27354a = null;
        e();
    }

    public boolean b() {
        return this.f27356c;
    }

    public boolean d(MotionEvent event) {
        InterfaceC0566a interfaceC0566a;
        int action = event.getAction();
        if (action == 0) {
            this.f27356c = true;
            this.f27357d = true;
            this.f27358e = event.getEventTime();
            this.f27359f = event.getX();
            this.f27360g = event.getY();
        } else if (action == 1) {
            this.f27356c = false;
            if (Math.abs(event.getX() - this.f27359f) > this.f27355b || Math.abs(event.getY() - this.f27360g) > this.f27355b) {
                this.f27357d = false;
            }
            if (this.f27357d && event.getEventTime() - this.f27358e <= ViewConfiguration.getLongPressTimeout() && (interfaceC0566a = this.f27354a) != null) {
                interfaceC0566a.onClick();
            }
            this.f27357d = false;
        } else if (action != 2) {
            if (action == 3) {
                this.f27356c = false;
                this.f27357d = false;
            }
        } else if (Math.abs(event.getX() - this.f27359f) > this.f27355b || Math.abs(event.getY() - this.f27360g) > this.f27355b) {
            this.f27357d = false;
        }
        return true;
    }

    public void e() {
        this.f27356c = false;
        this.f27357d = false;
    }

    public void f(InterfaceC0566a clickListener) {
        this.f27354a = clickListener;
    }
}

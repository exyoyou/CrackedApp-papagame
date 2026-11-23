package com.google.android.material.shape;

import android.graphics.Outline;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(22)
class u extends s {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f31718f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f31719g = 0.0f;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            u uVar = u.this;
            if (uVar.f31715c == null || uVar.f31716d.isEmpty()) {
                return;
            }
            u uVar2 = u.this;
            RectF rectF = uVar2.f31716d;
            outline.setRoundRect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom, uVar2.f31719g);
        }
    }

    u(@NonNull View view) {
        o(view);
    }

    private float n() {
        RectF rectF;
        n nVar = this.f31715c;
        if (nVar == null || (rectF = this.f31716d) == null) {
            return 0.0f;
        }
        return nVar.f31632f.a(rectF);
    }

    @DoNotInline
    private void o(View view) {
        view.setOutlineProvider(new a());
    }

    private boolean p() {
        n nVar;
        if (this.f31716d.isEmpty() || (nVar = this.f31715c) == null) {
            return false;
        }
        return nVar.u(this.f31716d);
    }

    private boolean q() {
        n nVar;
        if (!this.f31716d.isEmpty() && (nVar = this.f31715c) != null && this.f31714b && !nVar.u(this.f31716d) && r(this.f31715c)) {
            float fA = this.f31715c.r().a(this.f31716d);
            float fA2 = this.f31715c.t().a(this.f31716d);
            float fA3 = this.f31715c.j().a(this.f31716d);
            float fA4 = this.f31715c.l().a(this.f31716d);
            if (fA == 0.0f && fA3 == 0.0f && fA2 == fA4) {
                RectF rectF = this.f31716d;
                rectF.set(rectF.left - fA2, rectF.top, rectF.right, rectF.bottom);
                this.f31719g = fA2;
                return true;
            }
            if (fA == 0.0f && fA2 == 0.0f && fA3 == fA4) {
                RectF rectF2 = this.f31716d;
                rectF2.set(rectF2.left, rectF2.top - fA3, rectF2.right, rectF2.bottom);
                this.f31719g = fA3;
                return true;
            }
            if (fA2 == 0.0f && fA4 == 0.0f && fA == fA3) {
                RectF rectF3 = this.f31716d;
                rectF3.set(rectF3.left, rectF3.top, rectF3.right + fA, rectF3.bottom);
                this.f31719g = fA;
                return true;
            }
            if (fA3 == 0.0f && fA4 == 0.0f && fA == fA2) {
                RectF rectF4 = this.f31716d;
                rectF4.set(rectF4.left, rectF4.top, rectF4.right, rectF4.bottom + fA);
                this.f31719g = fA;
                return true;
            }
        }
        return false;
    }

    private static boolean r(n nVar) {
        return (nVar.q() instanceof m) && (nVar.s() instanceof m) && (nVar.i() instanceof m) && (nVar.k() instanceof m);
    }

    @Override // com.google.android.material.shape.s
    void b(@NonNull View view) {
        this.f31719g = n();
        this.f31718f = p() || q();
        view.setClipToOutline(!j());
        if (j()) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    @Override // com.google.android.material.shape.s
    boolean j() {
        return !this.f31718f || this.f31713a;
    }

    @VisibleForTesting
    float m() {
        return this.f31719g;
    }
}

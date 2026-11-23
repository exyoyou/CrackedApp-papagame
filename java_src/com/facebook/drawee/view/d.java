package com.facebook.drawee.view;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import s3.b;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class d<DH extends s3.b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    boolean f27378a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    ArrayList<b<DH>> f27379b = new ArrayList<>();

    public void a(int index, b<DH> holder) {
        i.i(holder);
        i.g(index, this.f27379b.size() + 1);
        this.f27379b.add(index, holder);
        if (this.f27378a) {
            holder.l();
        }
    }

    public void b(b<DH> holder) {
        a(this.f27379b.size(), holder);
    }

    public void c() {
        if (this.f27378a) {
            for (int i10 = 0; i10 < this.f27379b.size(); i10++) {
                this.f27379b.get(i10).m();
            }
        }
        this.f27379b.clear();
    }

    public void d(Canvas canvas) {
        for (int i10 = 0; i10 < this.f27379b.size(); i10++) {
            Drawable drawableH = e(i10).h();
            if (drawableH != null) {
                drawableH.draw(canvas);
            }
        }
    }

    public b<DH> e(int index) {
        return this.f27379b.get(index);
    }

    public void f() {
        if (this.f27378a) {
            return;
        }
        this.f27378a = true;
        for (int i10 = 0; i10 < this.f27379b.size(); i10++) {
            this.f27379b.get(i10).l();
        }
    }

    public void g() {
        if (this.f27378a) {
            this.f27378a = false;
            for (int i10 = 0; i10 < this.f27379b.size(); i10++) {
                this.f27379b.get(i10).m();
            }
        }
    }

    public boolean h(MotionEvent event) {
        for (int i10 = 0; i10 < this.f27379b.size(); i10++) {
            if (this.f27379b.get(i10).n(event)) {
                return true;
            }
        }
        return false;
    }

    public void i(int index) {
        b<DH> bVar = this.f27379b.get(index);
        if (this.f27378a) {
            bVar.m();
        }
        this.f27379b.remove(index);
    }

    public int j() {
        return this.f27379b.size();
    }

    public boolean k(Drawable who) {
        for (int i10 = 0; i10 < this.f27379b.size(); i10++) {
            if (who == e(i10).h()) {
                return true;
            }
        }
        return false;
    }
}

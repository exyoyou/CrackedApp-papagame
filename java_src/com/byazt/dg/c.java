package com.byazt.dg;

import android.view.animation.Interpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 186, 20})
public abstract class c<K, A> {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ve<K> f12874n;
    public com.byazt.vc.ve<A> ve;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<InterfaceC0291c> f12873c = new ArrayList(1);
    public boolean uj = false;
    public float tt = 0.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public A f12872a = null;
    public float sp = -1.0f;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f12875x = -1.0f;

    /* JADX INFO: renamed from: com.byazt.dg.c$c, reason: collision with other inner class name */
    public interface InterfaceC0291c {
        void c();
    }

    @com.byazt.zqa.c(c = {0, 1, 186, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_ERROR_EXIT})
    private static final class n<T> implements ve<T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.byazt.vc.c<T> f12876c;
        public float tt = -1.0f;

        public n(List<? extends com.byazt.vc.c<T>> list) {
            this.f12876c = list.get(0);
        }

        @Override // com.byazt.dg.c.ve
        public boolean c() {
            return false;
        }

        @Override // com.byazt.dg.c.ve
        public com.byazt.vc.c<T> tt() {
            return this.f12876c;
        }

        @Override // com.byazt.dg.c.ve
        public float uj() {
            return this.f12876c.uj();
        }

        @Override // com.byazt.dg.c.ve
        public float ve() {
            return this.f12876c.ve();
        }

        @Override // com.byazt.dg.c.ve
        public boolean c(float f10) {
            return !this.f12876c.n();
        }

        @Override // com.byazt.dg.c.ve
        public boolean tt(float f10) {
            if (this.tt == f10) {
                return true;
            }
            this.tt = f10;
            return false;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 186, 175})
    private static final class tt<T> implements ve<T> {
        private tt() {
        }

        @Override // com.byazt.dg.c.ve
        public boolean c() {
            return true;
        }

        @Override // com.byazt.dg.c.ve
        public com.byazt.vc.c<T> tt() {
            throw new IllegalStateException("not implemented");
        }

        @Override // com.byazt.dg.c.ve
        public float uj() {
            return 1.0f;
        }

        @Override // com.byazt.dg.c.ve
        public float ve() {
            return 0.0f;
        }

        @Override // com.byazt.dg.c.ve
        public boolean c(float f10) {
            return false;
        }

        @Override // com.byazt.dg.c.ve
        public boolean tt(float f10) {
            throw new IllegalStateException("not implemented");
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 186, 187})
    private static final class uj<T> implements ve<T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<? extends com.byazt.vc.c<T>> f12877c;
        public com.byazt.vc.c<T> ve = null;
        public float uj = -1.0f;
        public com.byazt.vc.c<T> tt = ve(0.0f);

        public uj(List<? extends com.byazt.vc.c<T>> list) {
            this.f12877c = list;
        }

        private com.byazt.vc.c<T> ve(float f10) {
            List<? extends com.byazt.vc.c<T>> list = this.f12877c;
            com.byazt.vc.c<T> cVar = list.get(list.size() - 1);
            if (f10 >= cVar.ve()) {
                return cVar;
            }
            for (int size = this.f12877c.size() - 2; size > 0; size--) {
                com.byazt.vc.c<T> cVar2 = this.f12877c.get(size);
                if (this.tt != cVar2 && cVar2.c(f10)) {
                    return cVar2;
                }
            }
            return this.f12877c.get(0);
        }

        @Override // com.byazt.dg.c.ve
        public boolean c() {
            return false;
        }

        @Override // com.byazt.dg.c.ve
        public com.byazt.vc.c<T> tt() {
            return this.tt;
        }

        @Override // com.byazt.dg.c.ve
        public float uj() {
            List<? extends com.byazt.vc.c<T>> list = this.f12877c;
            return list.get(list.size() - 1).uj();
        }

        @Override // com.byazt.dg.c.ve
        public boolean c(float f10) {
            if (this.tt.c(f10)) {
                return !this.tt.n();
            }
            this.tt = ve(f10);
            return true;
        }

        @Override // com.byazt.dg.c.ve
        public boolean tt(float f10) {
            com.byazt.vc.c<T> cVar = this.ve;
            com.byazt.vc.c<T> cVar2 = this.tt;
            if (cVar == cVar2 && this.uj == f10) {
                return true;
            }
            this.ve = cVar2;
            this.uj = f10;
            return false;
        }

        @Override // com.byazt.dg.c.ve
        public float ve() {
            return this.f12877c.get(0).ve();
        }
    }

    private interface ve<T> {
        boolean c();

        boolean c(float f10);

        com.byazt.vc.c<T> tt();

        boolean tt(float f10);

        float uj();

        float ve();
    }

    public c(List<? extends com.byazt.vc.c<K>> list) {
        this.f12874n = c(list);
    }

    private float i() {
        if (this.sp == -1.0f) {
            this.sp = this.f12874n.ve();
        }
        return this.sp;
    }

    public float a() {
        if (this.f12875x == -1.0f) {
            this.f12875x = this.f12874n.uj();
        }
        return this.f12875x;
    }

    public abstract A c(com.byazt.vc.c<K> cVar, float f10);

    public void c() {
        this.uj = true;
    }

    public float n() {
        com.byazt.vc.c<K> cVarVe = ve();
        if (cVarVe == null || cVarVe.n()) {
            return 0.0f;
        }
        return cVarVe.ve.getInterpolation(uj());
    }

    public A sp() {
        float fUj = uj();
        if (this.ve == null && this.f12874n.tt(fUj)) {
            return this.f12872a;
        }
        com.byazt.vc.c<K> cVarVe = ve();
        Interpolator interpolator = cVarVe.uj;
        A aC = (interpolator == null || cVarVe.f21169n == null) ? c(cVarVe, n()) : c(cVarVe, fUj, interpolator.getInterpolation(fUj), cVarVe.f21169n.getInterpolation(fUj));
        this.f12872a = aC;
        return aC;
    }

    public void tt() {
        for (int i10 = 0; i10 < this.f12873c.size(); i10++) {
            this.f12873c.get(i10).c();
        }
    }

    public float uj() {
        if (this.uj) {
            return 0.0f;
        }
        com.byazt.vc.c<K> cVarVe = ve();
        if (cVarVe.n()) {
            return 0.0f;
        }
        return (this.tt - cVarVe.ve()) / (cVarVe.uj() - cVarVe.ve());
    }

    public com.byazt.vc.c<K> ve() {
        com.byazt.ga.n.c("BaseKeyframeAnimation#getCurrentKeyframe");
        com.byazt.vc.c<K> cVarTt = this.f12874n.tt();
        com.byazt.ga.n.tt("BaseKeyframeAnimation#getCurrentKeyframe");
        return cVarTt;
    }

    public float x() {
        return this.tt;
    }

    public void c(InterfaceC0291c interfaceC0291c) {
        this.f12873c.add(interfaceC0291c);
    }

    public void c(float f10) {
        if (this.f12874n.c()) {
            return;
        }
        if (f10 < i()) {
            f10 = i();
        } else if (f10 > a()) {
            f10 = a();
        }
        if (f10 == this.tt) {
            return;
        }
        this.tt = f10;
        if (this.f12874n.c(f10)) {
            tt();
        }
    }

    public A c(com.byazt.vc.c<K> cVar, float f10, float f11, float f12) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    private static <T> ve<T> c(List<? extends com.byazt.vc.c<T>> list) {
        if (list.isEmpty()) {
            return new tt();
        }
        if (list.size() == 1) {
            return new n(list);
        }
        return new uj(list);
    }
}

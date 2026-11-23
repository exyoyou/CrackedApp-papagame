package me.relex.circleindicator;

import androidx.annotation.AnimatorRes;
import androidx.annotation.DrawableRes;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @DrawableRes
    int f94277g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f94271a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f94272b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f94273c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @AnimatorRes
    int f94274d = R.animator.scale_with_alpha;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @AnimatorRes
    int f94275e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @DrawableRes
    int f94276f = R.drawable.white_radius;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f94278h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f94279i = 17;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b f94280a = new b();

        public a a(@AnimatorRes int i10) {
            this.f94280a.f94274d = i10;
            return this;
        }

        public a b(@AnimatorRes int i10) {
            this.f94280a.f94275e = i10;
            return this;
        }

        public b c() {
            return this.f94280a;
        }

        public a d(@DrawableRes int i10) {
            this.f94280a.f94276f = i10;
            return this;
        }

        public a e(@DrawableRes int i10) {
            this.f94280a.f94277g = i10;
            return this;
        }

        public a f(int i10) {
            this.f94280a.f94279i = i10;
            return this;
        }

        public a g(int i10) {
            this.f94280a.f94272b = i10;
            return this;
        }

        public a h(int i10) {
            this.f94280a.f94273c = i10;
            return this;
        }

        public a i(int i10) {
            this.f94280a.f94278h = i10;
            return this;
        }

        public a j(int i10) {
            this.f94280a.f94271a = i10;
            return this;
        }
    }

    b() {
    }
}

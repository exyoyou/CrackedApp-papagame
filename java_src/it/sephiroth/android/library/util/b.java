package it.sephiroth.android.library.util;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f91815a = "ViewHelper";

    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected View f91816a;

        protected a(View view) {
            this.f91816a = view;
        }

        public abstract boolean a();

        public abstract void b(Runnable action);

        public abstract void c(int value);
    }

    /* JADX INFO: renamed from: it.sephiroth.android.library.util.b$b, reason: collision with other inner class name */
    public static class C1193b extends a {
        public C1193b(View view) {
            super(view);
        }

        @Override // it.sephiroth.android.library.util.b.a
        public boolean a() {
            return false;
        }

        @Override // it.sephiroth.android.library.util.b.a
        public void b(Runnable action) {
            this.f91816a.post(action);
        }

        @Override // it.sephiroth.android.library.util.b.a
        public void c(int value) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("setScrollX: ");
            sb2.append(value);
            View view = this.f91816a;
            view.scrollTo(value, view.getScrollY());
        }
    }

    public static final a a(View view) {
        return new sb.a(view);
    }
}

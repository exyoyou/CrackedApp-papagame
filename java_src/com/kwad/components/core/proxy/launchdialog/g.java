package com.kwad.components.core.proxy.launchdialog;

import androidx.lifecycle.Lifecycle;

/* JADX INFO: loaded from: classes2.dex */
public interface g {

    public static class a implements g {
        private long ajn;

        public a(long j10) {
            this.ajn = j10;
        }

        public final boolean Q(long j10) {
            return this.ajn > 0 && System.currentTimeMillis() - j10 >= this.ajn;
        }

        public final String toString() {
            return "DurationMoreThanItem{mDuration=" + this.ajn + '}';
        }
    }

    public static class b implements g {
        private Lifecycle.Event ajg;

        public b(Lifecycle.Event event) {
            this.ajg = event;
        }

        public final boolean b(Lifecycle.Event event) {
            return this.ajg.equals(event);
        }

        public final String toString() {
            return "PageEventItem{mEvent=" + this.ajg + '}';
        }
    }
}

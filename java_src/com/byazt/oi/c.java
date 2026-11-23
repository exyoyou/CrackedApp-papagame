package com.byazt.oi;

import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1933, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c f17867c;
    public long tt;
    public final Queue<Long> uj = new LinkedList();
    public long ve;

    private c() {
    }

    public static c c() {
        if (f17867c == null) {
            synchronized (c.class) {
                if (f17867c == null) {
                    f17867c = new c();
                }
            }
        }
        return f17867c;
    }

    public boolean tt() {
        synchronized (c.class) {
            if (this.tt > 0 && this.ve > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (this.uj.size() >= this.tt) {
                    while (this.uj.size() > this.tt) {
                        this.uj.poll();
                    }
                    if (Math.abs(jCurrentTimeMillis - this.uj.peek().longValue()) <= this.ve) {
                        return true;
                    }
                    this.uj.poll();
                    this.uj.offer(Long.valueOf(jCurrentTimeMillis));
                } else {
                    this.uj.offer(Long.valueOf(jCurrentTimeMillis));
                }
                return false;
            }
            return false;
        }
    }

    public void c(long j10, long j11) {
        synchronized (c.class) {
            if (this.tt != j10 || this.ve != j11) {
                this.tt = j10;
                this.ve = j11;
                this.uj.clear();
            }
        }
    }
}

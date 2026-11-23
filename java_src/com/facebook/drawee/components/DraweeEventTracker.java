package com.facebook.drawee.components;

import com.facebook.infer.annotation.Nullsafe;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class DraweeEventTracker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f27044b = 20;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final DraweeEventTracker f27045c = new DraweeEventTracker();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f27046d = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Queue<Event> f27047a = new ArrayBlockingQueue(20);

    public enum Event {
        ON_SET_HIERARCHY,
        ON_CLEAR_HIERARCHY,
        ON_SET_CONTROLLER,
        ON_CLEAR_OLD_CONTROLLER,
        ON_CLEAR_CONTROLLER,
        ON_INIT_CONTROLLER,
        ON_ATTACH_CONTROLLER,
        ON_DETACH_CONTROLLER,
        ON_RELEASE_CONTROLLER,
        ON_DATASOURCE_SUBMIT,
        ON_DATASOURCE_RESULT,
        ON_DATASOURCE_RESULT_INT,
        ON_DATASOURCE_FAILURE,
        ON_DATASOURCE_FAILURE_INT,
        ON_HOLDER_ATTACH,
        ON_HOLDER_DETACH,
        ON_DRAWABLE_SHOW,
        ON_DRAWABLE_HIDE,
        ON_ACTIVITY_START,
        ON_ACTIVITY_STOP,
        ON_RUN_CLEAR_CONTROLLER,
        ON_SCHEDULE_CLEAR_CONTROLLER,
        ON_SAME_CONTROLLER_SKIPPED,
        ON_SUBMIT_CACHE_HIT
    }

    private DraweeEventTracker() {
    }

    public static void a() {
        f27046d = false;
    }

    public static DraweeEventTracker b() {
        return f27046d ? new DraweeEventTracker() : f27045c;
    }

    public void c(Event event) {
        if (f27046d) {
            if (this.f27047a.size() + 1 > 20) {
                this.f27047a.poll();
            }
            this.f27047a.add(event);
        }
    }

    public String toString() {
        return this.f27047a.toString();
    }
}

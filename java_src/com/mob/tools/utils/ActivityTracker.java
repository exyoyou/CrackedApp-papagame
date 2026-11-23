package com.mob.tools.utils;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityTracker implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ActivityTracker f75528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f75529b;

    private interface EachTracker extends PublicMemberKeeper {
        void each(Tracker tracker);
    }

    public interface Tracker extends PublicMemberKeeper {
        void onCreated(Activity activity, Bundle bundle);

        void onDestroyed(Activity activity);

        void onPaused(Activity activity);

        void onResumed(Activity activity);

        void onSaveInstanceState(Activity activity, Bundle bundle);

        void onStarted(Activity activity);

        void onStopped(Activity activity);
    }

    private static class a implements cn.fly.tools.utils.ActivityTracker.Tracker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Tracker f75530a;

        public a(Tracker tracker) {
            this.f75530a = tracker;
        }

        public static final cn.fly.tools.utils.ActivityTracker.Tracker a(Tracker tracker) {
            if (tracker != null) {
                return new a(tracker);
            }
            return null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return Objects.equals(this.f75530a, ((a) obj).f75530a);
        }

        public int hashCode() {
            Tracker tracker = this.f75530a;
            return tracker != null ? tracker.hashCode() : super.hashCode();
        }

        @Override // cn.fly.tools.utils.ActivityTracker.Tracker
        public void onCreated(Activity activity, Bundle bundle) {
            this.f75530a.onCreated(activity, bundle);
        }

        @Override // cn.fly.tools.utils.ActivityTracker.Tracker
        public void onDestroyed(Activity activity) {
            this.f75530a.onDestroyed(activity);
        }

        @Override // cn.fly.tools.utils.ActivityTracker.Tracker
        public void onPaused(Activity activity) {
            this.f75530a.onPaused(activity);
        }

        @Override // cn.fly.tools.utils.ActivityTracker.Tracker
        public void onResumed(Activity activity) {
            this.f75530a.onResumed(activity);
        }

        @Override // cn.fly.tools.utils.ActivityTracker.Tracker
        public void onSaveInstanceState(Activity activity, Bundle bundle) {
            this.f75530a.onSaveInstanceState(activity, bundle);
        }

        @Override // cn.fly.tools.utils.ActivityTracker.Tracker
        public void onStarted(Activity activity) {
            this.f75530a.onStarted(activity);
        }

        @Override // cn.fly.tools.utils.ActivityTracker.Tracker
        public void onStopped(Activity activity) {
            this.f75530a.onStopped(activity);
        }
    }

    public ActivityTracker(Context context) {
        this.f75529b = context;
    }

    public static synchronized ActivityTracker getInstance(Context context) {
        if (f75528a == null) {
            f75528a = new ActivityTracker(context);
        }
        return f75528a;
    }

    public void addTracker(Tracker tracker) {
        cn.fly.tools.utils.ActivityTracker.getInstance(this.f75529b).addTracker(a.a(tracker));
    }

    public void removeTracker(Tracker tracker) {
        cn.fly.tools.utils.ActivityTracker.getInstance(this.f75529b).removeTracker(a.a(tracker));
    }
}

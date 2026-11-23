package com.haima.hmcp.utils;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class CacheUtil {
    private static final String TAG = "CacheUtil";
    private static final Map<String, Entity> mCaches = new HashMap();
    private static final ScheduledExecutorService mExecutor = Executors.newSingleThreadScheduledExecutor();

    public interface Listener {

        public enum Status {
            CANCELED,
            EXPIRED
        }

        void onCacheRemove(String str, Object obj, Status status);
    }

    public static synchronized Object get(String str) {
        Entity entity;
        LogUtils.d(TAG, "key:" + str);
        entity = mCaches.get(str);
        return entity == null ? null : entity.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$put$0(String str) {
        LogUtils.d(TAG, "remove key:" + str);
        remove(str, Listener.Status.EXPIRED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$put$1(String str) {
        LogUtils.d(TAG, "remove key:" + str);
        remove(str, Listener.Status.EXPIRED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$put$2(String str) {
        LogUtils.d(TAG, "remove key:" + str);
        remove(str, Listener.Status.EXPIRED);
    }

    public static synchronized void put(String str, Object obj) {
        LogUtils.d(TAG, "key:" + str);
        put(str, obj, 0L);
    }

    public static synchronized Object remove(String str) {
        LogUtils.d(TAG, "key:" + str);
        Entity entityRemove = mCaches.remove(str);
        if (entityRemove == null) {
            return null;
        }
        Future future = entityRemove.getFuture();
        if (future != null) {
            future.cancel(true);
            if (entityRemove.listener != null) {
                entityRemove.listener.onCacheRemove(str, entityRemove.getValue(), Listener.Status.CANCELED);
            }
        }
        return entityRemove.getValue();
    }

    public static synchronized void removeByTag(String str) {
        LogUtils.d(TAG, "key:" + str);
        for (Map.Entry<String, Entity> entry : mCaches.entrySet()) {
            if (entry != null) {
                String key = entry.getKey();
                Entity value = entry.getValue();
                if (!TextUtils.isEmpty(str) && str.equals(value.getTag())) {
                    remove(key, Listener.Status.CANCELED);
                }
            }
        }
    }

    public static synchronized int size() {
        return mCaches.size();
    }

    public static class Entity {
        private Future future;
        private Listener listener;
        private String tag;
        private Object value;

        public Entity(Object obj, Future future) {
            this.value = obj;
            this.future = future;
        }

        public Future getFuture() {
            return this.future;
        }

        public Listener getListener() {
            return this.listener;
        }

        public String getTag() {
            return this.tag;
        }

        public Object getValue() {
            return this.value;
        }

        public void setListener(Listener listener) {
            this.listener = listener;
        }

        public void setTag(String str) {
            this.tag = str;
        }

        public Entity(Object obj, Future future, Listener listener) {
            this.value = obj;
            this.future = future;
            this.listener = listener;
        }
    }

    public static synchronized <T> T get(String str, Class<T> cls) {
        LogUtils.d(TAG, "key:" + str);
        return cls.cast(get(str));
    }

    public static synchronized void put(final String str, Object obj, long j10) {
        LogUtils.d(TAG, "key:" + str + ",expire:" + j10);
        remove(str, Listener.Status.CANCELED);
        if (j10 > 0) {
            mCaches.put(str, new Entity(obj, mExecutor.schedule(new Runnable() { // from class: com.haima.hmcp.utils.c
                @Override // java.lang.Runnable
                public final void run() {
                    CacheUtil.lambda$put$0(str);
                }
            }, j10, TimeUnit.MILLISECONDS)));
        } else {
            mCaches.put(str, new Entity(obj, null));
        }
    }

    public static synchronized Object remove(String str, Listener.Status status) {
        LogUtils.d(TAG, "key:" + str);
        Entity entityRemove = mCaches.remove(str);
        if (entityRemove == null) {
            return null;
        }
        Future future = entityRemove.getFuture();
        if (future != null) {
            future.cancel(true);
            if (entityRemove.listener != null) {
                entityRemove.listener.onCacheRemove(str, entityRemove.getValue(), status);
            }
        }
        return entityRemove.getValue();
    }

    public static synchronized void put(final String str, Object obj, long j10, String str2, Listener listener) {
        LogUtils.d(TAG, "key:" + str + ",expire:" + j10);
        remove(str, Listener.Status.CANCELED);
        if (j10 > 0) {
            Entity entity = new Entity(obj, mExecutor.schedule(new Runnable() { // from class: com.haima.hmcp.utils.a
                @Override // java.lang.Runnable
                public final void run() {
                    CacheUtil.lambda$put$1(str);
                }
            }, j10, TimeUnit.MILLISECONDS));
            entity.listener = listener;
            entity.tag = str2;
            mCaches.put(str, entity);
        } else {
            mCaches.put(str, new Entity(obj, null));
        }
    }

    public static synchronized void put(final String str, Object obj, long j10, Listener listener) {
        LogUtils.d(TAG, "key:" + str + ",expire:" + j10);
        remove(str, Listener.Status.CANCELED);
        if (j10 > 0) {
            Entity entity = new Entity(obj, mExecutor.schedule(new Runnable() { // from class: com.haima.hmcp.utils.b
                @Override // java.lang.Runnable
                public final void run() {
                    CacheUtil.lambda$put$2(str);
                }
            }, j10, TimeUnit.MILLISECONDS));
            entity.listener = listener;
            mCaches.put(str, entity);
        } else {
            mCaches.put(str, new Entity(obj, null));
        }
    }
}

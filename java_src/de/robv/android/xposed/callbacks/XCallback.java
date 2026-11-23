package de.robv.android.xposed.callbacks;

import android.os.Bundle;
import de.robv.android.xposed.XposedBridge;
import java.io.Serializable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class XCallback implements Comparable<XCallback> {
    public static final int PRIORITY_DEFAULT = 50;
    public static final int PRIORITY_HIGHEST = 10000;
    public static final int PRIORITY_LOWEST = -10000;
    public final int priority;

    @Deprecated
    public XCallback() {
        this.priority = 50;
    }

    public static void callAll(Param param) {
        if (param.callbacks == null) {
            throw new IllegalStateException("This object was not created for use with callAll");
        }
        int i10 = 0;
        while (true) {
            Object[] objArr = param.callbacks;
            if (i10 >= objArr.length) {
                return;
            }
            try {
                ((XCallback) objArr[i10]).call(param);
            } catch (Throwable th) {
                XposedBridge.log(th);
            }
            i10++;
        }
    }

    protected void call(Param param) throws Throwable {
    }

    public static abstract class Param {
        public final Object[] callbacks;
        private Bundle extra;

        private static class SerializeWrapper implements Serializable {
            private static final long serialVersionUID = 1;
            private final Object object;

            public SerializeWrapper(Object obj) {
                this.object = obj;
            }
        }

        @Deprecated
        protected Param() {
            this.callbacks = null;
        }

        public synchronized Bundle getExtra() {
            if (this.extra == null) {
                this.extra = new Bundle();
            }
            return this.extra;
        }

        public Object getObjectExtra(String str) {
            Serializable serializable = getExtra().getSerializable(str);
            if (serializable instanceof SerializeWrapper) {
                return ((SerializeWrapper) serializable).object;
            }
            return null;
        }

        public void setObjectExtra(String str, Object obj) {
            getExtra().putSerializable(str, new SerializeWrapper(obj));
        }

        protected Param(XposedBridge.CopyOnWriteSortedSet<? extends XCallback> copyOnWriteSortedSet) {
            this.callbacks = copyOnWriteSortedSet.getSnapshot();
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(XCallback xCallback) {
        if (this == xCallback) {
            return 0;
        }
        int i10 = xCallback.priority;
        int i11 = this.priority;
        if (i10 != i11) {
            return i10 - i11;
        }
        return System.identityHashCode(this) < System.identityHashCode(xCallback) ? -1 : 1;
    }

    public XCallback(int i10) {
        this.priority = i10;
    }
}

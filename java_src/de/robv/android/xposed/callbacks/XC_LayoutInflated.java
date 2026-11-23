package de.robv.android.xposed.callbacks;

import android.view.View;
import de.robv.android.xposed.XposedBridge;

/* JADX INFO: loaded from: classes8.dex */
public abstract class XC_LayoutInflated extends XCallback {

    public static final class LayoutInflatedParam extends XCallback.Param {
        public View view;

        public LayoutInflatedParam(XposedBridge.CopyOnWriteSortedSet<XC_LayoutInflated> copyOnWriteSortedSet) {
            super(copyOnWriteSortedSet);
        }
    }

    public class Unhook implements IXUnhook<XC_LayoutInflated> {

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private final int f90861id;
        private final String resDir;

        public Unhook(String str, int i10) {
            this.resDir = str;
            this.f90861id = i10;
        }

        public int getId() {
            return this.f90861id;
        }

        @Override // de.robv.android.xposed.callbacks.IXUnhook
        public void unhook() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // de.robv.android.xposed.callbacks.IXUnhook
        public XC_LayoutInflated getCallback() {
            return XC_LayoutInflated.this;
        }
    }

    public XC_LayoutInflated() {
    }

    @Override // de.robv.android.xposed.callbacks.XCallback
    protected void call(XCallback.Param param) throws Throwable {
        if (param instanceof LayoutInflatedParam) {
            handleLayoutInflated((LayoutInflatedParam) param);
        }
    }

    public abstract void handleLayoutInflated(LayoutInflatedParam layoutInflatedParam) throws Throwable;

    public XC_LayoutInflated(int i10) {
        super(i10);
    }
}

package org.cocos2dx.lib;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes10.dex */
public class GameControllerAdapter {
    private static ArrayList<Runnable> sRunnableFrameStartList;

    public static void addRunnableToFrameStartList(Runnable runnable) {
        if (sRunnableFrameStartList == null) {
            sRunnableFrameStartList = new ArrayList<>();
        }
        sRunnableFrameStartList.add(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeControllerAxisEvent(String str, int i10, int i11, float f10, boolean z10);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeControllerButtonEvent(String str, int i10, int i11, boolean z10, float f10, boolean z11);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeControllerConnected(String str, int i10);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeControllerDisconnected(String str, int i10);

    public static void onAxisEvent(final String str, final int i10, final int i11, final float f10, final boolean z10) {
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.GameControllerAdapter.4
            @Override // java.lang.Runnable
            public void run() {
                GameControllerAdapter.nativeControllerAxisEvent(str, i10, i11, f10, z10);
            }
        });
    }

    public static void onButtonEvent(final String str, final int i10, final int i11, final boolean z10, final float f10, final boolean z11) {
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.GameControllerAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                GameControllerAdapter.nativeControllerButtonEvent(str, i10, i11, z10, f10, z11);
            }
        });
    }

    public static void onConnected(final String str, final int i10) {
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.GameControllerAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                GameControllerAdapter.nativeControllerConnected(str, i10);
            }
        });
    }

    public static void onDisconnected(final String str, final int i10) {
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.GameControllerAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                GameControllerAdapter.nativeControllerDisconnected(str, i10);
            }
        });
    }

    public static void onDrawFrameStart() {
        ArrayList<Runnable> arrayList = sRunnableFrameStartList;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                sRunnableFrameStartList.get(i10).run();
            }
        }
    }

    public static void removeRunnableFromFrameStartList(Runnable runnable) {
        ArrayList<Runnable> arrayList = sRunnableFrameStartList;
        if (arrayList != null) {
            arrayList.remove(runnable);
        }
    }
}

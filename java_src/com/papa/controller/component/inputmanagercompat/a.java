package com.papa.controller.component.inputmanagercompat;

import android.content.Context;
import android.os.Handler;
import android.view.InputDevice;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface a {

    /* JADX INFO: renamed from: com.papa.controller.component.inputmanagercompat.a$a, reason: collision with other inner class name */
    public static class C0992a {
        public static a a(Context context) {
            return new com.papa.controller.component.inputmanagercompat.b(context);
        }
    }

    public interface b {
        void onInputDeviceAdded(int i10);

        void onInputDeviceChanged(int i10);

        void onInputDeviceRemoved(int i10);
    }

    void a(b bVar, Handler handler);

    InputDevice b(int i10);

    void c(b bVar);

    int[] d();

    void onGenericMotionEvent(MotionEvent motionEvent);

    void onPause();

    void onResume();
}

package com.papa.controller.component.inputmanagercompat;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.input.InputManager;
import android.os.Handler;
import android.view.InputDevice;
import android.view.MotionEvent;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public class b implements com.papa.controller.component.inputmanagercompat.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputManager f76488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<com.papa.controller.component.inputmanagercompat.a.b, a> f76489b = new HashMap();

    static class a implements InputManager.InputDeviceListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final com.papa.controller.component.inputmanagercompat.a.b f76490a;

        public a(com.papa.controller.component.inputmanagercompat.a.b bVar) {
            this.f76490a = bVar;
        }

        @Override // android.hardware.input.InputManager.InputDeviceListener
        public void onInputDeviceAdded(int i10) {
            this.f76490a.onInputDeviceAdded(i10);
        }

        @Override // android.hardware.input.InputManager.InputDeviceListener
        public void onInputDeviceChanged(int i10) {
            this.f76490a.onInputDeviceChanged(i10);
        }

        @Override // android.hardware.input.InputManager.InputDeviceListener
        public void onInputDeviceRemoved(int i10) {
            this.f76490a.onInputDeviceRemoved(i10);
        }
    }

    public b(Context context) {
        this.f76488a = (InputManager) context.getSystemService("input");
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void a(com.papa.controller.component.inputmanagercompat.a.b bVar, Handler handler) {
        a aVar = new a(bVar);
        this.f76488a.registerInputDeviceListener(aVar, handler);
        this.f76489b.put(bVar, aVar);
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public InputDevice b(int i10) {
        return this.f76488a.getInputDevice(i10);
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void c(com.papa.controller.component.inputmanagercompat.a.b bVar) {
        a aVarRemove = this.f76489b.remove(bVar);
        if (aVarRemove != null) {
            this.f76488a.unregisterInputDeviceListener(aVarRemove);
        }
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public int[] d() {
        return this.f76488a.getInputDeviceIds();
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void onGenericMotionEvent(MotionEvent motionEvent) {
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void onPause() {
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void onResume() {
    }
}

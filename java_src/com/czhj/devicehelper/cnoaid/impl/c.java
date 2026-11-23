package com.czhj.devicehelper.cnoaid.impl;

import android.app.KeyguardManager;
import android.content.Context;
import java.util.Objects;

/* JADX INFO: loaded from: classes9.dex */
public class c implements com.czhj.devicehelper.cnoaid.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f25287a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final KeyguardManager f25288b;

    public c(Context context) {
        this.f25287a = context;
        this.f25288b = (KeyguardManager) context.getSystemService("keyguard");
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public void a(com.czhj.devicehelper.cnoaid.c cVar) {
        if (this.f25287a == null || cVar == null) {
            return;
        }
        KeyguardManager keyguardManager = this.f25288b;
        if (keyguardManager == null) {
            cVar.a(new com.czhj.devicehelper.cnoaid.f("KeyguardManager not found"));
            return;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("obtainOaid", new Class[0]).invoke(this.f25288b, new Object[0]);
            if (objInvoke == null) {
                throw new com.czhj.devicehelper.cnoaid.f("OAID obtain failed");
            }
            String string = objInvoke.toString();
            com.czhj.devicehelper.cnoaid.g.a("OAID obtain success: " + string);
            cVar.a(string);
        } catch (Exception e10) {
            com.czhj.devicehelper.cnoaid.g.a(e10);
        }
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public boolean a() {
        KeyguardManager keyguardManager;
        if (this.f25287a == null || (keyguardManager = this.f25288b) == null) {
            return false;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("isSupported", new Class[0]).invoke(this.f25288b, new Object[0]);
            Objects.requireNonNull(objInvoke);
            return ((Boolean) objInvoke).booleanValue();
        } catch (Exception e10) {
            com.czhj.devicehelper.cnoaid.g.a(e10);
            return false;
        }
    }
}

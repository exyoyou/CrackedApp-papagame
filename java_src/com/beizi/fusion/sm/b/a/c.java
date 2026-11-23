package com.beizi.fusion.sm.b.a;

import android.app.KeyguardManager;
import android.content.Context;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public class c implements com.beizi.fusion.sm.b.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f10290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final KeyguardManager f10291b;

    public c(Context context) {
        this.f10290a = context;
        this.f10291b = (KeyguardManager) context.getSystemService("keyguard");
    }

    @Override // com.beizi.fusion.sm.b.c
    public boolean a() {
        KeyguardManager keyguardManager;
        if (this.f10290a == null || (keyguardManager = this.f10291b) == null) {
            return false;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("isSupported", new Class[0]).invoke(this.f10291b, new Object[0]);
            Objects.requireNonNull(objInvoke);
            return ((Boolean) objInvoke).booleanValue();
        } catch (Exception e10) {
            com.beizi.fusion.sm.b.e.a(e10);
            return false;
        }
    }

    @Override // com.beizi.fusion.sm.b.c
    public void a(com.beizi.fusion.sm.b.b bVar) {
        if (this.f10290a == null || bVar == null) {
            return;
        }
        KeyguardManager keyguardManager = this.f10291b;
        if (keyguardManager == null) {
            bVar.a(new com.beizi.fusion.sm.b.d("KeyguardManager not found"));
            return;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("obtainOaid", new Class[0]).invoke(this.f10291b, new Object[0]);
            if (objInvoke != null) {
                String string = objInvoke.toString();
                com.beizi.fusion.sm.b.e.a("OAID obtain success: " + string);
                bVar.a(string);
                return;
            }
            throw new com.beizi.fusion.sm.b.d("OAID obtain failed");
        } catch (Exception e10) {
            com.beizi.fusion.sm.b.e.a(e10);
        }
    }
}

package com.efs.sdk.base.core.config.a;

import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import com.efs.sdk.base.core.c.f;
import com.efs.sdk.base.core.config.GlobalEnvStruct;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.newsharedpreferences.SharedPreferencesUtils;
import com.join.mgps.dto.Constant;
import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class e implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile SharedPreferences f26322a;

    static void b() {
        File fileA = com.efs.sdk.base.core.util.a.a(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid());
        if (fileA.exists()) {
            fileA.delete();
        }
    }

    private void d() {
        if (this.f26322a == null) {
            synchronized (com.efs.sdk.base.core.c.b.class) {
                if (this.f26322a == null) {
                    this.f26322a = SharedPreferencesUtils.getSharedPreferences(ControllerCenter.getGlobalEnvStruct().mAppContext, com.efs.sdk.base.core.util.b.b.a(("config_" + ControllerCenter.getGlobalEnvStruct().getAppid().toLowerCase()).getBytes()));
                    this.f26322a.registerOnSharedPreferenceChangeListener(this);
                }
            }
        }
    }

    final boolean a(@NonNull b bVar) {
        c();
        if (this.f26322a == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = this.f26322a.edit();
        editorEdit.clear();
        editorEdit.putInt("cver", bVar.f26302a);
        editorEdit.putLong("last_refresh_time", System.currentTimeMillis());
        for (Map.Entry<String, String> entry : bVar.f26308g.entrySet()) {
            editorEdit.putString(entry.getKey(), entry.getValue());
        }
        editorEdit.putString(Constant.MD5, bVar.f26303b);
        editorEdit.apply();
        return true;
    }

    final void c() {
        try {
            d();
        } catch (Throwable th) {
            Log.e("efs.config", "init sharedpreferences error", th);
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (f.a.f26281a.a()) {
            return;
        }
        c.a().b();
    }

    static boolean a() {
        GlobalEnvStruct globalEnvStruct = ControllerCenter.getGlobalEnvStruct();
        File fileB = com.efs.sdk.base.core.util.a.b(globalEnvStruct.mAppContext, globalEnvStruct.getAppid());
        if (!fileB.exists()) {
            return false;
        }
        com.efs.sdk.base.core.util.b.b(fileB);
        return true;
    }
}

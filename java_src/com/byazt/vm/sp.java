package com.byazt.vm;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 165, 91})
public final class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static tt<m> f21253c = new tt<m>() { // from class: com.byazt.vm.sp.1
        @Override // com.byazt.vm.tt
        /* JADX INFO: renamed from: ve, reason: merged with bridge method [inline-methods] */
        public m c(Object... objArr) {
            return new m((Context) objArr[0]);
        }
    };

    @AnyThread
    public static void c(@NonNull Context context) {
        f21253c.tt(context).tt();
    }

    @WorkerThread
    public static String c(SharedPreferences sharedPreferences) {
        SystemClock.elapsedRealtime();
        return uj.c(sharedPreferences);
    }

    @Nullable
    @WorkerThread
    public static Map<String, String> c(@NonNull Context context, @NonNull SharedPreferences sharedPreferences) {
        SystemClock.elapsedRealtime();
        m mVarTt = f21253c.tt(context);
        return mVarTt.c(mVarTt.c() instanceof t ? 200 : 100);
    }

    @Nullable
    @AnyThread
    public static String c(@Nullable JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optString("id", null);
        }
        return null;
    }

    @AnyThread
    public static void c(@Nullable com.byazt.gj.n nVar) {
        m.c(nVar);
    }
}

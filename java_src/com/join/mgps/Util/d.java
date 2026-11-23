package com.join.mgps.Util;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import com.xinzhu.overmind.Overmind;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class d {
    public static final void b(@NotNull Context context, @NotNull final Function1<? super Boolean, Unit> callback) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (Build.VERSION.SDK_INT < 34 || !(context instanceof ComponentActivity)) {
            callback.invoke(Boolean.TRUE);
            return;
        }
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult = ((ComponentActivity) context).registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.join.mgps.Util.c
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                d.c(callback, (ActivityResult) obj);
            }
        });
        Intent intent = new Intent();
        intent.setClassName(Overmind.getPluginPkg(), "com.xinzhu.demoapp.stub.EmptyActivity");
        activityResultLauncherRegisterForActivityResult.launch(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Function1 function1, ActivityResult activityResult) {
        function1.invoke(Boolean.valueOf(activityResult.getResultCode() == -1));
    }
}

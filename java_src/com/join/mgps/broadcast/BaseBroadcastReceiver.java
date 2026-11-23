package com.join.mgps.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.haima.hmcp.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0016\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011J\u001f\u0010\u0012\u001a\u00020\u00112\u0012\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00150\u0014\"\u00020\u0015¢\u0006\u0002\u0010\u0016J\u000e\u0010\u0017\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0018"}, d2 = {"Lcom/join/mgps/broadcast/BaseBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "isRegister", "", "()Z", "setRegister", "(Z)V", "onReceive", "", "context", "Landroid/content/Context;", Constants.WS_MESSAGE_TYPE_INTENT, "Landroid/content/Intent;", "register", "intentFilter", "Landroid/content/IntentFilter;", "getIntentFilter", "actions", "", "", "([Ljava/lang/String;)Landroid/content/IntentFilter;", "unregister", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBaseBroadcastReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseBroadcastReceiver.kt\ncom/join/mgps/broadcast/BaseBroadcastReceiver\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,41:1\n13472#2,2:42\n*S KotlinDebug\n*F\n+ 1 BaseBroadcastReceiver.kt\ncom/join/mgps/broadcast/BaseBroadcastReceiver\n*L\n27#1:42,2\n*E\n"})
public class BaseBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f64145a;

    @NotNull
    public final IntentFilter a(@NotNull String... actions) {
        Intrinsics.checkNotNullParameter(actions, "actions");
        IntentFilter intentFilter = new IntentFilter();
        for (String str : actions) {
            intentFilter.addAction(str);
        }
        return intentFilter;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public boolean getF64145a() {
        return this.f64145a;
    }

    public final void c(@NotNull Context context, @NotNull IntentFilter intentFilter) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intentFilter, "intentFilter");
        try {
            if (getF64145a()) {
                return;
            }
            context.registerReceiver(this, intentFilter);
            d(true);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void d(boolean z10) {
        this.f64145a = z10;
    }

    public final void e(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            if (getF64145a()) {
                d(false);
                context.unregisterReceiver(this);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@Nullable Context context, @Nullable Intent intent) {
    }
}

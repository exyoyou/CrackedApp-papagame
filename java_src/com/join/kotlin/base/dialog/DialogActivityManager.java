package com.join.kotlin.base.dialog;

import android.content.Intent;
import com.alipay.sdk.authjs.a;
import com.join.kotlin.base.dialog.DialogActivityManager;
import com.join.kotlin.base.dialog.callback.IDialogActivityCallback;
import com.join.mgps.base.dialog.BaseDialogActivity;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u000f\u001a\u00020\u00102\u000e\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\rJ\u0010\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\fJ\u0012\u0010\u0018\u001a\u0004\u0018\u00010\r2\b\u0010\u0017\u001a\u0004\u0018\u00010\fR\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R*\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bj\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/join/kotlin/base/dialog/DialogActivityManager;", "", "<init>", "()V", "mNextLocalRequestCode", "Ljava/util/concurrent/atomic/AtomicInteger;", "getMNextLocalRequestCode", "()Ljava/util/concurrent/atomic/AtomicInteger;", "mNextLocalRequestCode$delegate", "Lkotlin/Lazy;", "mKeyToCallback", "Ljava/util/HashMap;", "", "Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;", "Lkotlin/collections/HashMap;", "registerCallback", "Landroid/content/Intent;", "idClass", "Ljava/lang/Class;", "Lcom/join/mgps/base/dialog/BaseDialogActivity;", a.f7124i, "unregisterCallback", "", "key", "getCallback", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDialogActivityManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogActivityManager.kt\ncom/join/kotlin/base/dialog/DialogActivityManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n1#2:45\n*E\n"})
public final class DialogActivityManager {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final Lazy<DialogActivityManager> INSTANCE$delegate = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: u5.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DialogActivityManager.INSTANCE_delegate$lambda$3();
        }
    });

    /* JADX INFO: renamed from: mNextLocalRequestCode$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mNextLocalRequestCode = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: u5.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DialogActivityManager.mNextLocalRequestCode_delegate$lambda$0();
        }
    });

    @NotNull
    private final HashMap<String, IDialogActivityCallback> mKeyToCallback = new HashMap<>();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0005H\u0007R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/base/dialog/DialogActivityManager$Companion;", "", "<init>", "()V", "INSTANCE", "Lcom/join/kotlin/base/dialog/DialogActivityManager;", "getINSTANCE", "()Lcom/join/kotlin/base/dialog/DialogActivityManager;", "INSTANCE$delegate", "Lkotlin/Lazy;", "get", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final DialogActivityManager getINSTANCE() {
            return (DialogActivityManager) DialogActivityManager.INSTANCE$delegate.getValue();
        }

        @JvmStatic
        @NotNull
        public final DialogActivityManager get() {
            return getINSTANCE();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DialogActivityManager INSTANCE_delegate$lambda$3() {
        return new DialogActivityManager();
    }

    @JvmStatic
    @NotNull
    public static final DialogActivityManager get() {
        return INSTANCE.get();
    }

    private final AtomicInteger getMNextLocalRequestCode() {
        return (AtomicInteger) this.mNextLocalRequestCode.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AtomicInteger mNextLocalRequestCode_delegate$lambda$0() {
        return new AtomicInteger();
    }

    @Nullable
    public final IDialogActivityCallback getCallback(@Nullable String key) {
        if (key != null) {
            return this.mKeyToCallback.get(key);
        }
        return null;
    }

    @NotNull
    public final Intent registerCallback(@NotNull Class<? extends BaseDialogActivity> idClass, @NotNull IDialogActivityCallback callback) {
        Intrinsics.checkNotNullParameter(idClass, "idClass");
        Intrinsics.checkNotNullParameter(callback, "callback");
        String str = idClass.getSimpleName() + "_rq#" + getMNextLocalRequestCode().getAndIncrement();
        this.mKeyToCallback.put(str, callback);
        Intent intentPutExtra = new Intent().putExtra("_key_call", str);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        return intentPutExtra;
    }

    public final void unregisterCallback(@Nullable String key) {
        if (key != null) {
            this.mKeyToCallback.remove(key);
        }
    }
}

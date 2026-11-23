package com.facebook.common.executors;

import android.os.Handler;
import android.os.Looper;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class i extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private static i f26873c;

    private i() {
        super(new Handler(Looper.getMainLooper()));
    }

    public static i f() {
        if (f26873c == null) {
            f26873c = new i();
        }
        return f26873c;
    }

    @Override // com.facebook.common.executors.e, java.util.concurrent.Executor
    public void execute(Runnable command) {
        if (y()) {
            command.run();
        } else {
            super.execute(command);
        }
    }
}

package com.kwad.components.core.offline.b.a;

import com.kwad.components.offline.api.core.api.IAsync;
import com.kwad.sdk.utils.by;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
final class b implements IAsync {
    b() {
    }

    @Override // com.kwad.components.offline.api.core.api.IAsync
    public final void execute(Runnable runnable) {
        com.kwad.sdk.utils.i.execute(runnable);
    }

    @Override // com.kwad.components.offline.api.core.api.IAsync
    public final void runOnDefaultExecutor(Runnable runnable) {
        com.kwad.sdk.utils.i.execute(runnable);
    }

    @Override // com.kwad.components.offline.api.core.api.IAsync
    public final void runOnUiThread(Runnable runnable) {
        by.runOnUiThread(runnable);
    }

    @Override // com.kwad.components.offline.api.core.api.IAsync
    public final void runOnUiThreadDelay(Runnable runnable, long j10) {
        by.runOnUiThreadDelay(runnable, j10);
    }

    @Override // com.kwad.components.offline.api.core.api.IAsync
    public final void schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
        com.kwad.sdk.utils.i.schedule(runnable, j10, timeUnit);
    }
}

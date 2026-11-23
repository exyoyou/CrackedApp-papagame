package com.join.kotlin.base.ext;

import android.view.View;
import com.kingja.loadsir.callback.Callback;
import java.io.Serializable;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c implements Callback.OnReloadListener, Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function0 f48545b;

    public /* synthetic */ c(Function0 function0) {
        this.f48545b = function0;
    }

    @Override // com.kingja.loadsir.callback.Callback.OnReloadListener
    public final void onReload(View view) {
        this.f48545b.invoke();
    }
}

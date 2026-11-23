package com.join.mgps.va.overmind;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086 J\u0019\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0086 ¨\u0006\f"}, d2 = {"Lcom/join/mgps/va/overmind/PaCtrl;", "", "<init>", "()V", "mountLibGggg", "", "dir", "", "onSoLoaded", "name", "handle", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PaCtrl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final PaCtrl f73241a = new PaCtrl();

    static {
        System.loadLibrary("pactrl");
    }

    private PaCtrl() {
    }

    public final native void mountLibGggg(@NotNull String dir);

    public final native void onSoLoaded(@NotNull String name, long handle);
}

package com.mob.tools.network;

import com.mob.tools.proguard.PublicMemberKeeper;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface OnReadListener extends PublicMemberKeeper {
    void onRead(long j10) throws IOException;
}

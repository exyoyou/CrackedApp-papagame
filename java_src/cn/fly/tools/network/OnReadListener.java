package cn.fly.tools.network;

import cn.fly.tools.proguard.PublicMemberKeeper;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public interface OnReadListener extends PublicMemberKeeper {
    void onRead(long j10) throws IOException;
}

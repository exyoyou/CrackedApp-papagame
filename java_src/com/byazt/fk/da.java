package com.byazt.fk;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public interface da {

    public interface c {
        void cancel(u uVar, int i10);

        void onVideoPreloadFail(u uVar, int i10, String str);

        void onVideoPreloadSuccess(u uVar, int i10);
    }

    void execVideoPreload(Context context, u uVar, c cVar);
}

package com.byazt.zz;

import com.byazt.hs.IDownloadHttpService;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes9.dex */
public interface rl {

    @com.byazt.zqa.c(c = {0, 1, 189, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_CLEAR_VALUE})
    public static class c implements rl {
        @Override // com.byazt.zz.rl
        public com.byazt.m.sp c(Throwable th, String str) {
            return null;
        }

        @Override // com.byazt.zz.rl
        public IDownloadHttpService tt() {
            return null;
        }

        @Override // com.byazt.zz.rl
        public com.byazt.hs.x ve() {
            return null;
        }

        @Override // com.byazt.zz.rl
        public boolean c() {
            return false;
        }

        @Override // com.byazt.zz.rl
        public boolean c(Throwable th) {
            return false;
        }
    }

    com.byazt.m.sp c(Throwable th, String str);

    boolean c();

    boolean c(Throwable th);

    IDownloadHttpService tt();

    com.byazt.hs.x ve();
}

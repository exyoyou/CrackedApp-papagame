package com.byazt.kpm;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_OPTIMIZE_RETRY, 15})
public final class uj {

    public interface c<T> {
        T c();

        boolean c(T t10);
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_OPTIMIZE_RETRY, 153})
    public static class tt<T> implements c<T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object[] f16318c;
        public int tt;

        public tt(int i10) {
            if (i10 <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.f16318c = new Object[i10];
        }

        private boolean tt(T t10) {
            for (int i10 = 0; i10 < this.tt; i10++) {
                if (this.f16318c[i10] == t10) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.byazt.kpm.uj.c
        public T c() {
            int i10 = this.tt;
            if (i10 <= 0) {
                return null;
            }
            int i11 = i10 - 1;
            Object[] objArr = this.f16318c;
            T t10 = (T) objArr[i11];
            objArr[i11] = null;
            this.tt = i10 - 1;
            return t10;
        }

        @Override // com.byazt.kpm.uj.c
        public boolean c(T t10) {
            if (!tt(t10)) {
                int i10 = this.tt;
                Object[] objArr = this.f16318c;
                if (i10 >= objArr.length) {
                    return false;
                }
                objArr[i10] = t10;
                this.tt = i10 + 1;
                return true;
            }
            throw new IllegalStateException("Already in the pool!");
        }
    }
}

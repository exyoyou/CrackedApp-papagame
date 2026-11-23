package com.byazt.nb;

import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ALGORITHM, 71})
public class x<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public T f17091c;
    public T tt;

    private static boolean tt(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public void c(T t10, T t11) {
        this.f17091c = t10;
        this.tt = t11;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return tt(pair.first, this.f17091c) && tt(pair.second, this.tt);
    }

    public int hashCode() {
        T t10 = this.f17091c;
        int iHashCode = t10 == null ? 0 : t10.hashCode();
        T t11 = this.tt;
        return iHashCode ^ (t11 != null ? t11.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.f17091c + " " + this.tt + "}";
    }
}

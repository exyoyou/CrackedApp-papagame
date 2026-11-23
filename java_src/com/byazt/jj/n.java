package com.byazt.jj;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Function<SparseArray<Object>, Object> f15844c;

    public static void c(Function<SparseArray<Object>, Object> function) {
        f15844c = function;
    }

    public static String tt() {
        Function<SparseArray<Object>, Object> function = f15844c;
        if (function != null) {
            Object objApply = function.apply(com.byazt.yxi.uj.c().c(10005).c(String.class).tt());
            if (objApply instanceof String) {
                return objApply.toString();
            }
        }
        return null;
    }

    public static String ve() {
        Function<SparseArray<Object>, Object> function = f15844c;
        if (function != null) {
            Object objApply = function.apply(com.byazt.yxi.uj.c().c(10006).c(String.class).tt());
            if (objApply instanceof String) {
                return objApply.toString();
            }
        }
        return null;
    }

    public static String c() {
        Function<SparseArray<Object>, Object> function = f15844c;
        if (function != null) {
            Object objApply = function.apply(com.byazt.yxi.uj.c().c(10004).c(String.class).tt());
            if (objApply instanceof String) {
                return objApply.toString();
            }
        }
        return null;
    }
}

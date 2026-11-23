package com.byazt.dhf;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUTO_EXIT, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f12902c;

    public c(Function<SparseArray<Object>, Object> function) {
        this.f12902c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(-99999987, 244101);
        sparseArray.put(-99999985, Void.class);
        this.f12902c.apply(sparseArray);
    }

    public void tt() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(-99999987, 244103);
        sparseArray.put(-99999985, Void.class);
        this.f12902c.apply(sparseArray);
    }

    public void c(int i10, String str, boolean z10) {
        SparseArray sparseArray = new SparseArray(5);
        sparseArray.put(0, Integer.valueOf(i10));
        sparseArray.put(1, str);
        sparseArray.put(2, Boolean.valueOf(z10));
        sparseArray.put(-99999987, 244102);
        sparseArray.put(-99999985, Void.class);
        this.f12902c.apply(sparseArray);
    }
}

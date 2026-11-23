package com.byazt.dna;

import android.os.Message;
import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ALGORITHM})
public class nb implements qp.c, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13037c;
    public volatile qp.c tt;

    public nb(qp.c cVar) {
        this.tt = cVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        this.tt.handleMsg((Message) sparseArray.get(1));
        return null;
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, message);
        this.f13037c.apply(sparseArray);
    }

    public nb(Function function) {
        this.f13037c = function;
    }
}

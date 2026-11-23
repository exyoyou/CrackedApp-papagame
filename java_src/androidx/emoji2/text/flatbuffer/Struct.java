package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes7.dex */
public class Struct {

    /* JADX INFO: renamed from: bb, reason: collision with root package name */
    protected ByteBuffer f288bb;
    protected int bb_pos;

    protected void __reset(int i10, ByteBuffer byteBuffer) {
        this.f288bb = byteBuffer;
        if (byteBuffer != null) {
            this.bb_pos = i10;
        } else {
            this.bb_pos = 0;
        }
    }

    public void __reset() {
        __reset(0, null);
    }
}

package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.android.dx.io.Opcodes;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.Constants;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
@Descriptor(tags = {19, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, Opcodes.SHL_INT_LIT8, 225, 226, 227, Constants.CHECK_PLAYING_CID_ACTION, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_PROCESSKEY_VALUE, MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_TRY_COUNT, 231, 232, 233, 234, Constants.UPDATE_INSTANCE_TIME, Constants.START_STREAMING_REQUEST, Constants.SET_STREAMING_MODE_REQUEST, 238, 239, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_INDEX_CACHE, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_SIZE, 244, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_ERROR, 246, 247, 248, 249, 250, 251, 252, 253})
public class h extends b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Logger f33630f = Logger.getLogger(h.class.getName());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    byte[] f33631e;

    static int[] g() {
        int[] iArr = new int[148];
        for (int i10 = 106; i10 < 254; i10++) {
            int i11 = i10 - 106;
            f33630f.finest("pos:" + i11);
            iArr[i11] = i10;
        }
        return iArr;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        if (a() > 0) {
            byte[] bArr = new byte[this.f33595b];
            this.f33631e = bArr;
            byteBuffer.get(bArr);
        }
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ExtensionDescriptor");
        sb2.append("{bytes=");
        byte[] bArr = this.f33631e;
        sb2.append(bArr == null ? "null" : com.coremedia.iso.e.b(bArr));
        sb2.append('}');
        return sb2.toString();
    }
}

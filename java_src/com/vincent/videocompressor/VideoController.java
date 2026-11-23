package com.vincent.videocompressor;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.view.Surface;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes9.dex */
@SuppressLint({"NewApi"})
public class VideoController {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final int f85706c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int f85707d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int f85708e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static File f85709f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f85710g = "video/avc";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f85711h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f85712i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f85713j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f85714k = 3;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f85715l = 4;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f85716m = 5;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static volatile VideoController f85717n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f85718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f85719b = true;

    interface b {
        void onProgress(float percent);
    }

    public static class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f85720b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f85721c;

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f85722b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f85723c;

            a(final String val$videoPath, final String val$destPath) {
                this.f85722b = val$videoPath;
                this.f85723c = val$destPath;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread thread = new Thread(new c(this.f85722b, this.f85723c), "VideoConvertRunnable");
                    thread.start();
                    thread.join();
                } catch (Exception e10) {
                    e10.getMessage();
                }
            }
        }

        public static void a(final String videoPath, final String destPath) {
            new Thread(new a(videoPath, destPath)).start();
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            VideoController.d().a(this.f85720b, this.f85721c, 0, null);
        }

        private c(String videoPath, String destPath) {
            this.f85720b = videoPath;
            this.f85721c = destPath;
        }
    }

    public static void b(File src, File dst) throws IOException {
        FileChannel channel = new FileInputStream(src).getChannel();
        FileChannel channel2 = new FileOutputStream(dst).getChannel();
        try {
            channel.transferTo(1L, channel.size(), channel2);
            channel.close();
        } finally {
            if (channel != null) {
                channel.close();
            }
            if (channel2 != null) {
                channel2.close();
            }
        }
    }

    private void c(final boolean last, final boolean error) {
        if (this.f85719b) {
            this.f85719b = false;
        }
    }

    public static native int convertVideoFrame(ByteBuffer src, ByteBuffer dest, int destFormat, int width, int height, int padding, int swap);

    public static VideoController d() {
        VideoController videoController = f85717n;
        if (videoController == null) {
            synchronized (VideoController.class) {
                videoController = f85717n;
                if (videoController == null) {
                    videoController = new VideoController();
                    f85717n = videoController;
                }
            }
        }
        return videoController;
    }

    private static boolean e(int colorFormat) {
        if (colorFormat == 39 || colorFormat == 2130706688) {
            return true;
        }
        switch (colorFormat) {
            case 19:
            case 20:
            case 21:
                return true;
            default:
                return false;
        }
    }

    @TargetApi(16)
    private long f(MediaExtractor extractor, com.vincent.videocompressor.b mediaMuxer, MediaCodec.BufferInfo info, long start, long end, File file, boolean isAudio) throws Exception {
        long j10;
        boolean z10;
        int iJ = j(extractor, isAudio);
        if (iJ < 0) {
            return -1L;
        }
        extractor.selectTrack(iJ);
        MediaFormat trackFormat = extractor.getTrackFormat(iJ);
        int iA = mediaMuxer.a(trackFormat, isAudio);
        int integer = trackFormat.getInteger("max-input-size");
        long j11 = 0;
        if (start > 0) {
            extractor.seekTo(start, 0);
        } else {
            extractor.seekTo(0L, 0);
        }
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(integer);
        long j12 = -1;
        boolean z11 = false;
        while (!z11) {
            int sampleTrackIndex = extractor.getSampleTrackIndex();
            if (sampleTrackIndex == iJ) {
                int sampleData = extractor.readSampleData(byteBufferAllocateDirect, 0);
                info.size = sampleData;
                if (sampleData < 0) {
                    info.size = 0;
                    j10 = j11;
                } else {
                    long sampleTime = extractor.getSampleTime();
                    info.presentationTimeUs = sampleTime;
                    if (start > 0 && j12 == -1) {
                        j12 = sampleTime;
                    }
                    j10 = 0;
                    if (end < 0 || sampleTime < end) {
                        info.offset = 0;
                        info.flags = extractor.getSampleFlags();
                        mediaMuxer.q(iA, byteBufferAllocateDirect, info, isAudio);
                        extractor.advance();
                    }
                }
            } else {
                j10 = j11;
                z10 = sampleTrackIndex == -1;
            }
            if (z10) {
                z11 = true;
            }
            j11 = j10;
        }
        extractor.unselectTrack(iJ);
        return j12;
    }

    public static MediaCodecInfo h(String mimeType) {
        int codecCount = MediaCodecList.getCodecCount();
        MediaCodecInfo mediaCodecInfo = null;
        for (int i10 = 0; i10 < codecCount; i10++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i10);
            if (codecInfoAt.isEncoder()) {
                for (String str : codecInfoAt.getSupportedTypes()) {
                    if (str.equalsIgnoreCase(mimeType)) {
                        if (!codecInfoAt.getName().equals("OMX.SEC.avc.enc")) {
                            return codecInfoAt;
                        }
                        if (codecInfoAt.getName().equals("OMX.SEC.AVC.Encoder")) {
                            return codecInfoAt;
                        }
                        mediaCodecInfo = codecInfoAt;
                    }
                }
            }
        }
        return mediaCodecInfo;
    }

    @SuppressLint({"NewApi"})
    public static int i(MediaCodecInfo codecInfo, String mimeType) {
        MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfo.getCapabilitiesForType(mimeType);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int[] iArr = capabilitiesForType.colorFormats;
            if (i10 >= iArr.length) {
                return i11;
            }
            int i12 = iArr[i10];
            if (e(i12)) {
                if (!codecInfo.getName().equals("OMX.SEC.AVC.Encoder") || i12 != 19) {
                    return i12;
                }
                i11 = i12;
            }
            i10++;
        }
    }

    @TargetApi(16)
    private int j(MediaExtractor extractor, boolean audio) {
        int trackCount = extractor.getTrackCount();
        for (int i10 = 0; i10 < trackCount; i10++) {
            String string = extractor.getTrackFormat(i10).getString("mime");
            if (audio) {
                if (string.startsWith("audio/")) {
                    return i10;
                }
            } else if (string.startsWith("video/")) {
                return i10;
            }
        }
        return -5;
    }

    private void k(String path, String dest) {
        c.a(path, dest);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0089  */
    /* JADX WARN: Code duplicated, block: B:14:0x008c  */
    /* JADX WARN: Code duplicated, block: B:16:0x0090  */
    /* JADX WARN: Code duplicated, block: B:17:0x0093  */
    /* JADX WARN: Code duplicated, block: B:200:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:202:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:206:0x03cb  */
    /* JADX WARN: Code duplicated, block: B:208:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:20:0x0098  */
    /* JADX WARN: Code duplicated, block: B:211:0x03db  */
    /* JADX WARN: Code duplicated, block: B:214:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:218:0x03ff A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:219:0x0401 A[Catch: Exception -> 0x047f, all -> 0x04d1, TRY_ENTER, TryCatch #40 {all -> 0x04d1, blocks: (B:203:0x03c4, B:213:0x03de, B:219:0x0401, B:223:0x0408, B:225:0x040d, B:231:0x041a, B:233:0x042b, B:235:0x0438, B:237:0x0440, B:239:0x044c, B:241:0x0452, B:229:0x0414, B:243:0x0467, B:244:0x047e, B:193:0x039f, B:197:0x03a8, B:177:0x0357, B:180:0x0377, B:183:0x037f, B:184:0x0389, B:178:0x0369, B:249:0x0486, B:250:0x04a7, B:255:0x04b4, B:256:0x04d0), top: B:401:0x03c4 }] */
    /* JADX WARN: Code duplicated, block: B:221:0x0405  */
    /* JADX WARN: Code duplicated, block: B:222:0x0407  */
    /* JADX WARN: Code duplicated, block: B:231:0x041a A[Catch: Exception -> 0x047f, all -> 0x04d1, TryCatch #40 {all -> 0x04d1, blocks: (B:203:0x03c4, B:213:0x03de, B:219:0x0401, B:223:0x0408, B:225:0x040d, B:231:0x041a, B:233:0x042b, B:235:0x0438, B:237:0x0440, B:239:0x044c, B:241:0x0452, B:229:0x0414, B:243:0x0467, B:244:0x047e, B:193:0x039f, B:197:0x03a8, B:177:0x0357, B:180:0x0377, B:183:0x037f, B:184:0x0389, B:178:0x0369, B:249:0x0486, B:250:0x04a7, B:255:0x04b4, B:256:0x04d0), top: B:401:0x03c4 }] */
    /* JADX WARN: Code duplicated, block: B:233:0x042b A[Catch: Exception -> 0x047f, all -> 0x04d1, TRY_LEAVE, TryCatch #40 {all -> 0x04d1, blocks: (B:203:0x03c4, B:213:0x03de, B:219:0x0401, B:223:0x0408, B:225:0x040d, B:231:0x041a, B:233:0x042b, B:235:0x0438, B:237:0x0440, B:239:0x044c, B:241:0x0452, B:229:0x0414, B:243:0x0467, B:244:0x047e, B:193:0x039f, B:197:0x03a8, B:177:0x0357, B:180:0x0377, B:183:0x037f, B:184:0x0389, B:178:0x0369, B:249:0x0486, B:250:0x04a7, B:255:0x04b4, B:256:0x04d0), top: B:401:0x03c4 }] */
    /* JADX WARN: Code duplicated, block: B:236:0x043c  */
    /* JADX WARN: Code duplicated, block: B:238:0x0444  */
    /* JADX WARN: Code duplicated, block: B:23:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:241:0x0452 A[Catch: all -> 0x04d1, Exception -> 0x04d4, TryCatch #35 {Exception -> 0x04d4, blocks: (B:235:0x0438, B:237:0x0440, B:239:0x044c, B:241:0x0452, B:243:0x0467, B:244:0x047e, B:249:0x0486, B:250:0x04a7, B:255:0x04b4, B:256:0x04d0), top: B:396:0x0438 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:290:0x0557 A[Catch: all -> 0x0570, Exception -> 0x0572, TryCatch #45 {Exception -> 0x0572, all -> 0x0570, blocks: (B:288:0x0552, B:290:0x0557, B:292:0x055c, B:294:0x0561, B:296:0x0569), top: B:417:0x0552 }] */
    /* JADX WARN: Code duplicated, block: B:292:0x055c A[Catch: all -> 0x0570, Exception -> 0x0572, TryCatch #45 {Exception -> 0x0572, all -> 0x0570, blocks: (B:288:0x0552, B:290:0x0557, B:292:0x055c, B:294:0x0561, B:296:0x0569), top: B:417:0x0552 }] */
    /* JADX WARN: Code duplicated, block: B:294:0x0561 A[Catch: all -> 0x0570, Exception -> 0x0572, TryCatch #45 {Exception -> 0x0572, all -> 0x0570, blocks: (B:288:0x0552, B:290:0x0557, B:292:0x055c, B:294:0x0561, B:296:0x0569), top: B:417:0x0552 }] */
    /* JADX WARN: Code duplicated, block: B:296:0x0569 A[Catch: all -> 0x0570, Exception -> 0x0572, TRY_LEAVE, TryCatch #45 {Exception -> 0x0572, all -> 0x0570, blocks: (B:288:0x0552, B:290:0x0557, B:292:0x055c, B:294:0x0561, B:296:0x0569), top: B:417:0x0552 }] */
    /* JADX WARN: Code duplicated, block: B:311:0x0593  */
    /* JADX WARN: Code duplicated, block: B:318:0x05b2  */
    /* JADX WARN: Code duplicated, block: B:321:0x05bb  */
    /* JADX WARN: Code duplicated, block: B:347:0x062c  */
    /* JADX WARN: Code duplicated, block: B:349:0x0631  */
    /* JADX WARN: Code duplicated, block: B:360:0x0684  */
    /* JADX WARN: Code duplicated, block: B:362:0x0689  */
    /* JADX WARN: Code duplicated, block: B:397:0x040d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:405:0x03de A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:438:0x0467 A[SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 26, insn: 0x0127: MOVE (r10 I:??[OBJECT, ARRAY]) = (r26 I:??[OBJECT, ARRAY]), block:B:43:0x0123 */
    @TargetApi(16)
    public boolean a(final String sourcePath, String destinationPath, int quality, b listener) throws Throwable {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        File file;
        Throwable th;
        MediaExtractor mediaExtractor;
        com.vincent.videocompressor.b bVarC;
        boolean z10;
        boolean z11;
        com.vincent.videocompressor.b bVar;
        int i16;
        boolean z12;
        boolean z13;
        long j10;
        com.vincent.videocompressor.b bVar2;
        Exception exc;
        d dVar;
        MediaCodec mediaCodecCreateEncoderByType;
        MediaCodec mediaCodec;
        com.vincent.videocompressor.a aVar;
        Throwable th2;
        MediaCodec mediaCodecCreateDecoderByType;
        com.vincent.videocompressor.a aVar2;
        int i17;
        boolean z14;
        boolean z15;
        int iDequeueInputBuffer;
        ByteBuffer byteBufferAllocate;
        ByteBuffer byteBufferAllocate2;
        VideoController videoController;
        int iDequeueOutputBuffer;
        b bVar3;
        long j11;
        boolean z16;
        boolean z17;
        VideoController videoController2 = this;
        String str = "time = ";
        videoController2.f85718a = sourcePath;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(videoController2.f85718a);
        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
        String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
        String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(24);
        long jLongValue = Long.valueOf(mediaMetadataRetriever.extractMetadata(9)).longValue() * 1000;
        int iIntValue = Integer.valueOf(strExtractMetadata3).intValue();
        int iIntValue2 = Integer.valueOf(strExtractMetadata).intValue();
        int iIntValue3 = Integer.valueOf(strExtractMetadata2).intValue();
        if (quality != 2) {
            if (quality != 3) {
                i10 = (iIntValue2 * 2) / 3;
                i11 = (iIntValue3 * 2) / 3;
                i13 = i10 * i11 * 30;
            } else {
                i10 = iIntValue2 / 2;
                i11 = iIntValue3 / 2;
                i12 = (i10 / 2) * (i11 / 2);
            }
            int i18 = i13;
            File file2 = new File(destinationPath);
            if (iIntValue != 90) {
                i15 = i10;
                i14 = 0;
            } else if (iIntValue == 180) {
                i15 = i11;
                i11 = i10;
                i14 = 0;
            } else if (iIntValue == 270) {
                i15 = i10;
                i14 = 0;
            } else {
                int i19 = i11;
                i11 = i10;
                i14 = iIntValue;
                i15 = i19;
            }
            file = new File(videoController2.f85718a);
            long j12 = jLongValue;
            if (!file.canRead()) {
                videoController2.c(true, true);
                return false;
            }
            videoController2.f85719b = true;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (i11 != 0 || i15 == 0) {
                videoController2.c(true, true);
                return false;
            }
            try {
                MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                com.vincent.videocompressor.c cVar = new com.vincent.videocompressor.c();
                cVar.h(file2);
                cVar.i(i14);
                cVar.j(i11, i15);
                bVarC = new com.vincent.videocompressor.b().c(cVar);
                try {
                    MediaExtractor mediaExtractor2 = new MediaExtractor();
                    try {
                        mediaExtractor2.setDataSource(file.toString());
                        try {
                            try {
                                if (i11 != iIntValue2) {
                                    i16 = 1;
                                    z12 = false;
                                } else {
                                    if (i15 == iIntValue3) {
                                        file = file;
                                        z10 = true;
                                        file2 = file2;
                                        try {
                                            long jF = f(mediaExtractor2, bVarC, bufferInfo, -1L, -1L, file2, false);
                                            j10 = jF != -1 ? jF : -1L;
                                            bVarC = bVarC;
                                            z13 = false;
                                            bufferInfo = bufferInfo;
                                            if (z13) {
                                                videoController2 = this;
                                                bVar2 = bVarC;
                                                z10 = true;
                                            } else {
                                                MediaCodec.BufferInfo bufferInfo2 = bufferInfo;
                                                videoController2 = this;
                                                bVar2 = bVarC;
                                                z10 = true;
                                                try {
                                                    f(mediaExtractor2, bVarC, bufferInfo2, j10, -1L, file2, true);
                                                } catch (Exception e10) {
                                                    e = e10;
                                                    mediaExtractor = mediaExtractor2;
                                                    bVarC = bVar2;
                                                    str = str;
                                                    try {
                                                        e.getMessage();
                                                        if (mediaExtractor != null) {
                                                            mediaExtractor.release();
                                                        }
                                                        if (bVarC != null) {
                                                            try {
                                                                bVarC.m(false);
                                                            } catch (Exception e11) {
                                                                e11.getMessage();
                                                            }
                                                        }
                                                        StringBuilder sb2 = new StringBuilder();
                                                        sb2.append(str);
                                                        sb2.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                        z11 = true;
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                        if (mediaExtractor != null) {
                                                            mediaExtractor.release();
                                                        }
                                                        if (bVarC != null) {
                                                            try {
                                                                bVarC.m(false);
                                                            } catch (Exception e12) {
                                                                e12.getMessage();
                                                            }
                                                        }
                                                        StringBuilder sb3 = new StringBuilder();
                                                        sb3.append(str);
                                                        sb3.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                        throw th;
                                                    }
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    mediaExtractor = mediaExtractor2;
                                                    bVarC = bVar2;
                                                    str = str;
                                                    if (mediaExtractor != null) {
                                                        mediaExtractor.release();
                                                    }
                                                    if (bVarC != null) {
                                                        bVarC.m(false);
                                                    }
                                                    StringBuilder sb4 = new StringBuilder();
                                                    sb4.append(str);
                                                    sb4.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                    throw th;
                                                }
                                            }
                                            mediaExtractor2.release();
                                            if (bVar2 != null) {
                                                try {
                                                    bVar2.m(false);
                                                } catch (Exception e13) {
                                                    e13.getMessage();
                                                }
                                            }
                                            StringBuilder sb5 = new StringBuilder();
                                            sb5.append(str);
                                            sb5.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                            z11 = z13;
                                        } catch (Exception e14) {
                                            e = e14;
                                            videoController2 = videoController2;
                                            str = "time = ";
                                            mediaExtractor = mediaExtractor2;
                                            bVarC = bVarC;
                                            e.getMessage();
                                            if (mediaExtractor != null) {
                                                mediaExtractor.release();
                                            }
                                            if (bVarC != null) {
                                                bVarC.m(false);
                                            }
                                            StringBuilder sb6 = new StringBuilder();
                                            sb6.append(str);
                                            sb6.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                            z11 = true;
                                            videoController2.c(z10, z11);
                                            f85709f = file2;
                                            StringBuilder sb7 = new StringBuilder();
                                            sb7.append(videoController2.f85718a);
                                            sb7.append("");
                                            StringBuilder sb8 = new StringBuilder();
                                            sb8.append(file2.getPath());
                                            sb8.append("");
                                            StringBuilder sb9 = new StringBuilder();
                                            sb9.append(file.getPath());
                                            sb9.append("");
                                            return z10;
                                        }
                                        videoController2.c(z10, z11);
                                        f85709f = file2;
                                        StringBuilder sb10 = new StringBuilder();
                                        sb10.append(videoController2.f85718a);
                                        sb10.append("");
                                        StringBuilder sb11 = new StringBuilder();
                                        sb11.append(file2.getPath());
                                        sb11.append("");
                                        StringBuilder sb12 = new StringBuilder();
                                        sb12.append(file.getPath());
                                        sb12.append("");
                                        return z10;
                                    }
                                    z12 = false;
                                    i16 = 1;
                                }
                                int iJ = videoController2.j(mediaExtractor2, z12);
                                if (iJ >= 0) {
                                    try {
                                        try {
                                            Build.MANUFACTURER.toLowerCase();
                                            StringBuilder sb13 = new StringBuilder();
                                            sb13.append("colorFormat = ");
                                            sb13.append(2130708361);
                                            int i20 = ((i11 * i15) * 3) / 2;
                                            if (i15 % 16 != 0) {
                                                try {
                                                    int i21 = (((((16 - (i15 % 16)) + i15) - i15) * i11) * 5) / 4;
                                                } catch (Exception e15) {
                                                    exc = e15;
                                                    iJ = iJ;
                                                    str = "time = ";
                                                    mediaExtractor2 = mediaExtractor2;
                                                    bVarC = bVarC;
                                                    dVar = null;
                                                    mediaCodecCreateEncoderByType = null;
                                                    mediaCodec = null;
                                                    aVar = null;
                                                    bufferInfo = bufferInfo;
                                                    try {
                                                        exc.getMessage();
                                                        mediaCodecCreateDecoderByType = mediaCodec;
                                                        aVar2 = aVar;
                                                        i17 = iJ;
                                                        mediaExtractor2 = mediaExtractor2;
                                                        dVar = dVar;
                                                        z14 = true;
                                                        mediaExtractor2.unselectTrack(i17);
                                                        if (dVar != null) {
                                                            dVar.i();
                                                        }
                                                        if (aVar2 != null) {
                                                            aVar2.e();
                                                        }
                                                        if (mediaCodecCreateDecoderByType != null) {
                                                            mediaCodecCreateDecoderByType.stop();
                                                            mediaCodecCreateDecoderByType.release();
                                                        }
                                                        if (mediaCodecCreateEncoderByType != null) {
                                                            mediaCodecCreateEncoderByType.stop();
                                                            mediaCodecCreateEncoderByType.release();
                                                        }
                                                        z13 = z14;
                                                        j10 = -1;
                                                        if (z13) {
                                                            MediaCodec.BufferInfo bufferInfo3 = bufferInfo;
                                                            videoController2 = this;
                                                            bVar2 = bVarC;
                                                            z10 = true;
                                                            f(mediaExtractor2, bVarC, bufferInfo3, j10, -1L, file2, true);
                                                        } else {
                                                            videoController2 = this;
                                                            bVar2 = bVarC;
                                                            z10 = true;
                                                        }
                                                        mediaExtractor2.release();
                                                        if (bVar2 != null) {
                                                            bVar2.m(false);
                                                        }
                                                        StringBuilder sb14 = new StringBuilder();
                                                        sb14.append(str);
                                                        sb14.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                        z11 = z13;
                                                    } catch (Exception e16) {
                                                        e = e16;
                                                        mediaExtractor2 = mediaExtractor2;
                                                        videoController2 = this;
                                                        mediaExtractor = mediaExtractor2;
                                                        str = str;
                                                        z10 = true;
                                                        e.getMessage();
                                                        if (mediaExtractor != null) {
                                                            mediaExtractor.release();
                                                        }
                                                        if (bVarC != null) {
                                                            bVarC.m(false);
                                                        }
                                                        StringBuilder sb15 = new StringBuilder();
                                                        sb15.append(str);
                                                        sb15.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                        z11 = true;
                                                        videoController2.c(z10, z11);
                                                        f85709f = file2;
                                                        StringBuilder sb16 = new StringBuilder();
                                                        sb16.append(videoController2.f85718a);
                                                        sb16.append("");
                                                        StringBuilder sb17 = new StringBuilder();
                                                        sb17.append(file2.getPath());
                                                        sb17.append("");
                                                        StringBuilder sb18 = new StringBuilder();
                                                        sb18.append(file.getPath());
                                                        sb18.append("");
                                                        return z10;
                                                    } catch (Throwable th5) {
                                                        th2 = th5;
                                                        mediaExtractor2 = mediaExtractor2;
                                                        th = th2;
                                                        mediaExtractor = mediaExtractor2;
                                                        str = str;
                                                        if (mediaExtractor != null) {
                                                            mediaExtractor.release();
                                                        }
                                                        if (bVarC != null) {
                                                            bVarC.m(false);
                                                        }
                                                        StringBuilder sb19 = new StringBuilder();
                                                        sb19.append(str);
                                                        sb19.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                        throw th;
                                                    }
                                                    videoController2.c(z10, z11);
                                                    f85709f = file2;
                                                    StringBuilder sb110 = new StringBuilder();
                                                    sb110.append(videoController2.f85718a);
                                                    sb110.append("");
                                                    StringBuilder sb111 = new StringBuilder();
                                                    sb111.append(file2.getPath());
                                                    sb111.append("");
                                                    StringBuilder sb112 = new StringBuilder();
                                                    sb112.append(file.getPath());
                                                    sb112.append("");
                                                    return z10;
                                                }
                                            }
                                            mediaExtractor2.selectTrack(iJ);
                                            mediaExtractor2.seekTo(0L, 0);
                                            MediaFormat trackFormat = mediaExtractor2.getTrackFormat(iJ);
                                            MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(f85710g, i11 % 2 == 0 ? i11 : i11 - 1, i15 % 2 == 0 ? i15 : i15 - 1);
                                            mediaFormatCreateVideoFormat.setInteger("color-format", 2130708361);
                                            mediaFormatCreateVideoFormat.setInteger("bitrate", i18);
                                            mediaFormatCreateVideoFormat.setInteger("frame-rate", 25);
                                            mediaFormatCreateVideoFormat.setInteger("i-frame-interval", 10);
                                            mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType(f85710g);
                                            try {
                                                mediaCodecCreateEncoderByType.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, i16);
                                                com.vincent.videocompressor.a aVar3 = new com.vincent.videocompressor.a(mediaCodecCreateEncoderByType.createInputSurface());
                                                try {
                                                    aVar3.d();
                                                    mediaCodecCreateEncoderByType.start();
                                                    mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(trackFormat.getString("mime"));
                                                    try {
                                                        dVar = new d();
                                                        try {
                                                            str = "time = ";
                                                            try {
                                                                mediaCodecCreateDecoderByType.configure(trackFormat, dVar.g(), (MediaCrypto) null, 0);
                                                                mediaCodecCreateDecoderByType.start();
                                                                boolean z18 = false;
                                                                boolean z19 = false;
                                                                int i22 = -5;
                                                                while (!z18) {
                                                                    if (!z19) {
                                                                        try {
                                                                            int sampleTrackIndex = mediaExtractor2.getSampleTrackIndex();
                                                                            if (sampleTrackIndex == iJ) {
                                                                                int iDequeueInputBuffer2 = mediaCodecCreateDecoderByType.dequeueInputBuffer(2500L);
                                                                                if (iDequeueInputBuffer2 >= 0) {
                                                                                    int sampleData = mediaExtractor2.readSampleData(mediaCodecCreateDecoderByType.getInputBuffer(iDequeueInputBuffer2), 0);
                                                                                    if (sampleData < 0) {
                                                                                        mediaCodecCreateDecoderByType.queueInputBuffer(iDequeueInputBuffer2, 0, 0, 0L, 4);
                                                                                        z19 = true;
                                                                                    } else {
                                                                                        mediaCodecCreateDecoderByType.queueInputBuffer(iDequeueInputBuffer2, 0, sampleData, mediaExtractor2.getSampleTime(), 0);
                                                                                        mediaExtractor2.advance();
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                z15 = sampleTrackIndex == -1;
                                                                                if (z15 && (iDequeueInputBuffer = mediaCodecCreateDecoderByType.dequeueInputBuffer(2500L)) >= 0) {
                                                                                    mediaCodecCreateDecoderByType.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                                                                                    z19 = true;
                                                                                }
                                                                            }
                                                                            if (z15) {
                                                                                mediaCodecCreateDecoderByType.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                                                                                z19 = true;
                                                                            }
                                                                        } catch (Exception e17) {
                                                                            exc = e17;
                                                                            iJ = iJ;
                                                                            aVar = aVar3;
                                                                            mediaExtractor2 = mediaExtractor2;
                                                                            bVarC = bVarC;
                                                                            mediaCodec = mediaCodecCreateDecoderByType;
                                                                            bufferInfo = bufferInfo;
                                                                            exc.getMessage();
                                                                            mediaCodecCreateDecoderByType = mediaCodec;
                                                                            aVar2 = aVar;
                                                                            i17 = iJ;
                                                                            mediaExtractor2 = mediaExtractor2;
                                                                            dVar = dVar;
                                                                            z14 = true;
                                                                            mediaExtractor2.unselectTrack(i17);
                                                                            if (dVar != null) {
                                                                                dVar.i();
                                                                            }
                                                                            if (aVar2 != null) {
                                                                                aVar2.e();
                                                                            }
                                                                            if (mediaCodecCreateDecoderByType != null) {
                                                                                mediaCodecCreateDecoderByType.stop();
                                                                                mediaCodecCreateDecoderByType.release();
                                                                            }
                                                                            if (mediaCodecCreateEncoderByType != null) {
                                                                                mediaCodecCreateEncoderByType.stop();
                                                                                mediaCodecCreateEncoderByType.release();
                                                                            }
                                                                            z13 = z14;
                                                                            j10 = -1;
                                                                            if (z13) {
                                                                                MediaCodec.BufferInfo bufferInfo4 = bufferInfo;
                                                                                videoController2 = this;
                                                                                bVar2 = bVarC;
                                                                                z10 = true;
                                                                                f(mediaExtractor2, bVarC, bufferInfo4, j10, -1L, file2, true);
                                                                            } else {
                                                                                videoController2 = this;
                                                                                bVar2 = bVarC;
                                                                                z10 = true;
                                                                            }
                                                                            mediaExtractor2.release();
                                                                            if (bVar2 != null) {
                                                                                bVar2.m(false);
                                                                            }
                                                                            StringBuilder sb113 = new StringBuilder();
                                                                            sb113.append(str);
                                                                            sb113.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                            z11 = z13;
                                                                            videoController2.c(z10, z11);
                                                                            f85709f = file2;
                                                                            StringBuilder sb114 = new StringBuilder();
                                                                            sb114.append(videoController2.f85718a);
                                                                            sb114.append("");
                                                                            StringBuilder sb115 = new StringBuilder();
                                                                            sb115.append(file2.getPath());
                                                                            sb115.append("");
                                                                            StringBuilder sb116 = new StringBuilder();
                                                                            sb116.append(file.getPath());
                                                                            sb116.append("");
                                                                            return z10;
                                                                        } catch (Throwable th6) {
                                                                            th = th6;
                                                                            mediaExtractor = mediaExtractor2;
                                                                            bVarC = bVarC;
                                                                            str = str;
                                                                            if (mediaExtractor != null) {
                                                                                mediaExtractor.release();
                                                                            }
                                                                            if (bVarC != null) {
                                                                                bVarC.m(false);
                                                                            }
                                                                            StringBuilder sb117 = new StringBuilder();
                                                                            sb117.append(str);
                                                                            sb117.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                            throw th;
                                                                        }
                                                                    }
                                                                    int iA = i22;
                                                                    boolean z20 = true;
                                                                    boolean z21 = true;
                                                                    while (true) {
                                                                        if (z20 || z21) {
                                                                            boolean z22 = z18;
                                                                            boolean z23 = z20;
                                                                            boolean z24 = z21;
                                                                            int iDequeueOutputBuffer2 = mediaCodecCreateEncoderByType.dequeueOutputBuffer(bufferInfo, 2500L);
                                                                            if (iDequeueOutputBuffer2 == -1) {
                                                                                z24 = false;
                                                                            } else if (iDequeueOutputBuffer2 != -3) {
                                                                                if (iDequeueOutputBuffer2 == -2) {
                                                                                    try {
                                                                                        MediaFormat outputFormat = mediaCodecCreateEncoderByType.getOutputFormat();
                                                                                        if (iA == -5) {
                                                                                            bVarC = bVarC;
                                                                                            try {
                                                                                                iA = bVarC.a(outputFormat, false);
                                                                                            } catch (Exception e18) {
                                                                                                e = e18;
                                                                                                exc = e;
                                                                                                iJ = iJ;
                                                                                                aVar = aVar3;
                                                                                                mediaExtractor2 = mediaExtractor2;
                                                                                                mediaCodec = mediaCodecCreateDecoderByType;
                                                                                                bufferInfo = bufferInfo;
                                                                                                exc.getMessage();
                                                                                                mediaCodecCreateDecoderByType = mediaCodec;
                                                                                                aVar2 = aVar;
                                                                                                i17 = iJ;
                                                                                                mediaExtractor2 = mediaExtractor2;
                                                                                                dVar = dVar;
                                                                                                z14 = true;
                                                                                                mediaExtractor2.unselectTrack(i17);
                                                                                                if (dVar != null) {
                                                                                                    dVar.i();
                                                                                                }
                                                                                                if (aVar2 != null) {
                                                                                                    aVar2.e();
                                                                                                }
                                                                                                if (mediaCodecCreateDecoderByType != null) {
                                                                                                    mediaCodecCreateDecoderByType.stop();
                                                                                                    mediaCodecCreateDecoderByType.release();
                                                                                                }
                                                                                                if (mediaCodecCreateEncoderByType != null) {
                                                                                                    mediaCodecCreateEncoderByType.stop();
                                                                                                    mediaCodecCreateEncoderByType.release();
                                                                                                }
                                                                                                z13 = z14;
                                                                                                j10 = -1;
                                                                                                if (z13) {
                                                                                                    MediaCodec.BufferInfo bufferInfo5 = bufferInfo;
                                                                                                    videoController2 = this;
                                                                                                    bVar2 = bVarC;
                                                                                                    z10 = true;
                                                                                                    f(mediaExtractor2, bVarC, bufferInfo5, j10, -1L, file2, true);
                                                                                                } else {
                                                                                                    videoController2 = this;
                                                                                                    bVar2 = bVarC;
                                                                                                    z10 = true;
                                                                                                }
                                                                                                mediaExtractor2.release();
                                                                                                if (bVar2 != null) {
                                                                                                    bVar2.m(false);
                                                                                                }
                                                                                                StringBuilder sb118 = new StringBuilder();
                                                                                                sb118.append(str);
                                                                                                sb118.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                                                z11 = z13;
                                                                                                videoController2.c(z10, z11);
                                                                                                f85709f = file2;
                                                                                                StringBuilder sb119 = new StringBuilder();
                                                                                                sb119.append(videoController2.f85718a);
                                                                                                sb119.append("");
                                                                                                StringBuilder sb1110 = new StringBuilder();
                                                                                                sb1110.append(file2.getPath());
                                                                                                sb1110.append("");
                                                                                                StringBuilder sb1111 = new StringBuilder();
                                                                                                sb1111.append(file.getPath());
                                                                                                sb1111.append("");
                                                                                                return z10;
                                                                                            } catch (Throwable th7) {
                                                                                                th = th7;
                                                                                                th = th;
                                                                                                mediaExtractor = mediaExtractor2;
                                                                                                str = str;
                                                                                                if (mediaExtractor != null) {
                                                                                                    mediaExtractor.release();
                                                                                                }
                                                                                                if (bVarC != null) {
                                                                                                    bVarC.m(false);
                                                                                                }
                                                                                                StringBuilder sb1112 = new StringBuilder();
                                                                                                sb1112.append(str);
                                                                                                sb1112.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                                                throw th;
                                                                                            }
                                                                                        } else {
                                                                                            bVarC = bVarC;
                                                                                        }
                                                                                        mediaExtractor2 = mediaExtractor2;
                                                                                        z22 = z22;
                                                                                        iJ = iJ;
                                                                                        if (iDequeueOutputBuffer2 != -1) {
                                                                                            z18 = z22;
                                                                                            z20 = z23;
                                                                                        } else {
                                                                                            aVar = aVar3;
                                                                                            try {
                                                                                                try {
                                                                                                    iDequeueOutputBuffer = mediaCodecCreateDecoderByType.dequeueOutputBuffer(bufferInfo, 2500L);
                                                                                                    if (iDequeueOutputBuffer == -1) {
                                                                                                        bVar3 = listener;
                                                                                                        z22 = z22;
                                                                                                        bufferInfo = bufferInfo;
                                                                                                        j11 = j12;
                                                                                                    } else {
                                                                                                        if (iDequeueOutputBuffer == -3) {
                                                                                                            bVar3 = listener;
                                                                                                            z22 = z22;
                                                                                                            bufferInfo = bufferInfo;
                                                                                                            j11 = j12;
                                                                                                        } else if (iDequeueOutputBuffer == -2) {
                                                                                                            try {
                                                                                                                MediaFormat outputFormat2 = mediaCodecCreateDecoderByType.getOutputFormat();
                                                                                                                StringBuilder sb20 = new StringBuilder();
                                                                                                                sb20.append("newFormat = ");
                                                                                                                sb20.append(outputFormat2);
                                                                                                                bVar3 = listener;
                                                                                                                z22 = z22;
                                                                                                                bufferInfo = bufferInfo;
                                                                                                                j11 = j12;
                                                                                                            } catch (Exception e19) {
                                                                                                                exc = e19;
                                                                                                                bufferInfo = bufferInfo;
                                                                                                                mediaCodec = mediaCodecCreateDecoderByType;
                                                                                                                exc.getMessage();
                                                                                                                mediaCodecCreateDecoderByType = mediaCodec;
                                                                                                                aVar2 = aVar;
                                                                                                                i17 = iJ;
                                                                                                                mediaExtractor2 = mediaExtractor2;
                                                                                                                dVar = dVar;
                                                                                                                z14 = true;
                                                                                                                mediaExtractor2.unselectTrack(i17);
                                                                                                                if (dVar != null) {
                                                                                                                    dVar.i();
                                                                                                                }
                                                                                                                if (aVar2 != null) {
                                                                                                                    aVar2.e();
                                                                                                                }
                                                                                                                if (mediaCodecCreateDecoderByType != null) {
                                                                                                                    mediaCodecCreateDecoderByType.stop();
                                                                                                                    mediaCodecCreateDecoderByType.release();
                                                                                                                }
                                                                                                                if (mediaCodecCreateEncoderByType != null) {
                                                                                                                    mediaCodecCreateEncoderByType.stop();
                                                                                                                    mediaCodecCreateEncoderByType.release();
                                                                                                                }
                                                                                                                z13 = z14;
                                                                                                                j10 = -1;
                                                                                                                if (z13) {
                                                                                                                    MediaCodec.BufferInfo bufferInfo6 = bufferInfo;
                                                                                                                    videoController2 = this;
                                                                                                                    bVar2 = bVarC;
                                                                                                                    z10 = true;
                                                                                                                    f(mediaExtractor2, bVarC, bufferInfo6, j10, -1L, file2, true);
                                                                                                                } else {
                                                                                                                    videoController2 = this;
                                                                                                                    bVar2 = bVarC;
                                                                                                                    z10 = true;
                                                                                                                }
                                                                                                                mediaExtractor2.release();
                                                                                                                if (bVar2 != null) {
                                                                                                                    bVar2.m(false);
                                                                                                                }
                                                                                                                StringBuilder sb1113 = new StringBuilder();
                                                                                                                sb1113.append(str);
                                                                                                                sb1113.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                                                                z11 = z13;
                                                                                                                videoController2.c(z10, z11);
                                                                                                                f85709f = file2;
                                                                                                                StringBuilder sb1114 = new StringBuilder();
                                                                                                                sb1114.append(videoController2.f85718a);
                                                                                                                sb1114.append("");
                                                                                                                StringBuilder sb1115 = new StringBuilder();
                                                                                                                sb1115.append(file2.getPath());
                                                                                                                sb1115.append("");
                                                                                                                StringBuilder sb1116 = new StringBuilder();
                                                                                                                sb1116.append(file.getPath());
                                                                                                                sb1116.append("");
                                                                                                                return z10;
                                                                                                            }
                                                                                                        } else {
                                                                                                            if (iDequeueOutputBuffer < 0) {
                                                                                                                throw new RuntimeException("unexpected result from decoder.dequeueOutputBuffer: " + iDequeueOutputBuffer);
                                                                                                            }
                                                                                                            if (bufferInfo.size != 0) {
                                                                                                                z16 = true;
                                                                                                            } else {
                                                                                                                z16 = false;
                                                                                                            }
                                                                                                            mediaCodecCreateDecoderByType.releaseOutputBuffer(iDequeueOutputBuffer, z16);
                                                                                                            if (z16) {
                                                                                                                try {
                                                                                                                    dVar.a();
                                                                                                                    z17 = false;
                                                                                                                } catch (Exception e20) {
                                                                                                                    e20.getMessage();
                                                                                                                    z17 = true;
                                                                                                                }
                                                                                                                if (z17) {
                                                                                                                    bVar3 = listener;
                                                                                                                    z22 = z22;
                                                                                                                    bufferInfo = bufferInfo;
                                                                                                                    j11 = j12;
                                                                                                                } else {
                                                                                                                    dVar.d(false);
                                                                                                                    aVar.f(bufferInfo.presentationTimeUs * 1000);
                                                                                                                    bVar3 = listener;
                                                                                                                    if (bVar3 != null) {
                                                                                                                        bufferInfo = bufferInfo;
                                                                                                                        j11 = j12;
                                                                                                                        try {
                                                                                                                            bVar3.onProgress((bufferInfo.presentationTimeUs / j11) * 100.0f);
                                                                                                                        } catch (Exception e21) {
                                                                                                                            e = e21;
                                                                                                                            exc = e;
                                                                                                                            mediaCodec = mediaCodecCreateDecoderByType;
                                                                                                                            exc.getMessage();
                                                                                                                            mediaCodecCreateDecoderByType = mediaCodec;
                                                                                                                            aVar2 = aVar;
                                                                                                                            i17 = iJ;
                                                                                                                            mediaExtractor2 = mediaExtractor2;
                                                                                                                            dVar = dVar;
                                                                                                                            z14 = true;
                                                                                                                            mediaExtractor2.unselectTrack(i17);
                                                                                                                            if (dVar != null) {
                                                                                                                                dVar.i();
                                                                                                                            }
                                                                                                                            if (aVar2 != null) {
                                                                                                                                aVar2.e();
                                                                                                                            }
                                                                                                                            if (mediaCodecCreateDecoderByType != null) {
                                                                                                                                mediaCodecCreateDecoderByType.stop();
                                                                                                                                mediaCodecCreateDecoderByType.release();
                                                                                                                            }
                                                                                                                            if (mediaCodecCreateEncoderByType != null) {
                                                                                                                                mediaCodecCreateEncoderByType.stop();
                                                                                                                                mediaCodecCreateEncoderByType.release();
                                                                                                                            }
                                                                                                                            z13 = z14;
                                                                                                                            j10 = -1;
                                                                                                                            if (z13) {
                                                                                                                                MediaCodec.BufferInfo bufferInfo7 = bufferInfo;
                                                                                                                                videoController2 = this;
                                                                                                                                bVar2 = bVarC;
                                                                                                                                z10 = true;
                                                                                                                                f(mediaExtractor2, bVarC, bufferInfo7, j10, -1L, file2, true);
                                                                                                                            } else {
                                                                                                                                videoController2 = this;
                                                                                                                                bVar2 = bVarC;
                                                                                                                                z10 = true;
                                                                                                                            }
                                                                                                                            mediaExtractor2.release();
                                                                                                                            if (bVar2 != null) {
                                                                                                                                bVar2.m(false);
                                                                                                                            }
                                                                                                                            StringBuilder sb1117 = new StringBuilder();
                                                                                                                            sb1117.append(str);
                                                                                                                            sb1117.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                                                                            z11 = z13;
                                                                                                                            videoController2.c(z10, z11);
                                                                                                                            f85709f = file2;
                                                                                                                            StringBuilder sb1118 = new StringBuilder();
                                                                                                                            sb1118.append(videoController2.f85718a);
                                                                                                                            sb1118.append("");
                                                                                                                            StringBuilder sb1119 = new StringBuilder();
                                                                                                                            sb1119.append(file2.getPath());
                                                                                                                            sb1119.append("");
                                                                                                                            StringBuilder sb11110 = new StringBuilder();
                                                                                                                            sb11110.append(file.getPath());
                                                                                                                            sb11110.append("");
                                                                                                                            return z10;
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        bufferInfo = bufferInfo;
                                                                                                                        j11 = j12;
                                                                                                                    }
                                                                                                                    aVar.g();
                                                                                                                }
                                                                                                            } else {
                                                                                                                bVar3 = listener;
                                                                                                                z22 = z22;
                                                                                                                bufferInfo = bufferInfo;
                                                                                                                j11 = j12;
                                                                                                            }
                                                                                                            if ((bufferInfo.flags & 4) != 0) {
                                                                                                                mediaCodecCreateEncoderByType.signalEndOfInputStream();
                                                                                                            }
                                                                                                        }
                                                                                                        z18 = z22;
                                                                                                        aVar3 = aVar;
                                                                                                        j12 = j11;
                                                                                                        bufferInfo = bufferInfo;
                                                                                                        z20 = z23;
                                                                                                    }
                                                                                                    z23 = false;
                                                                                                    z18 = z22;
                                                                                                    aVar3 = aVar;
                                                                                                    j12 = j11;
                                                                                                    bufferInfo = bufferInfo;
                                                                                                    z20 = z23;
                                                                                                } catch (Throwable th8) {
                                                                                                    th = th8;
                                                                                                    th = th;
                                                                                                    mediaExtractor = mediaExtractor2;
                                                                                                    str = str;
                                                                                                    if (mediaExtractor != null) {
                                                                                                        mediaExtractor.release();
                                                                                                    }
                                                                                                    if (bVarC != null) {
                                                                                                        bVarC.m(false);
                                                                                                    }
                                                                                                    StringBuilder sb11111 = new StringBuilder();
                                                                                                    sb11111.append(str);
                                                                                                    sb11111.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                                                    throw th;
                                                                                                }
                                                                                            } catch (Exception e22) {
                                                                                                e = e22;
                                                                                                bufferInfo = bufferInfo;
                                                                                                exc = e;
                                                                                                mediaCodec = mediaCodecCreateDecoderByType;
                                                                                                exc.getMessage();
                                                                                                mediaCodecCreateDecoderByType = mediaCodec;
                                                                                                aVar2 = aVar;
                                                                                                i17 = iJ;
                                                                                                mediaExtractor2 = mediaExtractor2;
                                                                                                dVar = dVar;
                                                                                                z14 = true;
                                                                                                mediaExtractor2.unselectTrack(i17);
                                                                                                if (dVar != null) {
                                                                                                    dVar.i();
                                                                                                }
                                                                                                if (aVar2 != null) {
                                                                                                    aVar2.e();
                                                                                                }
                                                                                                if (mediaCodecCreateDecoderByType != null) {
                                                                                                    mediaCodecCreateDecoderByType.stop();
                                                                                                    mediaCodecCreateDecoderByType.release();
                                                                                                }
                                                                                                if (mediaCodecCreateEncoderByType != null) {
                                                                                                    mediaCodecCreateEncoderByType.stop();
                                                                                                    mediaCodecCreateEncoderByType.release();
                                                                                                }
                                                                                                z13 = z14;
                                                                                                j10 = -1;
                                                                                                if (z13) {
                                                                                                    MediaCodec.BufferInfo bufferInfo8 = bufferInfo;
                                                                                                    videoController2 = this;
                                                                                                    bVar2 = bVarC;
                                                                                                    z10 = true;
                                                                                                    f(mediaExtractor2, bVarC, bufferInfo8, j10, -1L, file2, true);
                                                                                                } else {
                                                                                                    videoController2 = this;
                                                                                                    bVar2 = bVarC;
                                                                                                    z10 = true;
                                                                                                }
                                                                                                mediaExtractor2.release();
                                                                                                if (bVar2 != null) {
                                                                                                    bVar2.m(false);
                                                                                                }
                                                                                                StringBuilder sb11112 = new StringBuilder();
                                                                                                sb11112.append(str);
                                                                                                sb11112.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                                                z11 = z13;
                                                                                                videoController2.c(z10, z11);
                                                                                                f85709f = file2;
                                                                                                StringBuilder sb11113 = new StringBuilder();
                                                                                                sb11113.append(videoController2.f85718a);
                                                                                                sb11113.append("");
                                                                                                StringBuilder sb11114 = new StringBuilder();
                                                                                                sb11114.append(file2.getPath());
                                                                                                sb11114.append("");
                                                                                                StringBuilder sb11115 = new StringBuilder();
                                                                                                sb11115.append(file.getPath());
                                                                                                sb11115.append("");
                                                                                                return z10;
                                                                                            }
                                                                                        }
                                                                                        bVarC = bVarC;
                                                                                        z21 = z24;
                                                                                    } catch (Exception e23) {
                                                                                        e = e23;
                                                                                        bVarC = bVarC;
                                                                                    } catch (Throwable th9) {
                                                                                        th = th9;
                                                                                        bVarC = bVarC;
                                                                                    }
                                                                                } else {
                                                                                    bVarC = bVarC;
                                                                                    z19 = z19;
                                                                                    if (iDequeueOutputBuffer2 < 0) {
                                                                                        throw new RuntimeException("unexpected result from encoder.dequeueOutputBuffer: " + iDequeueOutputBuffer2);
                                                                                    }
                                                                                    try {
                                                                                        try {
                                                                                            ByteBuffer outputBuffer = mediaCodecCreateEncoderByType.getOutputBuffer(iDequeueOutputBuffer2);
                                                                                            if (outputBuffer == null) {
                                                                                                throw new RuntimeException("encoderOutputBuffer " + iDequeueOutputBuffer2 + " was null");
                                                                                            }
                                                                                            int i23 = bufferInfo.size;
                                                                                            iJ = iJ;
                                                                                            if (i23 > 1) {
                                                                                                try {
                                                                                                    if ((bufferInfo.flags & 2) == 0) {
                                                                                                        try {
                                                                                                            if (bVarC.q(iA, outputBuffer, bufferInfo, false)) {
                                                                                                                videoController = this;
                                                                                                                try {
                                                                                                                    videoController.c(false, false);
                                                                                                                } catch (Exception e24) {
                                                                                                                    e = e24;
                                                                                                                    exc = e;
                                                                                                                    aVar = aVar3;
                                                                                                                    mediaExtractor2 = mediaExtractor2;
                                                                                                                    mediaCodec = mediaCodecCreateDecoderByType;
                                                                                                                    bufferInfo = bufferInfo;
                                                                                                                    exc.getMessage();
                                                                                                                    mediaCodecCreateDecoderByType = mediaCodec;
                                                                                                                    aVar2 = aVar;
                                                                                                                    i17 = iJ;
                                                                                                                    mediaExtractor2 = mediaExtractor2;
                                                                                                                    dVar = dVar;
                                                                                                                    z14 = true;
                                                                                                                    mediaExtractor2.unselectTrack(i17);
                                                                                                                    if (dVar != null) {
                                                                                                                        dVar.i();
                                                                                                                    }
                                                                                                                    if (aVar2 != null) {
                                                                                                                        aVar2.e();
                                                                                                                    }
                                                                                                                    if (mediaCodecCreateDecoderByType != null) {
                                                                                                                        mediaCodecCreateDecoderByType.stop();
                                                                                                                        mediaCodecCreateDecoderByType.release();
                                                                                                                    }
                                                                                                                    if (mediaCodecCreateEncoderByType != null) {
                                                                                                                        mediaCodecCreateEncoderByType.stop();
                                                                                                                        mediaCodecCreateEncoderByType.release();
                                                                                                                    }
                                                                                                                    z13 = z14;
                                                                                                                    j10 = -1;
                                                                                                                    if (z13) {
                                                                                                                        MediaCodec.BufferInfo bufferInfo9 = bufferInfo;
                                                                                                                        videoController2 = this;
                                                                                                                        bVar2 = bVarC;
                                                                                                                        z10 = true;
                                                                                                                        f(mediaExtractor2, bVarC, bufferInfo9, j10, -1L, file2, true);
                                                                                                                    } else {
                                                                                                                        videoController2 = this;
                                                                                                                        bVar2 = bVarC;
                                                                                                                        z10 = true;
                                                                                                                    }
                                                                                                                    mediaExtractor2.release();
                                                                                                                    if (bVar2 != null) {
                                                                                                                        bVar2.m(false);
                                                                                                                    }
                                                                                                                    StringBuilder sb11116 = new StringBuilder();
                                                                                                                    sb11116.append(str);
                                                                                                                    sb11116.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                                                                    z11 = z13;
                                                                                                                    videoController2.c(z10, z11);
                                                                                                                    f85709f = file2;
                                                                                                                    StringBuilder sb11117 = new StringBuilder();
                                                                                                                    sb11117.append(videoController2.f85718a);
                                                                                                                    sb11117.append("");
                                                                                                                    StringBuilder sb11118 = new StringBuilder();
                                                                                                                    sb11118.append(file2.getPath());
                                                                                                                    sb11118.append("");
                                                                                                                    StringBuilder sb11119 = new StringBuilder();
                                                                                                                    sb11119.append(file.getPath());
                                                                                                                    sb11119.append("");
                                                                                                                    return z10;
                                                                                                                } catch (Throwable th10) {
                                                                                                                    th = th10;
                                                                                                                    th = th;
                                                                                                                    mediaExtractor = mediaExtractor2;
                                                                                                                    str = str;
                                                                                                                    if (mediaExtractor != null) {
                                                                                                                        mediaExtractor.release();
                                                                                                                    }
                                                                                                                    if (bVarC != null) {
                                                                                                                        bVarC.m(false);
                                                                                                                    }
                                                                                                                    StringBuilder sb111110 = new StringBuilder();
                                                                                                                    sb111110.append(str);
                                                                                                                    sb111110.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                                                                    throw th;
                                                                                                                }
                                                                                                            }
                                                                                                        } catch (Exception e25) {
                                                                                                            e = e25;
                                                                                                        } catch (Throwable th11) {
                                                                                                            th = th11;
                                                                                                            videoController = this;
                                                                                                        }
                                                                                                    } else if (iA == -5) {
                                                                                                        byte[] bArr = new byte[i23];
                                                                                                        outputBuffer.limit(bufferInfo.offset + i23);
                                                                                                        outputBuffer.position(bufferInfo.offset);
                                                                                                        outputBuffer.get(bArr);
                                                                                                        byte b10 = 1;
                                                                                                        int i24 = bufferInfo.size - 1;
                                                                                                        while (true) {
                                                                                                            if (i24 < 0 || i24 <= 3) {
                                                                                                                mediaExtractor2 = mediaExtractor2;
                                                                                                                byteBufferAllocate = null;
                                                                                                                byteBufferAllocate2 = null;
                                                                                                                break;
                                                                                                            }
                                                                                                            if (bArr[i24] == b10 && bArr[i24 - 1] == 0 && bArr[i24 - 2] == 0) {
                                                                                                                int i25 = i24 - 3;
                                                                                                                if (bArr[i25] == 0) {
                                                                                                                    byteBufferAllocate = ByteBuffer.allocate(i25);
                                                                                                                    byteBufferAllocate2 = ByteBuffer.allocate(bufferInfo.size - i25);
                                                                                                                    mediaExtractor2 = mediaExtractor2;
                                                                                                                    try {
                                                                                                                        byteBufferAllocate.put(bArr, 0, i25).position(0);
                                                                                                                        byteBufferAllocate2.put(bArr, i25, bufferInfo.size - i25).position(0);
                                                                                                                        break;
                                                                                                                    } catch (Exception e26) {
                                                                                                                        e = e26;
                                                                                                                        exc = e;
                                                                                                                        aVar = aVar3;
                                                                                                                        bufferInfo = bufferInfo;
                                                                                                                        mediaCodec = mediaCodecCreateDecoderByType;
                                                                                                                        exc.getMessage();
                                                                                                                        mediaCodecCreateDecoderByType = mediaCodec;
                                                                                                                        aVar2 = aVar;
                                                                                                                        i17 = iJ;
                                                                                                                        mediaExtractor2 = mediaExtractor2;
                                                                                                                        dVar = dVar;
                                                                                                                        z14 = true;
                                                                                                                        mediaExtractor2.unselectTrack(i17);
                                                                                                                        if (dVar != null) {
                                                                                                                            dVar.i();
                                                                                                                        }
                                                                                                                        if (aVar2 != null) {
                                                                                                                            aVar2.e();
                                                                                                                        }
                                                                                                                        if (mediaCodecCreateDecoderByType != null) {
                                                                                                                            mediaCodecCreateDecoderByType.stop();
                                                                                                                            mediaCodecCreateDecoderByType.release();
                                                                                                                        }
                                                                                                                        if (mediaCodecCreateEncoderByType != null) {
                                                                                                                            mediaCodecCreateEncoderByType.stop();
                                                                                                                            mediaCodecCreateEncoderByType.release();
                                                                                                                        }
                                                                                                                        z13 = z14;
                                                                                                                        j10 = -1;
                                                                                                                        if (z13) {
                                                                                                                            MediaCodec.BufferInfo bufferInfo10 = bufferInfo;
                                                                                                                            videoController2 = this;
                                                                                                                            bVar2 = bVarC;
                                                                                                                            z10 = true;
                                                                                                                            f(mediaExtractor2, bVarC, bufferInfo10, j10, -1L, file2, true);
                                                                                                                        } else {
                                                                                                                            videoController2 = this;
                                                                                                                            bVar2 = bVarC;
                                                                                                                            z10 = true;
                                                                                                                        }
                                                                                                                        mediaExtractor2.release();
                                                                                                                        if (bVar2 != null) {
                                                                                                                            bVar2.m(false);
                                                                                                                        }
                                                                                                                        StringBuilder sb111111 = new StringBuilder();
                                                                                                                        sb111111.append(str);
                                                                                                                        sb111111.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                                                                        z11 = z13;
                                                                                                                        videoController2.c(z10, z11);
                                                                                                                        f85709f = file2;
                                                                                                                        StringBuilder sb111112 = new StringBuilder();
                                                                                                                        sb111112.append(videoController2.f85718a);
                                                                                                                        sb111112.append("");
                                                                                                                        StringBuilder sb111113 = new StringBuilder();
                                                                                                                        sb111113.append(file2.getPath());
                                                                                                                        sb111113.append("");
                                                                                                                        StringBuilder sb111114 = new StringBuilder();
                                                                                                                        sb111114.append(file.getPath());
                                                                                                                        sb111114.append("");
                                                                                                                        return z10;
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                            i24--;
                                                                                                            mediaExtractor2 = mediaExtractor2;
                                                                                                            b10 = 1;
                                                                                                        }
                                                                                                        MediaFormat mediaFormatCreateVideoFormat2 = MediaFormat.createVideoFormat(f85710g, i11, i15);
                                                                                                        if (byteBufferAllocate != null && byteBufferAllocate2 != null) {
                                                                                                            mediaFormatCreateVideoFormat2.setByteBuffer("csd-0", byteBufferAllocate);
                                                                                                            mediaFormatCreateVideoFormat2.setByteBuffer("csd-1", byteBufferAllocate2);
                                                                                                        }
                                                                                                        iA = bVarC.a(mediaFormatCreateVideoFormat2, false);
                                                                                                    }
                                                                                                    mediaExtractor2 = mediaExtractor2;
                                                                                                } catch (Exception e27) {
                                                                                                    e = e27;
                                                                                                    mediaExtractor2 = mediaExtractor2;
                                                                                                }
                                                                                            } else {
                                                                                                mediaExtractor2 = mediaExtractor2;
                                                                                            }
                                                                                            try {
                                                                                                z22 = (bufferInfo.flags & 4) != 0;
                                                                                                mediaCodecCreateEncoderByType.releaseOutputBuffer(iDequeueOutputBuffer2, false);
                                                                                                if (iDequeueOutputBuffer2 != -1) {
                                                                                                    z18 = z22;
                                                                                                    z20 = z23;
                                                                                                } else {
                                                                                                    aVar = aVar3;
                                                                                                    iDequeueOutputBuffer = mediaCodecCreateDecoderByType.dequeueOutputBuffer(bufferInfo, 2500L);
                                                                                                    if (iDequeueOutputBuffer == -1) {
                                                                                                        bVar3 = listener;
                                                                                                        z22 = z22;
                                                                                                        bufferInfo = bufferInfo;
                                                                                                        j11 = j12;
                                                                                                    } else {
                                                                                                        if (iDequeueOutputBuffer == -3) {
                                                                                                            bVar3 = listener;
                                                                                                            z22 = z22;
                                                                                                            bufferInfo = bufferInfo;
                                                                                                            j11 = j12;
                                                                                                        } else if (iDequeueOutputBuffer == -2) {
                                                                                                            MediaFormat outputFormat3 = mediaCodecCreateDecoderByType.getOutputFormat();
                                                                                                            StringBuilder sb21 = new StringBuilder();
                                                                                                            sb21.append("newFormat = ");
                                                                                                            sb21.append(outputFormat3);
                                                                                                            bVar3 = listener;
                                                                                                            z22 = z22;
                                                                                                            bufferInfo = bufferInfo;
                                                                                                            j11 = j12;
                                                                                                        } else {
                                                                                                            if (iDequeueOutputBuffer < 0) {
                                                                                                                throw new RuntimeException("unexpected result from decoder.dequeueOutputBuffer: " + iDequeueOutputBuffer);
                                                                                                            }
                                                                                                            if (bufferInfo.size != 0) {
                                                                                                                z16 = true;
                                                                                                            } else {
                                                                                                                z16 = false;
                                                                                                            }
                                                                                                            mediaCodecCreateDecoderByType.releaseOutputBuffer(iDequeueOutputBuffer, z16);
                                                                                                            if (z16) {
                                                                                                                dVar.a();
                                                                                                                z17 = false;
                                                                                                                if (z17) {
                                                                                                                    dVar.d(false);
                                                                                                                    aVar.f(bufferInfo.presentationTimeUs * 1000);
                                                                                                                    bVar3 = listener;
                                                                                                                    if (bVar3 != null) {
                                                                                                                        bufferInfo = bufferInfo;
                                                                                                                        j11 = j12;
                                                                                                                        bVar3.onProgress((bufferInfo.presentationTimeUs / j11) * 100.0f);
                                                                                                                    } else {
                                                                                                                        bufferInfo = bufferInfo;
                                                                                                                        j11 = j12;
                                                                                                                    }
                                                                                                                    aVar.g();
                                                                                                                } else {
                                                                                                                    bVar3 = listener;
                                                                                                                    z22 = z22;
                                                                                                                    bufferInfo = bufferInfo;
                                                                                                                    j11 = j12;
                                                                                                                }
                                                                                                            } else {
                                                                                                                bVar3 = listener;
                                                                                                                z22 = z22;
                                                                                                                bufferInfo = bufferInfo;
                                                                                                                j11 = j12;
                                                                                                            }
                                                                                                            if ((bufferInfo.flags & 4) != 0) {
                                                                                                                mediaCodecCreateEncoderByType.signalEndOfInputStream();
                                                                                                            }
                                                                                                        }
                                                                                                        z18 = z22;
                                                                                                        aVar3 = aVar;
                                                                                                        j12 = j11;
                                                                                                        bufferInfo = bufferInfo;
                                                                                                        z20 = z23;
                                                                                                    }
                                                                                                    z23 = false;
                                                                                                    z18 = z22;
                                                                                                    aVar3 = aVar;
                                                                                                    j12 = j11;
                                                                                                    bufferInfo = bufferInfo;
                                                                                                    z20 = z23;
                                                                                                }
                                                                                                bVarC = bVarC;
                                                                                                z21 = z24;
                                                                                            } catch (Exception e28) {
                                                                                                e = e28;
                                                                                                aVar = aVar3;
                                                                                                bufferInfo = bufferInfo;
                                                                                                exc = e;
                                                                                                mediaCodec = mediaCodecCreateDecoderByType;
                                                                                                exc.getMessage();
                                                                                                mediaCodecCreateDecoderByType = mediaCodec;
                                                                                                aVar2 = aVar;
                                                                                                i17 = iJ;
                                                                                                mediaExtractor2 = mediaExtractor2;
                                                                                                dVar = dVar;
                                                                                                z14 = true;
                                                                                                mediaExtractor2.unselectTrack(i17);
                                                                                                if (dVar != null) {
                                                                                                    dVar.i();
                                                                                                }
                                                                                                if (aVar2 != null) {
                                                                                                    aVar2.e();
                                                                                                }
                                                                                                if (mediaCodecCreateDecoderByType != null) {
                                                                                                    mediaCodecCreateDecoderByType.stop();
                                                                                                    mediaCodecCreateDecoderByType.release();
                                                                                                }
                                                                                                if (mediaCodecCreateEncoderByType != null) {
                                                                                                    mediaCodecCreateEncoderByType.stop();
                                                                                                    mediaCodecCreateEncoderByType.release();
                                                                                                }
                                                                                                z13 = z14;
                                                                                                j10 = -1;
                                                                                                if (z13) {
                                                                                                    MediaCodec.BufferInfo bufferInfo11 = bufferInfo;
                                                                                                    videoController2 = this;
                                                                                                    bVar2 = bVarC;
                                                                                                    z10 = true;
                                                                                                    f(mediaExtractor2, bVarC, bufferInfo11, j10, -1L, file2, true);
                                                                                                } else {
                                                                                                    videoController2 = this;
                                                                                                    bVar2 = bVarC;
                                                                                                    z10 = true;
                                                                                                }
                                                                                                mediaExtractor2.release();
                                                                                                if (bVar2 != null) {
                                                                                                    bVar2.m(false);
                                                                                                }
                                                                                                StringBuilder sb111115 = new StringBuilder();
                                                                                                sb111115.append(str);
                                                                                                sb111115.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                                                z11 = z13;
                                                                                                videoController2.c(z10, z11);
                                                                                                f85709f = file2;
                                                                                                StringBuilder sb111116 = new StringBuilder();
                                                                                                sb111116.append(videoController2.f85718a);
                                                                                                sb111116.append("");
                                                                                                StringBuilder sb111117 = new StringBuilder();
                                                                                                sb111117.append(file2.getPath());
                                                                                                sb111117.append("");
                                                                                                StringBuilder sb111118 = new StringBuilder();
                                                                                                sb111118.append(file.getPath());
                                                                                                sb111118.append("");
                                                                                                return z10;
                                                                                            }
                                                                                        } catch (Exception e29) {
                                                                                            e = e29;
                                                                                            iJ = iJ;
                                                                                            aVar = aVar3;
                                                                                            mediaExtractor2 = mediaExtractor2;
                                                                                        }
                                                                                    } catch (Throwable th12) {
                                                                                        th = th12;
                                                                                        mediaExtractor2 = mediaExtractor2;
                                                                                        th = th;
                                                                                        mediaExtractor = mediaExtractor2;
                                                                                        str = str;
                                                                                        if (mediaExtractor != null) {
                                                                                            mediaExtractor.release();
                                                                                        }
                                                                                        if (bVarC != null) {
                                                                                            bVarC.m(false);
                                                                                        }
                                                                                        StringBuilder sb111119 = new StringBuilder();
                                                                                        sb111119.append(str);
                                                                                        sb111119.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                                        throw th;
                                                                                    }
                                                                                }
                                                                            }
                                                                            iJ = iJ;
                                                                            z19 = z19;
                                                                            if (iDequeueOutputBuffer2 != -1) {
                                                                                z18 = z22;
                                                                                z20 = z23;
                                                                            } else {
                                                                                aVar = aVar3;
                                                                                iDequeueOutputBuffer = mediaCodecCreateDecoderByType.dequeueOutputBuffer(bufferInfo, 2500L);
                                                                                if (iDequeueOutputBuffer == -1) {
                                                                                    bVar3 = listener;
                                                                                    z22 = z22;
                                                                                    bufferInfo = bufferInfo;
                                                                                    j11 = j12;
                                                                                } else {
                                                                                    if (iDequeueOutputBuffer == -3) {
                                                                                        bVar3 = listener;
                                                                                        z22 = z22;
                                                                                        bufferInfo = bufferInfo;
                                                                                        j11 = j12;
                                                                                    } else if (iDequeueOutputBuffer == -2) {
                                                                                        MediaFormat outputFormat4 = mediaCodecCreateDecoderByType.getOutputFormat();
                                                                                        StringBuilder sb22 = new StringBuilder();
                                                                                        sb22.append("newFormat = ");
                                                                                        sb22.append(outputFormat4);
                                                                                        bVar3 = listener;
                                                                                        z22 = z22;
                                                                                        bufferInfo = bufferInfo;
                                                                                        j11 = j12;
                                                                                    } else {
                                                                                        if (iDequeueOutputBuffer < 0) {
                                                                                            throw new RuntimeException("unexpected result from decoder.dequeueOutputBuffer: " + iDequeueOutputBuffer);
                                                                                        }
                                                                                        if (bufferInfo.size != 0) {
                                                                                            z16 = true;
                                                                                        } else {
                                                                                            z16 = false;
                                                                                        }
                                                                                        mediaCodecCreateDecoderByType.releaseOutputBuffer(iDequeueOutputBuffer, z16);
                                                                                        if (z16) {
                                                                                            dVar.a();
                                                                                            z17 = false;
                                                                                            if (z17) {
                                                                                                dVar.d(false);
                                                                                                aVar.f(bufferInfo.presentationTimeUs * 1000);
                                                                                                bVar3 = listener;
                                                                                                if (bVar3 != null) {
                                                                                                    bufferInfo = bufferInfo;
                                                                                                    j11 = j12;
                                                                                                    bVar3.onProgress((bufferInfo.presentationTimeUs / j11) * 100.0f);
                                                                                                } else {
                                                                                                    bufferInfo = bufferInfo;
                                                                                                    j11 = j12;
                                                                                                }
                                                                                                aVar.g();
                                                                                            } else {
                                                                                                bVar3 = listener;
                                                                                                z22 = z22;
                                                                                                bufferInfo = bufferInfo;
                                                                                                j11 = j12;
                                                                                            }
                                                                                        } else {
                                                                                            bVar3 = listener;
                                                                                            z22 = z22;
                                                                                            bufferInfo = bufferInfo;
                                                                                            j11 = j12;
                                                                                        }
                                                                                        if ((bufferInfo.flags & 4) != 0) {
                                                                                            mediaCodecCreateEncoderByType.signalEndOfInputStream();
                                                                                        }
                                                                                    }
                                                                                    z18 = z22;
                                                                                    aVar3 = aVar;
                                                                                    j12 = j11;
                                                                                    bufferInfo = bufferInfo;
                                                                                    z20 = z23;
                                                                                }
                                                                                z23 = false;
                                                                                z18 = z22;
                                                                                aVar3 = aVar;
                                                                                j12 = j11;
                                                                                bufferInfo = bufferInfo;
                                                                                z20 = z23;
                                                                            }
                                                                            bVarC = bVarC;
                                                                            z21 = z24;
                                                                        }
                                                                    }
                                                                    i22 = iA;
                                                                }
                                                                MediaExtractor mediaExtractor3 = mediaExtractor2;
                                                                bVarC = bVarC;
                                                                bufferInfo = bufferInfo;
                                                                aVar2 = aVar3;
                                                                i17 = iJ;
                                                                mediaExtractor2 = mediaExtractor3;
                                                                z14 = false;
                                                            } catch (Exception e30) {
                                                                e = e30;
                                                                iJ = iJ;
                                                                aVar = aVar3;
                                                                mediaExtractor2 = mediaExtractor2;
                                                                bVarC = bVarC;
                                                                bufferInfo = bufferInfo;
                                                                exc = e;
                                                                mediaCodec = mediaCodecCreateDecoderByType;
                                                                exc.getMessage();
                                                                mediaCodecCreateDecoderByType = mediaCodec;
                                                                aVar2 = aVar;
                                                                i17 = iJ;
                                                                mediaExtractor2 = mediaExtractor2;
                                                                dVar = dVar;
                                                                z14 = true;
                                                                mediaExtractor2.unselectTrack(i17);
                                                                if (dVar != null) {
                                                                    dVar.i();
                                                                }
                                                                if (aVar2 != null) {
                                                                    aVar2.e();
                                                                }
                                                                if (mediaCodecCreateDecoderByType != null) {
                                                                    mediaCodecCreateDecoderByType.stop();
                                                                    mediaCodecCreateDecoderByType.release();
                                                                }
                                                                if (mediaCodecCreateEncoderByType != null) {
                                                                    mediaCodecCreateEncoderByType.stop();
                                                                    mediaCodecCreateEncoderByType.release();
                                                                }
                                                                z13 = z14;
                                                                j10 = -1;
                                                                if (z13) {
                                                                    MediaCodec.BufferInfo bufferInfo12 = bufferInfo;
                                                                    videoController2 = this;
                                                                    bVar2 = bVarC;
                                                                    z10 = true;
                                                                    f(mediaExtractor2, bVarC, bufferInfo12, j10, -1L, file2, true);
                                                                } else {
                                                                    videoController2 = this;
                                                                    bVar2 = bVarC;
                                                                    z10 = true;
                                                                }
                                                                mediaExtractor2.release();
                                                                if (bVar2 != null) {
                                                                    bVar2.m(false);
                                                                }
                                                                StringBuilder sb1111110 = new StringBuilder();
                                                                sb1111110.append(str);
                                                                sb1111110.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                z11 = z13;
                                                                videoController2.c(z10, z11);
                                                                f85709f = file2;
                                                                StringBuilder sb1111111 = new StringBuilder();
                                                                sb1111111.append(videoController2.f85718a);
                                                                sb1111111.append("");
                                                                StringBuilder sb1111112 = new StringBuilder();
                                                                sb1111112.append(file2.getPath());
                                                                sb1111112.append("");
                                                                StringBuilder sb1111113 = new StringBuilder();
                                                                sb1111113.append(file.getPath());
                                                                sb1111113.append("");
                                                                return z10;
                                                            } catch (Throwable th13) {
                                                                th = th13;
                                                                mediaExtractor2 = mediaExtractor2;
                                                                bVarC = bVarC;
                                                                th = th;
                                                                mediaExtractor = mediaExtractor2;
                                                                str = str;
                                                                if (mediaExtractor != null) {
                                                                    mediaExtractor.release();
                                                                }
                                                                if (bVarC != null) {
                                                                    bVarC.m(false);
                                                                }
                                                                StringBuilder sb1111114 = new StringBuilder();
                                                                sb1111114.append(str);
                                                                sb1111114.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                                throw th;
                                                            }
                                                        } catch (Exception e31) {
                                                            e = e31;
                                                            iJ = iJ;
                                                            aVar = aVar3;
                                                            str = "time = ";
                                                        }
                                                    } catch (Exception e32) {
                                                        iJ = iJ;
                                                        aVar = aVar3;
                                                        str = "time = ";
                                                        mediaExtractor2 = mediaExtractor2;
                                                        bVarC = bVarC;
                                                        bufferInfo = bufferInfo;
                                                        exc = e32;
                                                        mediaCodec = mediaCodecCreateDecoderByType;
                                                        dVar = null;
                                                    }
                                                } catch (Exception e33) {
                                                    iJ = iJ;
                                                    aVar = aVar3;
                                                    str = "time = ";
                                                    mediaExtractor2 = mediaExtractor2;
                                                    bVarC = bVarC;
                                                    bufferInfo = bufferInfo;
                                                    exc = e33;
                                                    dVar = null;
                                                    mediaCodec = null;
                                                }
                                            } catch (Exception e34) {
                                                exc = e34;
                                                dVar = null;
                                                mediaCodec = null;
                                                aVar = null;
                                                exc.getMessage();
                                                mediaCodecCreateDecoderByType = mediaCodec;
                                                aVar2 = aVar;
                                                i17 = iJ;
                                                mediaExtractor2 = mediaExtractor2;
                                                dVar = dVar;
                                                z14 = true;
                                                mediaExtractor2.unselectTrack(i17);
                                                if (dVar != null) {
                                                    dVar.i();
                                                }
                                                if (aVar2 != null) {
                                                    aVar2.e();
                                                }
                                                if (mediaCodecCreateDecoderByType != null) {
                                                    mediaCodecCreateDecoderByType.stop();
                                                    mediaCodecCreateDecoderByType.release();
                                                }
                                                if (mediaCodecCreateEncoderByType != null) {
                                                    mediaCodecCreateEncoderByType.stop();
                                                    mediaCodecCreateEncoderByType.release();
                                                }
                                                z13 = z14;
                                                j10 = -1;
                                                if (z13) {
                                                    MediaCodec.BufferInfo bufferInfo13 = bufferInfo;
                                                    videoController2 = this;
                                                    bVar2 = bVarC;
                                                    z10 = true;
                                                    f(mediaExtractor2, bVarC, bufferInfo13, j10, -1L, file2, true);
                                                } else {
                                                    videoController2 = this;
                                                    bVar2 = bVarC;
                                                    z10 = true;
                                                }
                                                mediaExtractor2.release();
                                                if (bVar2 != null) {
                                                    bVar2.m(false);
                                                }
                                                StringBuilder sb1111115 = new StringBuilder();
                                                sb1111115.append(str);
                                                sb1111115.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                                z11 = z13;
                                                videoController2.c(z10, z11);
                                                f85709f = file2;
                                                StringBuilder sb1111116 = new StringBuilder();
                                                sb1111116.append(videoController2.f85718a);
                                                sb1111116.append("");
                                                StringBuilder sb1111117 = new StringBuilder();
                                                sb1111117.append(file2.getPath());
                                                sb1111117.append("");
                                                StringBuilder sb1111118 = new StringBuilder();
                                                sb1111118.append(file.getPath());
                                                sb1111118.append("");
                                                return z10;
                                            }
                                        } catch (Exception e35) {
                                            exc = e35;
                                            dVar = null;
                                            mediaCodecCreateEncoderByType = null;
                                        }
                                        try {
                                            mediaExtractor2.unselectTrack(i17);
                                            if (dVar != null) {
                                                dVar.i();
                                            }
                                            if (aVar2 != null) {
                                                aVar2.e();
                                            }
                                            if (mediaCodecCreateDecoderByType != null) {
                                                mediaCodecCreateDecoderByType.stop();
                                                mediaCodecCreateDecoderByType.release();
                                            }
                                            if (mediaCodecCreateEncoderByType != null) {
                                                mediaCodecCreateEncoderByType.stop();
                                                mediaCodecCreateEncoderByType.release();
                                            }
                                        } catch (Exception e36) {
                                            e = e36;
                                            videoController2 = this;
                                            mediaExtractor = mediaExtractor2;
                                            str = str;
                                            z10 = true;
                                            e.getMessage();
                                            if (mediaExtractor != null) {
                                                mediaExtractor.release();
                                            }
                                            if (bVarC != null) {
                                                bVarC.m(false);
                                            }
                                            StringBuilder sb120 = new StringBuilder();
                                            sb120.append(str);
                                            sb120.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                            z11 = true;
                                            videoController2.c(z10, z11);
                                            f85709f = file2;
                                            StringBuilder sb1111119 = new StringBuilder();
                                            sb1111119.append(videoController2.f85718a);
                                            sb1111119.append("");
                                            StringBuilder sb11111110 = new StringBuilder();
                                            sb11111110.append(file2.getPath());
                                            sb11111110.append("");
                                            StringBuilder sb11111111 = new StringBuilder();
                                            sb11111111.append(file.getPath());
                                            sb11111111.append("");
                                            return z10;
                                        } catch (Throwable th14) {
                                            th2 = th14;
                                            th = th2;
                                            mediaExtractor = mediaExtractor2;
                                            str = str;
                                            if (mediaExtractor != null) {
                                                mediaExtractor.release();
                                            }
                                            if (bVarC != null) {
                                                bVarC.m(false);
                                            }
                                            StringBuilder sb11111112 = new StringBuilder();
                                            sb11111112.append(str);
                                            sb11111112.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                            throw th;
                                        }
                                    } catch (Throwable th15) {
                                        th = th15;
                                        str = "time = ";
                                    }
                                } else {
                                    str = "time = ";
                                    mediaExtractor2 = mediaExtractor2;
                                    bVarC = bVarC;
                                    bufferInfo = bufferInfo;
                                    z14 = false;
                                }
                                z13 = z14;
                                j10 = -1;
                                if (z13) {
                                    MediaCodec.BufferInfo bufferInfo14 = bufferInfo;
                                    videoController2 = this;
                                    bVar2 = bVarC;
                                    z10 = true;
                                    f(mediaExtractor2, bVarC, bufferInfo14, j10, -1L, file2, true);
                                } else {
                                    videoController2 = this;
                                    bVar2 = bVarC;
                                    z10 = true;
                                }
                                mediaExtractor2.release();
                                if (bVar2 != null) {
                                    bVar2.m(false);
                                }
                                StringBuilder sb11111113 = new StringBuilder();
                                sb11111113.append(str);
                                sb11111113.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                z11 = z13;
                            } catch (Exception e37) {
                                e = e37;
                                z10 = true;
                                mediaExtractor = mediaExtractor2;
                                bVarC = bVarC;
                                e.getMessage();
                                if (mediaExtractor != null) {
                                    mediaExtractor.release();
                                }
                                if (bVarC != null) {
                                    bVarC.m(false);
                                }
                                StringBuilder sb121 = new StringBuilder();
                                sb121.append(str);
                                sb121.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                z11 = true;
                                videoController2.c(z10, z11);
                                f85709f = file2;
                                StringBuilder sb11111114 = new StringBuilder();
                                sb11111114.append(videoController2.f85718a);
                                sb11111114.append("");
                                StringBuilder sb11111115 = new StringBuilder();
                                sb11111115.append(file2.getPath());
                                sb11111115.append("");
                                StringBuilder sb11111116 = new StringBuilder();
                                sb11111116.append(file.getPath());
                                sb11111116.append("");
                                return z10;
                            } catch (Throwable th16) {
                                th = th16;
                                th = th;
                                mediaExtractor = mediaExtractor2;
                                bVarC = bVarC;
                                if (mediaExtractor != null) {
                                    mediaExtractor.release();
                                }
                                if (bVarC != null) {
                                    bVarC.m(false);
                                }
                                StringBuilder sb11111117 = new StringBuilder();
                                sb11111117.append(str);
                                sb11111117.append(System.currentTimeMillis() - jCurrentTimeMillis);
                                throw th;
                            }
                        } catch (Throwable th17) {
                            th = th17;
                            str = "time = ";
                            mediaExtractor = mediaExtractor2;
                            bVarC = bVar;
                        }
                    } catch (Exception e38) {
                        e = e38;
                        file = file;
                        file2 = file2;
                        z10 = true;
                    } catch (Throwable th18) {
                        th = th18;
                    }
                } catch (Exception e39) {
                    e = e39;
                    file = file;
                    file2 = file2;
                    videoController2 = videoController2;
                    str = "time = ";
                    z10 = true;
                    bVarC = bVarC;
                    mediaExtractor = null;
                } catch (Throwable th19) {
                    str = "time = ";
                    th = th19;
                    bVarC = bVarC;
                    mediaExtractor = null;
                }
            } catch (Exception e40) {
                e = e40;
                file = file;
                file2 = file2;
                videoController2 = videoController2;
                str = "time = ";
                z10 = true;
                mediaExtractor = null;
                bVarC = null;
            } catch (Throwable th20) {
                str = "time = ";
                th = th20;
                mediaExtractor = null;
                bVarC = null;
            }
            videoController2.c(z10, z11);
            f85709f = file2;
            StringBuilder sb11111118 = new StringBuilder();
            sb11111118.append(videoController2.f85718a);
            sb11111118.append("");
            StringBuilder sb11111119 = new StringBuilder();
            sb11111119.append(file2.getPath());
            sb11111119.append("");
            StringBuilder sb111111110 = new StringBuilder();
            sb111111110.append(file.getPath());
            sb111111110.append("");
            return z10;
        }
        i10 = iIntValue2 / 2;
        i11 = iIntValue3 / 2;
        i12 = i10 * i11;
        i13 = i12 * 10;
        int i110 = i13;
        File file3 = new File(destinationPath);
        if (iIntValue != 90) {
            i15 = i10;
            i14 = 0;
        } else if (iIntValue == 180) {
            i15 = i11;
            i11 = i10;
            i14 = 0;
        } else if (iIntValue == 270) {
            i15 = i10;
            i14 = 0;
        } else {
            int i111 = i11;
            i11 = i10;
            i14 = iIntValue;
            i15 = i111;
        }
        file = new File(videoController2.f85718a);
        long j13 = jLongValue;
        if (!file.canRead()) {
            videoController2.c(true, true);
            return false;
        }
        videoController2.f85719b = true;
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (i11 != 0) {
        }
        videoController2.c(true, true);
        return false;
    }

    public void g(String path, String dest) {
        k(path, dest);
    }
}

package org.hmwebrtc;

import android.graphics.SurfaceTexture;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.LinkedBlockingDeque;
import org.hmwebrtc.utils.FiledStringParser;
import org.hmwebrtc.utils.PathUtils;

/* JADX INFO: loaded from: classes10.dex */
class CaptureIdImageGenerator {
    private static final String TAG = "CaptureIdImageGenerator";
    private final BlockingDeque<CaptureInfo> mCaptureInfoList = new LinkedBlockingDeque();
    private int mGengerateTrackId;
    private SurfaceTextureOverlap mOverlap;

    public static class CaptureInfo {
        public int mCaptureId;
        public int mTrackId;

        public CaptureInfo(int i10, int i11) {
            this.mCaptureId = i10;
            this.mTrackId = i11;
        }
    }

    public CaptureIdImageGenerator(SurfaceTextureHelper surfaceTextureHelper) {
        if (surfaceTextureHelper != null) {
            this.mOverlap = createOverlap(surfaceTextureHelper);
        }
    }

    static /* synthetic */ int access$008(CaptureIdImageGenerator captureIdImageGenerator) {
        int i10 = captureIdImageGenerator.mGengerateTrackId;
        captureIdImageGenerator.mGengerateTrackId = i10 + 1;
        return i10;
    }

    private SurfaceTextureOverlap createOverlap(SurfaceTextureHelper surfaceTextureHelper) {
        long longValue;
        int intValue = -1;
        try {
            FiledStringParser filedStringParser = new FiledStringParser(PathUtils.Inject.getConfigFile("HMRTC_CaptureId_v1.cfg"), "");
            intValue = filedStringParser.getIntValue("frame_interval", -1);
            longValue = filedStringParser.getLongValue("freeze_duration", 10000L);
        } catch (Exception unused) {
            longValue = 0;
        }
        if (intValue <= 0) {
            return null;
        }
        Logging.d(TAG, "createTextureOverlap: frameInterval=" + intValue);
        SurfaceTextureOverlap surfaceTextureOverlap = new SurfaceTextureOverlap(surfaceTextureHelper.getSharedContext(), surfaceTextureHelper.getSurfaceTexture(), surfaceTextureHelper.getHandler(), intValue);
        surfaceTextureOverlap.setFreezeModeDuration(longValue);
        return surfaceTextureOverlap;
    }

    private void initOverlap(int i10, int i11, boolean z10) {
        if (this.mOverlap == null || i10 <= 0 || i11 <= 0) {
            return;
        }
        this.mOverlap.setCaptureIdObserver(new SurfaceTextureOverlap.CaptureIdObserver() { // from class: org.hmwebrtc.CaptureIdImageGenerator.1
            @Override // org.hmwebrtc.SurfaceTextureOverlap.CaptureIdObserver
            public void onCaptureIdChanged(int i12) {
                if (i12 < 0) {
                    return;
                }
                CaptureIdImageGenerator.access$008(CaptureIdImageGenerator.this);
                if (CaptureIdImageGenerator.this.mGengerateTrackId > 3000) {
                    CaptureIdImageGenerator.this.mGengerateTrackId = 1;
                }
                CaptureIdImageGenerator.this.mCaptureInfoList.offer(new CaptureInfo(i12, CaptureIdImageGenerator.this.mGengerateTrackId));
                while (CaptureIdImageGenerator.this.mCaptureInfoList.size() > 5) {
                    CaptureIdImageGenerator.this.mCaptureInfoList.pollFirst();
                    Logging.d(CaptureIdImageGenerator.TAG, "remove captureInfo: size>5");
                }
                if (CaptureIdImageGenerator.this.mCaptureInfoList.size() >= 2) {
                    Logging.d(CaptureIdImageGenerator.TAG, "captureInfo list size>=2");
                }
            }
        });
        this.mOverlap.setTextureSize(i10, i11);
        this.mOverlap.setMirror(z10);
    }

    public CaptureInfo getCaptureId() {
        BlockingDeque<CaptureInfo> blockingDeque = this.mCaptureInfoList;
        if (blockingDeque == null) {
            return null;
        }
        return blockingDeque.pollFirst();
    }

    public SurfaceTexture getSurfaceTexture() {
        SurfaceTextureOverlap surfaceTextureOverlap = this.mOverlap;
        if (surfaceTextureOverlap != null) {
            return surfaceTextureOverlap.getSurfaceTexture();
        }
        return null;
    }

    public void init(int i10, int i11, boolean z10) {
        initOverlap(i10, i11, z10);
    }

    public void release() {
        SurfaceTextureOverlap surfaceTextureOverlap = this.mOverlap;
        if (surfaceTextureOverlap != null) {
            surfaceTextureOverlap.release();
        }
    }
}

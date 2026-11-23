package com.bykv.vk.component.ttvideo.player;

import android.content.Context;
import android.view.Surface;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.utils.HardWareInfo;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public abstract class ITTPlayerRef {
    public static synchronized ITTPlayerRef create(Context context, TTPlayerClient tTPlayerClient, HashMap<Integer, Integer> map) {
        TTPlayerRef tTPlayerRefCreate;
        if (HardWareInfo.getCpuFamily() == 1) {
            tTPlayerRefCreate = TTPlayerRef.create(tTPlayerClient, context);
            if (tTPlayerRefCreate != null && TTPlayerConfiger.isPrintInfo()) {
                m.c(TTPlayerConfiger.TAG, "---------->ttplayer on<------------");
            }
        } else {
            tTPlayerRefCreate = null;
        }
        if (tTPlayerRefCreate == null) {
            m.c(TTPlayerConfiger.TAG, TTPlayerConfiger.getValue(16, "not find start service info."));
            if (map == null || map.get(100).intValue() != 1) {
                if (!TTPlayerConfiger.getValue(7, false) && TTPlayerConfiger.getValue(10, 0) < 3) {
                    TTPlayerConfiger.setValue(7, true);
                }
            } else if (map.get(7).intValue() == 0 && map.get(10).intValue() < 3) {
                map.put(7, 1);
            }
        }
        return tTPlayerRefCreate;
    }

    protected abstract void close();

    protected abstract Context getContext();

    protected abstract double getDoubleOption(int i10, double d10);

    protected abstract float getFloatOption(int i10, float f10);

    protected abstract int getIntOption(int i10, int i11);

    protected abstract int getLifeId();

    protected abstract long getLongOption(int i10, long j10);

    protected abstract Object getObjectOption(int i10);

    protected abstract String getStringOption(int i10);

    protected abstract int getType();

    protected void invalid() {
    }

    protected abstract boolean isValid();

    protected abstract void mouseEvent(int i10, int i11, int i12);

    protected abstract void pause();

    protected abstract void prepare();

    protected abstract void prevClose();

    protected abstract void release();

    protected abstract void reset();

    protected abstract void rotateCamera(float f10, float f11);

    protected abstract void seekTo(int i10);

    protected abstract void setAudioProcessor(AudioProcessor audioProcessor);

    protected abstract void setCacheFile(String str, int i10);

    protected abstract void setDataSource(IMediaDataSource iMediaDataSource);

    protected abstract void setDataSource(String str);

    protected abstract void setDataSourceFd(int i10);

    protected abstract int setDoubleOption(int i10, double d10);

    protected abstract int setFloatOption(int i10, float f10);

    protected abstract void setFrameMetadataListener(FrameMetadataListener frameMetadataListener);

    protected abstract int setIntOption(int i10, int i11);

    protected abstract void setLoadControl(LoadControl loadControl);

    protected abstract int setLongOption(int i10, long j10);

    protected abstract void setLooping(int i10);

    protected abstract void setMaskInfo(MaskInfo maskInfo);

    protected abstract void setMediaTransport(MediaTransport mediaTransport);

    protected abstract void setNotifyState(long j10);

    protected abstract void setOnScreenshotListener(MediaPlayer.OnScreenshotListener onScreenshotListener);

    protected abstract int setStringOption(int i10, String str);

    protected abstract void setSubInfo(SubInfo subInfo);

    protected abstract void setSurface(Surface surface);

    protected abstract void setVolume(float f10, float f11);

    protected abstract void start();

    protected abstract void stop();

    protected abstract void switchStream(int i10, int i11);

    protected abstract void takeScreenshot();
}

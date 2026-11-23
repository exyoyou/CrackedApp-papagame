package org.cocos2dx.lib;

import android.content.Context;
import android.media.SoundPool;
import com.chukong.cocosplay.client.CocosPlayClient;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Semaphore;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes10.dex */
public class Cocos2dxSound {
    private static final int INVALID_SOUND_ID = -1;
    private static final int INVALID_STREAM_ID = -1;
    private static final int MAX_SIMULTANEOUS_STREAMS_DEFAULT = 5;
    private static final int MAX_SIMULTANEOUS_STREAMS_I9100 = 3;
    private static final int SOUND_PRIORITY = 1;
    private static final int SOUND_QUALITY = 5;
    private static final float SOUND_RATE = 1.0f;
    private static final String TAG = "Cocos2dxSound";
    private final Context mContext;
    private float mLeftVolume;
    private float mRightVolume;
    private Semaphore mSemaphore;
    private SoundPool mSoundPool;
    private int mStreamIdSyn;
    private final HashMap<String, ArrayList<Integer>> mPathStreamIDsMap = new HashMap<>();
    private final HashMap<String, Integer> mPathSoundIDMap = new HashMap<>();
    private final ArrayList<SoundInfoForLoadedCompleted> mEffecToPlayWhenLoadedArray = new ArrayList<>();

    public class OnLoadCompletedListener implements SoundPool.OnLoadCompleteListener {
        public OnLoadCompletedListener() {
        }

        @Override // android.media.SoundPool.OnLoadCompleteListener
        public void onLoadComplete(SoundPool soundPool, int i10, int i11) {
            if (i11 == 0) {
                for (SoundInfoForLoadedCompleted soundInfoForLoadedCompleted : Cocos2dxSound.this.mEffecToPlayWhenLoadedArray) {
                    int i12 = soundInfoForLoadedCompleted.soundID;
                    if (i10 == i12) {
                        Cocos2dxSound cocos2dxSound = Cocos2dxSound.this;
                        cocos2dxSound.mStreamIdSyn = cocos2dxSound.doPlayEffect(soundInfoForLoadedCompleted.path, i12, soundInfoForLoadedCompleted.isLoop, soundInfoForLoadedCompleted.pitch, soundInfoForLoadedCompleted.pan, soundInfoForLoadedCompleted.gain);
                        Cocos2dxSound.this.mEffecToPlayWhenLoadedArray.remove(soundInfoForLoadedCompleted);
                        break;
                    }
                }
            } else {
                Cocos2dxSound.this.mStreamIdSyn = -1;
            }
            Cocos2dxSound.this.mSemaphore.release();
        }
    }

    public class SoundInfoForLoadedCompleted {
        public float gain;
        public boolean isLoop;
        public float pan;
        public String path;
        public float pitch;
        public int soundID;

        public SoundInfoForLoadedCompleted(String str, int i10, boolean z10, float f10, float f11, float f12) {
            this.path = str;
            this.soundID = i10;
            this.isLoop = z10;
            this.pitch = f10;
            this.pan = f11;
            this.gain = f12;
        }
    }

    public Cocos2dxSound(Context context) {
        this.mContext = context;
        initData();
    }

    private float clamp(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f10, f12));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int doPlayEffect(String str, int i10, boolean z10, float f10, float f11, float f12) {
        float fClamp = this.mLeftVolume * f12 * (1.0f - clamp(f11, 0.0f, 1.0f));
        float fClamp2 = this.mRightVolume * f12 * (1.0f - clamp(-f11, 0.0f, 1.0f));
        int iPlay = this.mSoundPool.play(i10, clamp(fClamp, 0.0f, 1.0f), clamp(fClamp2, 0.0f, 1.0f), 1, z10 ? -1 : 0, clamp(f10 * 1.0f, 0.5f, 2.0f));
        ArrayList<Integer> arrayList = this.mPathStreamIDsMap.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.mPathStreamIDsMap.put(str, arrayList);
        }
        arrayList.add(Integer.valueOf(iPlay));
        return iPlay;
    }

    private void initData() {
        if (Cocos2dxHelper.getDeviceModel().indexOf("GT-I9100") != -1) {
            this.mSoundPool = new SoundPool(3, 3, 5);
        } else {
            this.mSoundPool = new SoundPool(5, 3, 5);
        }
        this.mSoundPool.setOnLoadCompleteListener(new OnLoadCompletedListener());
        this.mLeftVolume = 0.5f;
        this.mRightVolume = 0.5f;
        this.mSemaphore = new Semaphore(0, true);
    }

    public int createSoundIDFromAsset(String str) {
        int iLoad;
        try {
            iLoad = str.startsWith(e.F0) ? this.mSoundPool.load(str, 0) : this.mSoundPool.load(this.mContext.getAssets().openFd(str), 0);
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("error: ");
            sb2.append(e10.getMessage());
            iLoad = -1;
        }
        if (iLoad == 0) {
            return -1;
        }
        return iLoad;
    }

    public void end() {
        this.mSoundPool.release();
        this.mPathStreamIDsMap.clear();
        this.mPathSoundIDMap.clear();
        this.mEffecToPlayWhenLoadedArray.clear();
        this.mLeftVolume = 0.5f;
        this.mRightVolume = 0.5f;
        initData();
    }

    public float getEffectsVolume() {
        return (this.mLeftVolume + this.mRightVolume) / 2.0f;
    }

    public void onEnterBackground() {
        this.mSoundPool.autoPause();
    }

    public void onEnterForeground() {
        this.mSoundPool.autoResume();
    }

    public void pauseAllEffects() {
        if (this.mPathStreamIDsMap.isEmpty()) {
            return;
        }
        Iterator<Map.Entry<String, ArrayList<Integer>>> it2 = this.mPathStreamIDsMap.entrySet().iterator();
        while (it2.hasNext()) {
            Iterator<Integer> it3 = it2.next().getValue().iterator();
            while (it3.hasNext()) {
                this.mSoundPool.pause(it3.next().intValue());
            }
        }
    }

    public void pauseEffect(int i10) {
        this.mSoundPool.pause(i10);
    }

    public int playEffect(String str, boolean z10, float f10, float f11, float f12) {
        int i10;
        Integer num = this.mPathSoundIDMap.get(str);
        if (num != null) {
            return doPlayEffect(str, num.intValue(), z10, f10, f11, f12);
        }
        Integer numValueOf = Integer.valueOf(preloadEffect(str));
        if (numValueOf.intValue() == -1) {
            return -1;
        }
        synchronized (this.mSoundPool) {
            this.mEffecToPlayWhenLoadedArray.add(new SoundInfoForLoadedCompleted(str, numValueOf.intValue(), z10, f10, f11, f12));
            try {
                this.mSemaphore.acquire();
                i10 = this.mStreamIdSyn;
            } catch (Exception unused) {
                return -1;
            }
        }
        return i10;
    }

    public int preloadEffect(String str) {
        if (CocosPlayClient.isEnabled() && !CocosPlayClient.isDemo()) {
            CocosPlayClient.updateAssets(str);
        }
        CocosPlayClient.notifyFileLoaded(str);
        Integer numValueOf = this.mPathSoundIDMap.get(str);
        if (numValueOf == null) {
            numValueOf = Integer.valueOf(createSoundIDFromAsset(str));
            if (numValueOf.intValue() != -1) {
                this.mPathSoundIDMap.put(str, numValueOf);
            }
        }
        return numValueOf.intValue();
    }

    public void resumeAllEffects() {
        if (this.mPathStreamIDsMap.isEmpty()) {
            return;
        }
        Iterator<Map.Entry<String, ArrayList<Integer>>> it2 = this.mPathStreamIDsMap.entrySet().iterator();
        while (it2.hasNext()) {
            Iterator<Integer> it3 = it2.next().getValue().iterator();
            while (it3.hasNext()) {
                this.mSoundPool.resume(it3.next().intValue());
            }
        }
    }

    public void resumeEffect(int i10) {
        this.mSoundPool.resume(i10);
    }

    public void setEffectsVolume(float f10) {
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        this.mRightVolume = f10;
        this.mLeftVolume = f10;
        if (this.mPathStreamIDsMap.isEmpty()) {
            return;
        }
        Iterator<Map.Entry<String, ArrayList<Integer>>> it2 = this.mPathStreamIDsMap.entrySet().iterator();
        while (it2.hasNext()) {
            Iterator<Integer> it3 = it2.next().getValue().iterator();
            while (it3.hasNext()) {
                this.mSoundPool.setVolume(it3.next().intValue(), this.mLeftVolume, this.mRightVolume);
            }
        }
    }

    public void stopAllEffects() {
        if (!this.mPathStreamIDsMap.isEmpty()) {
            Iterator<Map.Entry<String, ArrayList<Integer>>> it2 = this.mPathStreamIDsMap.entrySet().iterator();
            while (it2.hasNext()) {
                Iterator<Integer> it3 = it2.next().getValue().iterator();
                while (it3.hasNext()) {
                    this.mSoundPool.stop(it3.next().intValue());
                }
            }
        }
        this.mPathStreamIDsMap.clear();
    }

    public void stopEffect(int i10) {
        this.mSoundPool.stop(i10);
        for (String str : this.mPathStreamIDsMap.keySet()) {
            if (this.mPathStreamIDsMap.get(str).contains(Integer.valueOf(i10))) {
                this.mPathStreamIDsMap.get(str).remove(this.mPathStreamIDsMap.get(str).indexOf(Integer.valueOf(i10)));
                return;
            }
        }
    }

    public void unloadEffect(String str) {
        ArrayList<Integer> arrayList = this.mPathStreamIDsMap.get(str);
        if (arrayList != null) {
            Iterator<Integer> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                this.mSoundPool.stop(it2.next().intValue());
            }
        }
        this.mPathStreamIDsMap.remove(str);
        Integer num = this.mPathSoundIDMap.get(str);
        if (num != null) {
            this.mSoundPool.unload(num.intValue());
            this.mPathSoundIDMap.remove(str);
        }
    }
}

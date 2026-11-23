package com.bytedance.sdk.openadsdk.mediation.bridge.init;

import android.util.SparseArray;
import com.byazt.bog.a;
import com.byazt.zqa.c;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationInitConfig;
import java.util.function.Function;
import n0.b;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 83, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME, 84, 1018})
public class MediationInitCLassLoader extends com.byazt.op.c {
    /* JADX WARN: Code duplicated, block: B:40:0x0087  */
    private <T> boolean c(ValueSet valueSet) {
        boolean z10;
        Class<?> cls;
        boolean z11;
        MediationInitConfig mediationInitConfigCreate = MediationInitConfig.create(valueSet);
        try {
            try {
                z10 = true;
                if (!mediationInitConfigCreate.isCustom() || mediationInitConfigCreate.getCustomInitConfigValueSet() == null) {
                    String adapterManagerClassName = mediationInitConfigCreate.getAdapterManagerClassName();
                    String aDNName = mediationInitConfigCreate.getADNName();
                    Function<SparseArray<Object>, Object> adapterManager = (adapterManagerClassName == null || aDNName == null) ? false : AdnManagerConfig.initAdnManager(adapterManagerClassName, aDNName) ? AdnManagerConfig.getAdapterManager(aDNName) : null;
                    if (adapterManager != null) {
                        SparseArray sparseArray = new SparseArray();
                        sparseArray.put(-99999987, 10000);
                        sparseArray.put(-99999985, Object.class);
                        c(adapterManager.apply(sparseArray), valueSet);
                        return true;
                    }
                    cls = Class.forName(mediationInitConfigCreate.getClassName());
                    z11 = false;
                } else {
                    try {
                        cls = Class.forName(mediationInitConfigCreate.getCustomInitConfigValueSet().stringValue(8536));
                        z11 = true;
                    } catch (ClassNotFoundException e10) {
                        e = e10;
                        a.c(e);
                        if (!z10) {
                            a.n(MediationConstant.TAG, "当前接入的ADN-Adapter版本可能不适配，68版本起SDK和所有Adapter都需要升级，请检查接入的版本是否正确");
                        }
                        return false;
                    } catch (NoClassDefFoundError e11) {
                        e = e11;
                        a.c(e);
                        if (!z10) {
                            a.n(MediationConstant.TAG, "当前接入的ADN-Adapter版本可能不适配，68版本起SDK和所有Adapter都需要升级，请检查接入的版本是否正确");
                        }
                        return false;
                    }
                }
                try {
                    c(cls.newInstance(), valueSet);
                    return true;
                } catch (ClassNotFoundException | NoClassDefFoundError e12) {
                    e = e12;
                    z10 = z11;
                    a.c(e);
                    if (!z10) {
                        a.n(MediationConstant.TAG, "当前接入的ADN-Adapter版本可能不适配，68版本起SDK和所有Adapter都需要升级，请检查接入的版本是否正确");
                    }
                    return false;
                }
            } catch (Throwable th) {
                a.c(th);
                return false;
            }
        } catch (ClassNotFoundException | NoClassDefFoundError e13) {
            e = e13;
            z10 = false;
        }
    }

    @Override // com.byazt.op.c
    public <T> T applyFunction(int i10, ValueSet valueSet, Class<T> cls) {
        if (i10 == 8100) {
            return (T) Boolean.valueOf(c(valueSet));
        }
        return null;
    }

    @Override // com.byazt.op.c
    public SparseArray<Object> get() {
        return null;
    }

    private void c(Object obj, ValueSet valueSet) {
        if (b.a(obj)) {
            Function functionA = n0.c.a(obj);
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, TTAppContextHolder.getContext());
            sparseArray.put(8424, valueSet == null ? null : valueSet.sparseArray());
            sparseArray.put(-99999987, 8240);
            sparseArray.put(-99999985, Void.class);
            functionA.apply(sparseArray);
        }
    }
}

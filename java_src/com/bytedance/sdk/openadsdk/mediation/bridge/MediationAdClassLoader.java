package com.bytedance.sdk.openadsdk.mediation.bridge;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.bog.a;
import com.byazt.zqa.c;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.bridge.init.AdnManagerConfig;
import com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationLoaderConfig;
import java.util.function.Function;
import n0.b;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 83, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME, 1544})
public class MediationAdClassLoader extends com.byazt.op.c implements Bridge {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile MediationAdClassLoader f23535c;

    private MediationAdClassLoader() {
    }

    private <T> T c(int i10, ValueSet valueSet, Class<T> cls) {
        if (i10 == 8106) {
            c(MediationLoaderConfig.create(valueSet), valueSet);
            return null;
        }
        if (i10 == 8229) {
            return (T) c(valueSet.stringValue(AVMDLDataLoader.KeyIsLiveMobileUploadAllow), valueSet.stringValue(8560));
        }
        return null;
    }

    public static MediationAdClassLoader getInstance() {
        if (f23535c == null) {
            synchronized (MediationAdClassLoader.class) {
                f23535c = new MediationAdClassLoader();
            }
        }
        return f23535c;
    }

    @Override // com.byazt.op.c
    public <T> T applyFunction(int i10, ValueSet valueSet, Class<T> cls) {
        return (T) c(i10, valueSet, cls);
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i10, ValueSet valueSet, Class<T> cls) {
        return (T) c(i10, valueSet, cls);
    }

    @Override // com.byazt.op.c
    public SparseArray<Object> get() {
        ValueSet valueSetValues = values();
        if (valueSetValues != null) {
            return valueSetValues.sparseArray();
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge, com.bykv.vk.openvk.api.proto.Manager
    public ValueSet values() {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0021  */
    private Boolean c(String str, String str2) {
        try {
            Class.forName(str2);
            return Boolean.TRUE;
        } catch (Throwable th) {
            a.c(th);
            try {
                Class.forName(str);
                return Boolean.TRUE;
            } catch (ClassNotFoundException e10) {
                e = e10;
                a.c(e);
                if (c(str)) {
                    a.n(MediationConstant.TAG, "当前接入的ADN-Adapter版本可能不适配，68版本起SDK和所有Adapter都需要升级，请检查接入的版本是否正确");
                }
                return Boolean.FALSE;
            } catch (NoClassDefFoundError e11) {
                e = e11;
                a.c(e);
                if (c(str)) {
                    a.n(MediationConstant.TAG, "当前接入的ADN-Adapter版本可能不适配，68版本起SDK和所有Adapter都需要升级，请检查接入的版本是否正确");
                }
                return Boolean.FALSE;
            } catch (Throwable th2) {
                a.c(th2);
                return Boolean.FALSE;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004a  */
    /* JADX WARN: Code duplicated, block: B:22:? A[RETURN, SYNTHETIC] */
    private void c(MediationLoaderConfig mediationLoaderConfig, ValueSet valueSet) {
        try {
            Function<SparseArray<Object>, Object> adapterManager = AdnManagerConfig.getAdapterManager(mediationLoaderConfig.getADNName());
            if (adapterManager != null) {
                SparseArray sparseArray = new SparseArray();
                sparseArray.put(-99999987, Integer.valueOf(mediationLoaderConfig.getManagerLoaderType()));
                sparseArray.put(-99999985, Object.class);
                c(adapterManager.apply(sparseArray), valueSet);
                return;
            }
            c(Class.forName(mediationLoaderConfig.getClassName()).newInstance(), valueSet);
        } catch (ClassNotFoundException e10) {
            e = e10;
            a.c(e);
            if (c(null)) {
                a.n(MediationConstant.TAG, "当前接入的ADN-Adapter版本可能不适配，68版本起SDK和所有Adapter都需要升级，请检查接入的版本是否正确");
            }
        } catch (IllegalAccessException e11) {
            e = e11;
            e.printStackTrace();
        } catch (InstantiationException e12) {
            e = e12;
            e.printStackTrace();
        } catch (NoClassDefFoundError e13) {
            e = e13;
            a.c(e);
            if (c(null)) {
                a.n(MediationConstant.TAG, "当前接入的ADN-Adapter版本可能不适配，68版本起SDK和所有Adapter都需要升级，请检查接入的版本是否正确");
            }
        }
    }

    private void c(Object obj, ValueSet valueSet) {
        SparseArray<Object> sparseArray = valueSet.sparseArray();
        if (b.a(obj)) {
            Function functionA = n0.c.a(obj);
            SparseArray sparseArray2 = new SparseArray();
            SparseArray<Object> sparseArray3 = null;
            sparseArray2.put(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, (Context) com.byazt.op.c.objectValue(sparseArray.get(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold), Context.class, null));
            Object objObjectValue = com.byazt.op.c.objectValue(sparseArray.get(8424), Object.class, null);
            if (objObjectValue instanceof ValueSet) {
                sparseArray3 = ((ValueSet) objObjectValue).sparseArray();
            } else if (objObjectValue instanceof SparseArray) {
                sparseArray3 = (SparseArray) objObjectValue;
            }
            if (sparseArray3 != null) {
                sparseArray2.put(8424, sparseArray3);
            } else {
                sparseArray2.put(8424, sparseArray);
            }
            sparseArray2.put(-99999987, 8241);
            sparseArray2.put(-99999985, Void.class);
            functionA.apply(sparseArray2);
        }
    }

    private boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("com.bytedance.msdk.adapter.");
    }
}

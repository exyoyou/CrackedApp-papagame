package com.qq.e.ads.immersive;

import android.content.Context;
import android.text.TextUtils;
import com.qq.e.ads.AbstractAD;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.pi.IAFD;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdError;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ImmersiveADFlow extends AbstractAD<IAFD> implements IAFD {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ImmersiveADFlowListener f78181h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ADListenerAdapter f78182i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Map<String, String> f78183j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private VideoOption f78184k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f78185l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f78186m = false;

    private static class ADListenerAdapter implements ADListener {
        public ImmersiveADFlowListener adListener;

        public ADListenerAdapter(ImmersiveADFlowListener immersiveADFlowListener) {
            this.adListener = immersiveADFlowListener;
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            if (this.adListener == null) {
            }
            switch (aDEvent.getType()) {
                case 100:
                    this.adListener.onADLoaded();
                    break;
                case 101:
                    AdError adError = AdErrorConvertor.getAdError(aDEvent);
                    this.adListener.onNoAD(adError);
                    if (adError.getErrorCode() == 6000) {
                        GDTLogger.e(getClass().getSimpleName() + ":未找到RecyclerView依赖或当前不支持平板设备");
                    }
                    break;
                case 102:
                    this.adListener.onADPageShow();
                    break;
                case 103:
                    String str = (String) aDEvent.getParam(String.class);
                    this.adListener.onADExpose(str != null ? str : "");
                    break;
                case 105:
                    String str2 = (String) aDEvent.getParam(String.class);
                    this.adListener.onADClick(str2 != null ? str2 : "");
                    break;
                case 106:
                    this.adListener.onADPageDestroy();
                    break;
            }
        }
    }

    public ImmersiveADFlow(Context context, String str, ImmersiveADFlowListener immersiveADFlowListener, Map<String, String> map) {
        this.f78181h = immersiveADFlowListener;
        this.f78182i = new ADListenerAdapter(immersiveADFlowListener);
        this.f78183j = map;
        String str2 = map != null ? map.get("TOKEN") : "";
        if (TextUtils.isEmpty(str2)) {
            a(context, str);
        } else {
            a(context, str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.AbstractAD
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public IAFD a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getImmersiveADFlowDelegate(context, str, str2, str3, this.f78182i, this.f78183j);
    }

    @Override // com.qq.e.comm.pi.IAFD
    public String getOperationInfo() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            return ((IAFD) t10).getOperationInfo();
        }
        a("getOperationInfo");
        return "";
    }

    @Override // com.qq.e.comm.pi.IAFD
    public void preloadImmersiveADFlow() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((IAFD) t10).preloadImmersiveADFlow();
        } else {
            this.f78185l = true;
        }
    }

    @Override // com.qq.e.comm.pi.IAFD
    public void setVideoOption(VideoOption videoOption) {
        this.f78184k = videoOption;
        T t10 = this.f78107a;
        if (t10 == 0 || videoOption == null) {
            return;
        }
        ((IAFD) t10).setVideoOption(videoOption);
    }

    @Override // com.qq.e.comm.pi.IAFD
    public void showImmersiveADFlow() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((IAFD) t10).showImmersiveADFlow();
        } else {
            this.f78186m = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.AbstractAD
    public void a(IAFD iafd) {
        T t10;
        T t11;
        T t12;
        VideoOption videoOption = this.f78184k;
        if (videoOption != null && (t12 = this.f78107a) != 0) {
            ((IAFD) t12).setVideoOption(videoOption);
        }
        if (this.f78186m && (t11 = this.f78107a) != 0) {
            ((IAFD) t11).showImmersiveADFlow();
            this.f78186m = false;
        } else {
            if (!this.f78185l || (t10 = this.f78107a) == 0) {
                return;
            }
            ((IAFD) t10).preloadImmersiveADFlow();
            this.f78185l = false;
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i10) {
        ImmersiveADFlowListener immersiveADFlowListener = this.f78181h;
        if (immersiveADFlowListener != null) {
            immersiveADFlowListener.onNoAD(AdErrorConvertor.formatErrorCode(i10));
        }
    }
}

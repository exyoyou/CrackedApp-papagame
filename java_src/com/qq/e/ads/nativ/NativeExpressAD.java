package com.qq.e.ads.nativ;

import android.content.Context;
import android.text.TextUtils;
import com.qq.e.ads.NativeAbstractAD;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.ADRewardListener;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.pi.NEADI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class NativeExpressAD extends NativeAbstractAD<NEADI> implements IReward {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile int f78202h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile int f78203i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<Integer> f78204j = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private VideoOption f78205k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ADSize f78206l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private NativeExpressADListener f78207m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ADListenerAdapter f78208n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private LoadAdParams f78209o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private volatile ServerSideVerificationOptions f78210p;

    public static class ADListenerAdapter implements ADListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private NativeExpressADListener f78211a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private NativeExpressMediaListener f78212b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private NegativeFeedbackListener f78213c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ADRewardListener f78214d;

        public ADListenerAdapter(NativeExpressADListener nativeExpressADListener) {
            this.f78211a = nativeExpressADListener;
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            if (NativeExpressAD.m(this.f78211a, aDEvent) || NativeExpressAD.n(this.f78212b, aDEvent) || NativeExpressAD.p(this.f78213c, aDEvent)) {
                return;
            }
            NativeExpressAD.o(this.f78214d, aDEvent);
        }

        public void setAdRewardListener(ADRewardListener aDRewardListener) {
            this.f78214d = aDRewardListener;
        }

        public void setMediaListener(NativeExpressMediaListener nativeExpressMediaListener) {
            this.f78212b = nativeExpressMediaListener;
        }

        public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
            this.f78213c = negativeFeedbackListener;
        }

        public ADListenerAdapter(NativeExpressMediaListener nativeExpressMediaListener) {
            this.f78212b = nativeExpressMediaListener;
        }
    }

    public interface NativeExpressADListener extends NativeAbstractAD.BasicADListener {
        void onADClicked(NativeExpressADView nativeExpressADView);

        void onADClosed(NativeExpressADView nativeExpressADView);

        void onADExposure(NativeExpressADView nativeExpressADView);

        void onADLeftApplication(NativeExpressADView nativeExpressADView);

        void onADLoaded(List<NativeExpressADView> list);

        void onRenderFail(NativeExpressADView nativeExpressADView);

        void onRenderSuccess(NativeExpressADView nativeExpressADView);
    }

    public NativeExpressAD(Context context, ADSize aDSize, String str, NativeExpressADListener nativeExpressADListener) {
        this.f78207m = nativeExpressADListener;
        this.f78208n = new ADListenerAdapter(nativeExpressADListener);
        if (h(aDSize)) {
            return;
        }
        a(context, str);
    }

    private boolean h(ADSize aDSize) {
        if (aDSize != null) {
            this.f78206l = aDSize;
            return false;
        }
        GDTLogger.e("初始化错误：参数adSize不能为空");
        a(2001);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean m(NativeExpressADListener nativeExpressADListener, ADEvent aDEvent) {
        if (nativeExpressADListener == null) {
            return false;
        }
        int type = aDEvent.getType();
        if (type == 100) {
            List<NativeExpressADView> list = (List) aDEvent.getParam(List.class);
            if (list == null) {
                return true;
            }
            nativeExpressADListener.onADLoaded(list);
            return true;
        }
        if (type == 101) {
            nativeExpressADListener.onNoAD(AdErrorConvertor.getAdError(aDEvent));
            return true;
        }
        if (type == 103) {
            NativeExpressADView nativeExpressADView = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
            if (nativeExpressADView == null) {
                return true;
            }
            nativeExpressADListener.onADExposure(nativeExpressADView);
            return true;
        }
        if (type == 303) {
            NativeExpressADView nativeExpressADView2 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
            if (nativeExpressADView2 == null) {
                return true;
            }
            nativeExpressADListener.onADLeftApplication(nativeExpressADView2);
            return true;
        }
        if (type == 105) {
            NativeExpressADView nativeExpressADView3 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
            if (nativeExpressADView3 == null) {
                return true;
            }
            nativeExpressADListener.onADClicked(nativeExpressADView3);
            return true;
        }
        if (type == 106) {
            NativeExpressADView nativeExpressADView4 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
            if (nativeExpressADView4 == null) {
                return true;
            }
            nativeExpressADListener.onADClosed(nativeExpressADView4);
            nativeExpressADView4.negativeFeedback();
            return true;
        }
        if (type == 109) {
            NativeExpressADView nativeExpressADView5 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
            if (nativeExpressADView5 == null) {
                return true;
            }
            nativeExpressADListener.onRenderSuccess(nativeExpressADView5);
            return true;
        }
        if (type != 110) {
            return false;
        }
        NativeExpressADView nativeExpressADView6 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
        if (nativeExpressADView6 == null) {
            return true;
        }
        nativeExpressADListener.onRenderFail(nativeExpressADView6);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean n(NativeExpressMediaListener nativeExpressMediaListener, ADEvent aDEvent) {
        NativeExpressADView nativeExpressADView;
        if (nativeExpressMediaListener == null || (nativeExpressADView = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class)) == null) {
            return false;
        }
        int type = aDEvent.getType();
        if (type == 201) {
            nativeExpressMediaListener.onVideoCached(nativeExpressADView);
        } else if (type == 202) {
            nativeExpressMediaListener.onVideoStart(nativeExpressADView);
        } else if (type == 204) {
            nativeExpressMediaListener.onVideoPause(nativeExpressADView);
        } else if (type == 206) {
            nativeExpressMediaListener.onVideoComplete(nativeExpressADView);
        } else if (type == 207) {
            Integer num = (Integer) aDEvent.getParam(1, Integer.class);
            if (num != null) {
                nativeExpressMediaListener.onVideoError(nativeExpressADView, AdErrorConvertor.formatErrorCode(num.intValue()));
            }
        } else if (type == 301) {
            nativeExpressMediaListener.onVideoPageOpen(nativeExpressADView);
        } else if (type != 302) {
            switch (type) {
                case 209:
                    nativeExpressMediaListener.onVideoInit(nativeExpressADView);
                    break;
                case 210:
                    Integer num2 = (Integer) aDEvent.getParam(1, Integer.class);
                    if (num2 != null) {
                        nativeExpressMediaListener.onVideoReady(nativeExpressADView, num2.intValue());
                    }
                    break;
                case 211:
                    nativeExpressMediaListener.onVideoLoading(nativeExpressADView);
                    break;
                default:
                    return false;
            }
        } else {
            nativeExpressMediaListener.onVideoPageClose(nativeExpressADView);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean o(ADRewardListener aDRewardListener, ADEvent aDEvent) {
        if (aDRewardListener == null || aDEvent.getType() != 104) {
            return false;
        }
        Map<String, Object> map = new HashMap<>();
        Object obj = (String) aDEvent.getParam(String.class);
        if (obj != null) {
            map.put("transId", obj);
        }
        String str = (String) aDEvent.getParam(1, String.class);
        if (!TextUtils.isEmpty(str)) {
            map.put(IReward.DEV_EXT, str);
        }
        Object obj2 = (NativeExpressADView) aDEvent.getParam(2, NativeExpressADView.class);
        if (obj2 != null) {
            map.put(IReward.AD_VIEW, obj2);
        }
        aDRewardListener.onReward(map);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean p(NegativeFeedbackListener negativeFeedbackListener, ADEvent aDEvent) {
        if (negativeFeedbackListener == null || aDEvent.getType() != 304) {
            return false;
        }
        negativeFeedbackListener.onComplainSuccess();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.AbstractAD
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public NEADI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getNativeExpressADDelegate(context, this.f78206l, str, str2, str3, this.f78208n);
    }

    public String getAdNetWorkName() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            return ((NEADI) t10).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public void loadAD(int i10) {
        loadAD(i10, null);
    }

    public void setAdParams(LoadAdParams loadAdParams) {
        this.f78209o = loadAdParams;
    }

    public void setMaxVideoDuration(int i10) {
        this.f78203i = i10;
        if (this.f78203i > 0 && this.f78202h > this.f78203i) {
            GDTLogger.e("maxVideoDuration 设置值非法，不得小于minVideoDuration");
        }
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((NEADI) t10).setMaxVideoDuration(this.f78203i);
        }
    }

    public void setMinVideoDuration(int i10) {
        this.f78202h = i10;
        if (this.f78203i > 0 && this.f78202h > this.f78203i) {
            GDTLogger.e("minVideoDuration 设置值非法，不得大于maxVideoDuration");
        }
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((NEADI) t10).setMinVideoDuration(this.f78202h);
        }
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setRewardListener(ADRewardListener aDRewardListener) {
        this.f78208n.setAdRewardListener(aDRewardListener);
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f78210p = serverSideVerificationOptions;
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((NEADI) t10).setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public void setVideoOption(VideoOption videoOption) {
        this.f78205k = videoOption;
        T t10 = this.f78107a;
        if (t10 == 0 || videoOption == null) {
            return;
        }
        ((NEADI) t10).setVideoOption(videoOption);
    }

    public NativeExpressAD(Context context, ADSize aDSize, String str, NativeExpressADListener nativeExpressADListener, String str2) {
        this.f78207m = nativeExpressADListener;
        this.f78208n = new ADListenerAdapter(nativeExpressADListener);
        if (h(aDSize)) {
            return;
        }
        a(context, str, str2);
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i10) {
        NativeExpressADListener nativeExpressADListener = this.f78207m;
        if (nativeExpressADListener != null) {
            nativeExpressADListener.onNoAD(AdErrorConvertor.formatErrorCode(i10));
        }
    }

    public void loadAD(int i10, LoadAdParams loadAdParams) {
        if (a()) {
            if (loadAdParams != null) {
                setAdParams(loadAdParams);
            }
            if (!b()) {
                synchronized (this.f78204j) {
                    this.f78204j.add(Integer.valueOf(i10));
                }
                return;
            }
            T t10 = this.f78107a;
            if (t10 == 0) {
                a("loadAD");
                return;
            }
            LoadAdParams loadAdParams2 = this.f78209o;
            NEADI neadi = (NEADI) t10;
            if (loadAdParams2 != null) {
                neadi.loadAd(i10, loadAdParams2);
            } else {
                neadi.loadAd(i10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.NativeAbstractAD, com.qq.e.ads.AbstractAD
    public void a(NEADI neadi) {
        super.a(neadi);
        neadi.setMinVideoDuration(this.f78202h);
        neadi.setMaxVideoDuration(this.f78203i);
        ((NEADI) this.f78107a).setServerSideVerificationOptions(this.f78210p);
        VideoOption videoOption = this.f78205k;
        if (videoOption != null) {
            setVideoOption(videoOption);
        }
        synchronized (this.f78204j) {
            Iterator<Integer> it2 = this.f78204j.iterator();
            while (it2.hasNext()) {
                T t10 = this.f78107a;
                if (t10 != 0) {
                    if (this.f78209o != null) {
                        ((NEADI) t10).loadAd(it2.next().intValue(), this.f78209o);
                    } else {
                        ((NEADI) t10).loadAd(it2.next().intValue());
                    }
                }
            }
        }
    }
}

package com.qq.e.ads.rewardvideo;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.pi.NFBI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.pi.RVADI;
import com.qq.e.comm.util.AdErrorConvertor;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class RewardVideoAD extends LiteAbstractAD<RVADI> implements NFBI {
    public static final int REWARD_TYPE_PAGE = 1;
    public static final int REWARD_TYPE_VIDEO = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final RewardVideoADListener f78248i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile boolean f78249j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private LoadAdParams f78250k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ServerSideVerificationOptions f78251l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f78252m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ADListenerAdapter f78253n;

    public static class ADListenerAdapter implements ADListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private NegativeFeedbackListener f78254a;
        public RewardVideoADListener adListener;

        public ADListenerAdapter(RewardVideoADListener rewardVideoADListener) {
            this.adListener = rewardVideoADListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(NegativeFeedbackListener negativeFeedbackListener) {
            this.f78254a = negativeFeedbackListener;
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            int type = aDEvent.getType();
            if (type == 100) {
                this.adListener.onADLoad();
            }
            if (type == 201) {
                this.adListener.onVideoCached();
                return;
            }
            if (type == 206) {
                this.adListener.onVideoComplete();
                return;
            }
            if (type == 304) {
                NegativeFeedbackListener negativeFeedbackListener = this.f78254a;
                if (negativeFeedbackListener != null) {
                    negativeFeedbackListener.onComplainSuccess();
                    return;
                }
                return;
            }
            switch (type) {
                case 102:
                    this.adListener.onADShow();
                    break;
                case 103:
                    this.adListener.onADExpose();
                    break;
                case 104:
                    HashMap map = new HashMap();
                    String str = (String) aDEvent.getParam(String.class);
                    if (str != null) {
                        map.put("transId", str);
                    }
                    Integer num = (Integer) aDEvent.getParam(1, Integer.class);
                    if (num != null) {
                        map.put(ServerSideVerificationOptions.ACTION, num);
                    }
                    String str2 = (String) aDEvent.getParam(2, String.class);
                    if (!TextUtils.isEmpty(str2)) {
                        map.put(IReward.DEV_EXT, str2);
                    }
                    this.adListener.onReward(map);
                    break;
                case 105:
                    this.adListener.onADClick();
                    break;
                case 106:
                    this.adListener.onADClose();
                    break;
                case 107:
                    this.adListener.onError(AdErrorConvertor.getAdError(aDEvent));
                    break;
            }
        }
    }

    public RewardVideoAD(Context context, String str, RewardVideoADListener rewardVideoADListener) {
        this(context, str, rewardVideoADListener, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.AbstractAD
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RVADI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getRewardVideoADDelegate(context, str, str2, str3, this.f78253n);
    }

    public String getAdNetWorkName() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            return ((RVADI) t10).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public int getRewardAdType() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            return ((RVADI) t10).getRewardAdType();
        }
        a("getRewardAdType");
        return 0;
    }

    public int getVideoDuration() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            return ((RVADI) t10).getVideoDuration();
        }
        a("getVideoDuration");
        return 0;
    }

    public boolean hasShown() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            return ((RVADI) t10).hasShown();
        }
        a("hasShown");
        return false;
    }

    public void loadAD() {
        if (a()) {
            if (!b()) {
                this.f78249j = true;
                return;
            }
            T t10 = this.f78107a;
            if (t10 != 0) {
                ((RVADI) t10).loadAD();
            } else {
                a("loadAD");
            }
        }
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        this.f78250k = loadAdParams;
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((RVADI) t10).setLoadAdParams(loadAdParams);
        }
    }

    @Override // com.qq.e.comm.pi.NFBI
    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f78253n.b(negativeFeedbackListener);
    }

    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f78251l = serverSideVerificationOptions;
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((RVADI) t10).setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public void showAD() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((RVADI) t10).showAD();
        } else {
            a("showAD");
        }
    }

    public RewardVideoAD(Context context, String str, RewardVideoADListener rewardVideoADListener, boolean z10) {
        this(rewardVideoADListener, z10);
        a(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.AbstractAD
    public void a(RVADI rvadi) {
        rvadi.setVolumeOn(this.f78252m);
        rvadi.setLoadAdParams(this.f78250k);
        rvadi.setServerSideVerificationOptions(this.f78251l);
        if (this.f78249j) {
            loadAD();
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i10) {
        RewardVideoADListener rewardVideoADListener = this.f78248i;
        if (rewardVideoADListener != null) {
            rewardVideoADListener.onError(AdErrorConvertor.formatErrorCode(i10));
        }
    }

    public void showAD(Activity activity) {
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((RVADI) t10).showAD(activity);
        } else {
            a("showAD");
        }
    }

    public RewardVideoAD(Context context, String str, RewardVideoADListener rewardVideoADListener, boolean z10, String str2) {
        this(rewardVideoADListener, z10);
        a(context, str, str2);
    }

    private RewardVideoAD(RewardVideoADListener rewardVideoADListener, boolean z10) {
        this.f78250k = null;
        this.f78252m = z10;
        this.f78248i = rewardVideoADListener;
        this.f78253n = new ADListenerAdapter(rewardVideoADListener);
    }
}

package com.uc.crashsdk.a;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* JADX INFO: loaded from: classes2.dex */
public class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f84017a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f84018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f84019c;

    public e(int i10) {
        this.f84018b = i10;
        this.f84019c = null;
    }

    public final boolean a() {
        int i10 = this.f84018b;
        if (i10 == 451 || i10 == 452) {
            return com.uc.crashsdk.e.b(i10, this.f84019c);
        }
        switch (i10) {
            case MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_CONFIG_CACHED /* 351 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_CHLO_COUNT /* 352 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_SCFG_ADDRESS /* 353 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_ENABLE_CERT_VERIFY /* 354 */:
                return h.b(i10, this.f84019c);
            default:
                switch (i10) {
                    case 751:
                    case 752:
                    case 753:
                    case 754:
                    case 755:
                    case 756:
                        return com.uc.crashsdk.f.a(i10, this.f84019c);
                    default:
                        a.d("crashsdk", "Unknown sync runnable: " + toString());
                        if (f84017a) {
                            return false;
                        }
                        throw new AssertionError();
                }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        int i10 = this.f84018b;
        if (i10 == 10) {
            f.a(i10, this.f84019c);
            return;
        }
        if (i10 == 500) {
            d.a(i10);
            return;
        }
        if (i10 == 700) {
            com.uc.crashsdk.f.b(i10);
            return;
        }
        if (i10 == 800) {
            g.a(i10);
            return;
        }
        if (i10 == 201 || i10 == 202) {
            com.uc.crashsdk.a.a(i10);
            return;
        }
        switch (i10) {
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
                com.uc.crashsdk.b.a(i10);
                return;
            default:
                switch (i10) {
                    case 301:
                    case 302:
                    case 303:
                        h.a(i10, this.f84019c);
                        return;
                    default:
                        switch (i10) {
                            case 401:
                            case 402:
                            case 403:
                                break;
                            default:
                                switch (i10) {
                                    case 405:
                                    case 406:
                                    case 407:
                                    case TTAdConstant.INTERACTION_TYPE_CODE /* 408 */:
                                    case TTAdConstant.IMAGE_LIST_CODE /* 409 */:
                                    case TTAdConstant.IMAGE_LIST_SIZE_CODE /* 410 */:
                                    case TTAdConstant.IMAGE_CODE /* 411 */:
                                    case TTAdConstant.IMAGE_URL_CODE /* 412 */:
                                    case TTAdConstant.VIDEO_INFO_CODE /* 413 */:
                                    case TTAdConstant.VIDEO_URL_CODE /* 414 */:
                                    case TTAdConstant.VIDEO_COVER_URL_CODE /* 415 */:
                                    case 416:
                                        break;
                                    default:
                                        a.d("crashsdk", "Unknown async runnable: " + toString());
                                        if (!f84017a) {
                                            throw new AssertionError();
                                        }
                                        return;
                                }
                                break;
                        }
                        com.uc.crashsdk.e.a(i10, this.f84019c);
                        return;
                }
        }
    }

    public String toString() {
        return super.toString() + "@action_" + this.f84018b;
    }

    public e(int i10, Object[] objArr) {
        this.f84018b = i10;
        this.f84019c = objArr;
    }
}

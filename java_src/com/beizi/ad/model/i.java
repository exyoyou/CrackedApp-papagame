package com.beizi.ad.model;

/* JADX INFO: loaded from: classes6.dex */
public final class i {

    public enum a {
        ADP_UNKNOWN(0),
        ADP_IVIDEO(1),
        ADP_LOADING(2),
        ADP_TABLE(3),
        ADP_BANNER(4),
        ADP_CUSTOMER(5),
        ADP_NATIVE(6);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int f9569h;

        a(int i10) {
            this.f9569h = i10;
        }

        public static a a(int i10) {
            switch (i10) {
                case 0:
                    return ADP_UNKNOWN;
                case 1:
                    return ADP_IVIDEO;
                case 2:
                    return ADP_LOADING;
                case 3:
                    return ADP_TABLE;
                case 4:
                    return ADP_BANNER;
                case 5:
                    return ADP_CUSTOMER;
                case 6:
                    return ADP_NATIVE;
                default:
                    return null;
            }
        }
    }

    public enum b {
        DEVICE_UNKNOWN(0),
        DEVICE_PHONE(1),
        DEVICE_FLAT(2),
        DEVICE_WEAR(3),
        DEVICE_PC(4),
        DEVICE_OTHER(5);


        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f9577g;

        b(int i10) {
            this.f9577g = i10;
        }

        public final int a() {
            return this.f9577g;
        }
    }

    public enum c {
        ISP_UNKNOWN(0),
        ISP_CN_MOBILE(1),
        ISP_CN_UNICOM(2),
        ISP_CN_TEL(3),
        ISP_OTHER(4);


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f9584f;

        c(int i10) {
            this.f9584f = i10;
        }

        public final int a() {
            return this.f9584f;
        }
    }

    public enum d {
        NET_UNKNOWN(0),
        NET_3G(1),
        NET_4G(2),
        NET_5G(3),
        NET_WIFI(4),
        NET_OTHER(5),
        NET_2G(6);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int f9593h;

        d(int i10) {
            this.f9593h = i10;
        }

        public final int a() {
            return this.f9593h;
        }
    }

    public enum e {
        PLATFORM_UNKNOWN(0),
        PLATFORM_IOS(1),
        PLATFORM_ANDROID(2),
        PLATFORM_OTHER(3);


        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f9599e;

        e(int i10) {
            this.f9599e = i10;
        }

        public final int a() {
            return this.f9599e;
        }
    }

    public enum f {
        RENDER_UNKNOWN(0),
        RENDER_VIDEO(1),
        RENDER_PIC(2),
        RENDER_H5(3),
        RENDER_JSON(4),
        RENDER_VAST_VIDEO(5),
        RENDER_UNIFIED(6);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int f9608h;

        f(int i10) {
            this.f9608h = i10;
        }

        public static f a(int i10) {
            switch (i10) {
                case 0:
                    return RENDER_UNKNOWN;
                case 1:
                    return RENDER_VIDEO;
                case 2:
                    return RENDER_PIC;
                case 3:
                    return RENDER_H5;
                case 4:
                    return RENDER_JSON;
                case 5:
                    return RENDER_VAST_VIDEO;
                case 6:
                    return RENDER_UNIFIED;
                default:
                    return null;
            }
        }
    }

    public enum g {
        REQ_UNKNOWN(0),
        REQ_AD(1),
        REQ_WIFI_PRELOAD(2);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f9613d;

        g(int i10) {
            this.f9613d = i10;
        }

        public final int a() {
            return this.f9613d;
        }
    }

    public enum h {
        SRC_UNKNOWN(0),
        SRC_APP(1),
        SRC_WAP(2),
        SRC_PC(3),
        SRC_TEST(4);


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f9620f;

        h(int i10) {
            this.f9620f = i10;
        }

        public final int a() {
            return this.f9620f;
        }
    }
}

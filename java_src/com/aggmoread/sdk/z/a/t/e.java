package com.aggmoread.sdk.z.a.t;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static e f3995k = new b().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3999d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4000e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f4001f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f4002g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f4003h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f4004i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f4005j;

    public static final class b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f4009d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f4010e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f4006a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f4007b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f4008c = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f4011f = true;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f4012g = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f4013h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f4014i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f4015j = false;

        public b a(int i10) {
            this.f4007b = i10;
            return this;
        }

        public b b(boolean z10) {
            this.f4013h = z10;
            return this;
        }

        public b c(boolean z10) {
            this.f4014i = z10;
            return this;
        }

        public b d(boolean z10) {
            this.f4012g = z10;
            return this;
        }

        public b e(boolean z10) {
            this.f4011f = z10;
            return this;
        }

        public b a(boolean z10) {
            this.f4008c = z10;
            return this;
        }

        public e a() {
            e eVar = new e();
            eVar.f3999d = this.f4007b;
            eVar.f3998c = this.f4006a;
            eVar.f4000e = this.f4008c;
            eVar.f4002g = this.f4012g;
            eVar.f4001f = this.f4011f;
            eVar.f4003h = this.f4013h;
            eVar.f4004i = this.f4014i;
            eVar.f4005j = this.f4015j;
            eVar.f3996a = this.f4009d;
            eVar.f3997b = this.f4010e;
            return eVar;
        }
    }

    private e() {
    }

    public int a() {
        return this.f3999d;
    }

    public String toString() {
        return String.format("{最大视频时间=%s, 最小视频时间=%s, 视频播放设置=%s, 静音播放=%s, 自动播放设置=%s, 是否自动静音播放=%s, 进度条=%s, 封面=%s, 详情页=%s, 是否点击控制暂停=%s}", Integer.valueOf(this.f3996a), Integer.valueOf(this.f3997b), Integer.valueOf(this.f3998c), Boolean.valueOf(this.f4005j), Integer.valueOf(this.f3999d), Boolean.valueOf(this.f4000e), Boolean.valueOf(this.f4001f), Boolean.valueOf(this.f4002g), Boolean.valueOf(this.f4003h), Boolean.valueOf(this.f4004i));
    }

    public boolean b() {
        return this.f4000e;
    }

    public boolean c() {
        return this.f4004i;
    }

    public boolean d() {
        return this.f4001f;
    }
}

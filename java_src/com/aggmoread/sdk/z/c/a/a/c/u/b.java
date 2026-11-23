package com.aggmoread.sdk.z.c.a.a.c.u;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4405c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4406d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4407e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f4408f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f4409g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f4410h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f4411i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f4412j;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.c.u.b$b, reason: collision with other inner class name */
    public static final class C0120b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f4416d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f4417e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f4413a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f4414b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f4415c = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f4418f = true;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f4419g = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f4420h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f4421i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f4422j = false;

        public C0120b a(int i10) {
            this.f4414b = i10;
            return this;
        }

        public C0120b b(int i10) {
            this.f4413a = i10;
            return this;
        }

        public C0120b c(boolean z10) {
            this.f4420h = z10;
            return this;
        }

        public C0120b d(boolean z10) {
            this.f4421i = z10;
            return this;
        }

        public C0120b e(boolean z10) {
            this.f4419g = z10;
            return this;
        }

        public C0120b f(boolean z10) {
            this.f4418f = z10;
            return this;
        }

        public C0120b a(boolean z10) {
            this.f4415c = z10;
            return this;
        }

        public C0120b b(boolean z10) {
            this.f4422j = z10;
            return this;
        }

        public b a() {
            b bVar = new b();
            bVar.f4406d = this.f4414b;
            bVar.f4405c = this.f4413a;
            bVar.f4407e = this.f4415c;
            bVar.f4409g = this.f4419g;
            bVar.f4408f = this.f4418f;
            bVar.f4410h = this.f4420h;
            bVar.f4411i = this.f4421i;
            bVar.f4412j = this.f4422j;
            bVar.f4403a = this.f4416d;
            bVar.f4404b = this.f4417e;
            return bVar;
        }
    }

    static {
        new C0120b().a();
    }

    private b() {
    }

    public int a() {
        return this.f4406d;
    }

    public int b() {
        return this.f4403a;
    }

    public int c() {
        return this.f4404b;
    }

    public boolean e() {
        return this.f4412j;
    }

    public boolean f() {
        return this.f4410h;
    }

    public boolean g() {
        return this.f4411i;
    }

    public boolean h() {
        return this.f4409g;
    }

    public boolean i() {
        return this.f4408f;
    }

    public String toString() {
        return String.format("{最大视频时间=%s, 最小视频时间=%s, 视频播放设置=%s, 静音播放=%s, 自动播放设置=%s, 是否自动静音播放=%s, 进度条=%s, 封面=%s, 详情页=%s, 是否点击控制暂停=%s}", Integer.valueOf(this.f4403a), Integer.valueOf(this.f4404b), Integer.valueOf(this.f4405c), Boolean.valueOf(this.f4412j), Integer.valueOf(this.f4406d), Boolean.valueOf(this.f4407e), Boolean.valueOf(this.f4408f), Boolean.valueOf(this.f4409g), Boolean.valueOf(this.f4410h), Boolean.valueOf(this.f4411i));
    }

    public boolean d() {
        return this.f4407e;
    }
}

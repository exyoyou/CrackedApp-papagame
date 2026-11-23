.class public Lcom/cmic/gen/sdk/auth/GenAuthnHelper;
.super Lcom/cmic/gen/sdk/auth/c;
.source "SourceFile"


# static fields
.field private static f:Lcom/cmic/gen/sdk/auth/GenAuthnHelper;


# instance fields
.field private g:Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;

.field private h:Lcom/cmic/gen/sdk/view/GenLoginPageInListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cmic/gen/sdk/auth/c;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->h:Lcom/cmic/gen/sdk/view/GenLoginPageInListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/cmic/gen/sdk/auth/c;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->h:Lcom/cmic/gen/sdk/view/GenLoginPageInListener;

    .line 5
    iput-object p2, p0, Lcom/cmic/gen/sdk/auth/c;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/cmic/gen/sdk/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->b(Landroid/content/Context;Lcom/cmic/gen/sdk/a;)V

    return-void
.end method

.method static synthetic a(Lcom/cmic/gen/sdk/auth/GenAuthnHelper;Lcom/cmic/gen/sdk/a;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/cmic/gen/sdk/auth/c;->a(Lcom/cmic/gen/sdk/a;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/cmic/gen/sdk/a;)V
    .locals 3

    const-string v0, "traceId"

    .line 2
    invoke-virtual {p1, v0}, Lcom/cmic/gen/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1, v0}, Lcom/cmic/gen/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cmic/gen/sdk/e/e;->a(Ljava/lang/String;Lcom/cmic/gen/sdk/a;)V

    const-string p1, "com.cmic.gen.sdk.view.GenLoginAuthActivity"

    .line 6
    invoke-virtual {v2, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/cmic/gen/sdk/auth/GenAuthnHelper;Lcom/cmic/gen/sdk/a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/cmic/gen/sdk/auth/c;->a(Lcom/cmic/gen/sdk/a;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cmic/gen/sdk/auth/GenAuthnHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->f:Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->f:Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    invoke-direct {v1, p0}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->f:Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->f:Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/cmic/gen/sdk/auth/GenAuthnHelper;
    .locals 2

    .line 7
    sget-object v0, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->f:Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    if-nez v0, :cond_1

    .line 8
    const-class v0, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->f:Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    invoke-direct {v1, p0, p1}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->f:Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12
    :cond_1
    :goto_0
    sget-object p0, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->f:Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/cmic/gen/sdk/a;)V
    .locals 4

    .line 3
    new-instance v0, Lcom/cmic/gen/sdk/auth/c$a;

    invoke-direct {v0, p0, p1}, Lcom/cmic/gen/sdk/auth/c$a;-><init>(Lcom/cmic/gen/sdk/auth/c;Lcom/cmic/gen/sdk/a;)V

    .line 4
    iget-object v1, p0, Lcom/cmic/gen/sdk/auth/c;->d:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/cmic/gen/sdk/auth/c;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    iget-object v1, p0, Lcom/cmic/gen/sdk/auth/c;->a:Lcom/cmic/gen/sdk/auth/a;

    new-instance v2, Lcom/cmic/gen/sdk/auth/GenAuthnHelper$4;

    invoke-direct {v2, p0, v0}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper$4;-><init>(Lcom/cmic/gen/sdk/auth/GenAuthnHelper;Lcom/cmic/gen/sdk/auth/c$a;)V

    invoke-virtual {v1, p1, v2}, Lcom/cmic/gen/sdk/auth/a;->a(Lcom/cmic/gen/sdk/a;Lcom/cmic/gen/sdk/auth/b;)V

    return-void
.end method

.method public getAuthThemeConfig()Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->g:Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->build()Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->g:Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->g:Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;

    .line 17
    .line 18
    return-object v0
.end method

.method public getOverTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cmic/gen/sdk/auth/c;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPhoneInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->getPhoneInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;I)V

    return-void
.end method

.method public getPhoneInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;I)V
    .locals 8

    .line 2
    invoke-virtual {p0, p3}, Lcom/cmic/gen/sdk/auth/c;->a(Lcom/cmic/gen/sdk/auth/GenTokenListener;)Lcom/cmic/gen/sdk/a;

    move-result-object v4

    const-string v0, "SDKRequestCode"

    .line 3
    invoke-virtual {v4, v0, p4}, Lcom/cmic/gen/sdk/a;->a(Ljava/lang/String;I)V

    .line 4
    new-instance p4, Lcom/cmic/gen/sdk/auth/GenAuthnHelper$1;

    iget-object v2, p0, Lcom/cmic/gen/sdk/auth/c;->b:Landroid/content/Context;

    move-object v0, p4

    move-object v1, p0

    move-object v3, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper$1;-><init>(Lcom/cmic/gen/sdk/auth/GenAuthnHelper;Landroid/content/Context;Lcom/cmic/gen/sdk/a;Lcom/cmic/gen/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;)V

    invoke-static {p4}, Lcom/cmic/gen/sdk/e/n;->a(Lcom/cmic/gen/sdk/e/n$a;)V

    return-void
.end method

.method public loginAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->loginAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;I)V

    return-void
.end method

.method public loginAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;I)V
    .locals 8

    .line 2
    invoke-virtual {p0, p3}, Lcom/cmic/gen/sdk/auth/c;->a(Lcom/cmic/gen/sdk/auth/GenTokenListener;)Lcom/cmic/gen/sdk/a;

    move-result-object v4

    const-string v0, "SDKRequestCode"

    .line 3
    invoke-virtual {v4, v0, p4}, Lcom/cmic/gen/sdk/a;->a(Ljava/lang/String;I)V

    .line 4
    new-instance p4, Lcom/cmic/gen/sdk/auth/GenAuthnHelper$2;

    iget-object v2, p0, Lcom/cmic/gen/sdk/auth/c;->b:Landroid/content/Context;

    move-object v0, p4

    move-object v1, p0

    move-object v3, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper$2;-><init>(Lcom/cmic/gen/sdk/auth/GenAuthnHelper;Landroid/content/Context;Lcom/cmic/gen/sdk/a;Lcom/cmic/gen/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;)V

    invoke-static {p4}, Lcom/cmic/gen/sdk/e/n;->a(Lcom/cmic/gen/sdk/e/n$a;)V

    return-void
.end method

.method public loginPageInCallBack(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->h:Lcom/cmic/gen/sdk/view/GenLoginPageInListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/cmic/gen/sdk/view/GenLoginPageInListener;->onLoginPageInComplete(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public mobileAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->mobileAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;I)V

    return-void
.end method

.method public mobileAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;I)V
    .locals 8

    .line 2
    invoke-virtual {p0, p3}, Lcom/cmic/gen/sdk/auth/c;->a(Lcom/cmic/gen/sdk/auth/GenTokenListener;)Lcom/cmic/gen/sdk/a;

    move-result-object v4

    const-string v0, "SDKRequestCode"

    .line 3
    invoke-virtual {v4, v0, p4}, Lcom/cmic/gen/sdk/a;->a(Ljava/lang/String;I)V

    .line 4
    new-instance p4, Lcom/cmic/gen/sdk/auth/GenAuthnHelper$3;

    iget-object v2, p0, Lcom/cmic/gen/sdk/auth/c;->b:Landroid/content/Context;

    move-object v0, p4

    move-object v1, p0

    move-object v3, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper$3;-><init>(Lcom/cmic/gen/sdk/auth/GenAuthnHelper;Landroid/content/Context;Lcom/cmic/gen/sdk/a;Lcom/cmic/gen/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;)V

    invoke-static {p4}, Lcom/cmic/gen/sdk/e/n;->a(Lcom/cmic/gen/sdk/e/n$a;)V

    return-void
.end method

.method public quitAuthActivity()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cmic/gen/sdk/view/b;->a()Lcom/cmic/gen/sdk/view/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/cmic/gen/sdk/view/b;->b()Lcom/cmic/gen/sdk/view/b$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/cmic/gen/sdk/view/b;->a()Lcom/cmic/gen/sdk/view/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, v0, Lcom/cmic/gen/sdk/view/b;->a:I

    .line 17
    .line 18
    invoke-static {}, Lcom/cmic/gen/sdk/view/b;->a()Lcom/cmic/gen/sdk/view/b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/cmic/gen/sdk/view/b;->b()Lcom/cmic/gen/sdk/view/b$a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Lcom/cmic/gen/sdk/view/b$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    const-string v0, "AuthnHelper"

    .line 35
    .line 36
    const-string v1, "\u5173\u95ed\u6388\u6743\u9875\u5931\u8d25"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/cmic/gen/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    return-void
.end method

.method public setAuthThemeConfig(Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->g:Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;

    .line 2
    .line 3
    return-void
.end method

.method public setPageInListener(Lcom/cmic/gen/sdk/view/GenLoginPageInListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->h:Lcom/cmic/gen/sdk/view/GenLoginPageInListener;

    .line 2
    .line 3
    return-void
.end method

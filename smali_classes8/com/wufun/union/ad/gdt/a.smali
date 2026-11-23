.class public Lcom/wufun/union/ad/gdt/a;
.super Lcom/wufun/union/ad/AdChannel;
.source "SourceFile"


# static fields
.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field public static final n:I = 0x3

.field public static final o:I = 0x4

.field public static final p:I = 0x5

.field public static final q:I = 0x6

.field public static final r:I = 0x7

.field public static final s:I = 0x8


# instance fields
.field j:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufun/union/ad/AdChannel;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/wufun/union/ad/AdChannel$Type;->GDT:Lcom/wufun/union/ad/AdChannel$Type;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/wufun/union/ad/AdChannel;->c:Lcom/wufun/union/ad/AdChannel$Type;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic n(Lcom/wufun/union/ad/gdt/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic o(Lcom/wufun/union/ad/gdt/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic p(Lcom/wufun/union/ad/gdt/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lcom/wufun/union/ad/gdt/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r(Lcom/wufun/union/ad/gdt/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufun/union/ad/AdChannel;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic s(Lcom/wufun/union/ad/gdt/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/wufun/union/ad/gdt/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lcom/wufun/union/ad/gdt/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufun/union/ad/AdChannel;->g:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object p1, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    const-string v2, "PrefDef"

    .line 7
    .line 8
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "sdkInit"

    .line 13
    .line 14
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {p1, p2}, Lcom/qq/e/comm/managers/GDTAdSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    invoke-static {p1}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->setChannel(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->setEnableMediationTool(Z)V

    .line 29
    .line 30
    .line 31
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->b:Z

    .line 32
    .line 33
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p0, v1, p1, v0}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/wufun/union/ad/AdChannel;->b:Z

    .line 44
    .line 45
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {p0, v1, p1, v0}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/String;FF)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "PrefDef"

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string p3, "sdkInit"

    .line 11
    .line 12
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    const-string p2, "ad code id is must not null"

    .line 28
    .line 29
    const/4 p3, 0x1

    .line 30
    invoke-virtual {p0, p3, p1, p2}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iput-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    .line 35
    .line 36
    new-instance p2, Lcom/wufun/union/ad/gdt/a$a;

    .line 37
    .line 38
    invoke-direct {p2, p0}, Lcom/wufun/union/ad/gdt/a$a;-><init>(Lcom/wufun/union/ad/gdt/a;)V

    .line 39
    .line 40
    .line 41
    new-instance p3, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    .line 44
    .line 45
    invoke-direct {p3, v0, p1, p2}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;)V

    .line 46
    .line 47
    .line 48
    iput-object p3, p0, Lcom/wufun/union/ad/gdt/a;->j:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 49
    .line 50
    new-instance p1, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 51
    .line 52
    invoke-direct {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/wufun/union/ad/gdt/a;->j:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/wufun/union/ad/gdt/a;->j:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->loadAD()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public m(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/gdt/a;->j:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->showAD(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->f:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/wufun/union/ad/AdChannel;->g(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

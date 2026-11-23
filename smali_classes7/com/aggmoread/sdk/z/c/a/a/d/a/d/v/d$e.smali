.class public final enum Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

.field public static final enum d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

.field public static final enum e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

.field public static final enum f:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

.field public static final enum g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

.field public static final enum h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

.field public static final enum i:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

.field private static final synthetic j:[Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;


# instance fields
.field private b:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    const-class v1, Lcom/qq/e/ads/splash/SplashAD;

    const-string v2, "SPLASH"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    const-class v2, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    const-string v4, "UNIFIED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    const-class v4, Lcom/qq/e/ads/nativ/NativeExpressAD;

    const-string v6, "EXPRESS"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    new-instance v4, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    const-string v6, "INTERSTITIAL"

    const/4 v8, 0x3

    const-class v9, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-direct {v4, v6, v8, v9}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->f:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    new-instance v6, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    const-class v10, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    const-string v11, "REWARD"

    const/4 v12, 0x4

    invoke-direct {v6, v11, v12, v10}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    new-instance v10, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    const-string v11, "FULLSCREEN"

    const/4 v13, 0x5

    invoke-direct {v10, v11, v13, v9}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    new-instance v9, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    const-class v11, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    const-string v14, "BANNER"

    const/4 v15, 0x6

    invoke-direct {v9, v14, v15, v11}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v9, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->i:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    const/4 v11, 0x7

    new-array v11, v11, [Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    aput-object v0, v11, v3

    aput-object v1, v11, v5

    aput-object v2, v11, v7

    aput-object v4, v11, v8

    aput-object v6, v11, v12

    aput-object v10, v11, v13

    aput-object v9, v11, v15

    sput-object v11, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->j:[Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->b:Ljava/lang/Class;

    return-void
.end method

.method public static b()[Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;
    .locals 1

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->j:[Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    invoke-virtual {v0}, [Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AD_TYPE{cls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

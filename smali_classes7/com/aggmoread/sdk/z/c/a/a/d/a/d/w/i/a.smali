.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String; = "AMRTAGKS"


# instance fields
.field private v:Lcom/kwad/sdk/api/KsRewardVideoAd;

.field private w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private x:Z

.field private y:Lcom/kwad/sdk/api/KsVideoPlayConfig;

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->x:Z

    iput p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->z:I

    return-void
.end method

.method private B()V
    .locals 3

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->x:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->z:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    const-string v1, "find cc "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->z:I

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$b;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->w()V

    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;)[Ljava/lang/Object;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->B()V

    return-void
.end method

.method private w()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "L"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",slotIdStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",_slotId = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v4, v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->p:Lcom/aggmoread/sdk/z/c/a/a/c/s/c;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "thirdUserId"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v4, v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->p:Lcom/aggmoread/sdk/z/c/a/a/c/s/c;

    invoke-virtual {v4}, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_ext "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "extraData"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/b;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/b$a;)V

    new-instance v4, Lcom/kwad/sdk/api/KsScene$Builder;

    invoke-direct {v4, v2, v3}, Lcom/kwad/sdk/api/KsScene$Builder;-><init>(J)V

    invoke-virtual {v4, v1}, Lcom/kwad/sdk/api/KsScene$Builder;->rewardCallbackExtraData(Ljava/util/Map;)Lcom/kwad/sdk/api/KsScene$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsScene$Builder;->build()Lcom/kwad/sdk/api/KsScene;

    move-result-object v1

    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/b;->a()Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/kwad/sdk/api/KsLoadManager;->loadRewardVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    const-string v1, "load ad"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->s:Lcom/aggmoread/sdk/z/c/a/a/c/u/b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->s:Lcom/aggmoread/sdk/z/c/a/a/c/u/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->d()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsVideoPlayConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->y:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    return-void

    :catch_0
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v1, 0x3baa1418

    const-string v2, "\u5e7f\u544aID\u914d\u7f6e\u9519\u8bef\uff0c\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\uff01"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method private x()V
    .locals 0

    return-void
.end method


# virtual methods
.method public A()V
    .locals 4

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    const-string v1, "onVideoPlayStart"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/c/j;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->e()Z

    move-result v1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->b(Ljava/lang/Object;ZZ)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->f()[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->f()[I

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[I)V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->r:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->b()[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[B)V

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->t()V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s()V

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 1
    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    const-string p2, "onVideoSkipToEnd"

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->B()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->a(Ljava/util/Map;)V

    return-void
.end method

.method public b(II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRewardStepVerify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(IILjava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->v:Lcom/kwad/sdk/api/KsRewardVideoAd;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->v:Lcom/kwad/sdk/api/KsRewardVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsRewardVideoAd;->isAdEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->x()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->v:Lcom/kwad/sdk/api/KsRewardVideoAd;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->y:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    invoke-interface {v0, p1, v1}, Lcom/kwad/sdk/api/KsRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->c(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->v:Lcom/kwad/sdk/api/KsRewardVideoAd;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->b(Ljava/lang/Object;I)V

    return-void
.end method

.method public c(II)V
    .locals 4

    .line 2
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onVideoPlayError %s,%s"

    invoke-static {v0, v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->c(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsRewardVideoAd;",
            ">;)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRewardVideoResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 3

    .line 5
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRewardVerify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a([Ljava/lang/Object;I)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->r:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->b(Ljava/util/Map;)V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsRewardVideoAd;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    const-string v1, "ad loaded"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/api/KsRewardVideoAd;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->v:Lcom/kwad/sdk/api/KsRewardVideoAd;

    const-class p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;

    aput-object v3, v2, v1

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$a;)V

    invoke-static {p1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->v:Lcom/kwad/sdk/api/KsRewardVideoAd;

    invoke-interface {v2, p1}, Lcom/kwad/sdk/api/KsRewardVideoAd;->setRewardAdInteractionListener(Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;)V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->v:Lcom/kwad/sdk/api/KsRewardVideoAd;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->a(Ljava/lang/Object;)I

    move-result p1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(II)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->b(I)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v1, p1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->b(Ljava/util/Map;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->d(I)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->u()V

    return-void
.end method

.method public e(I)V
    .locals 3

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExtraRewardVerify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->a()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->v:Lcom/kwad/sdk/api/KsRewardVideoAd;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->a(Lcom/kwad/sdk/api/KsRewardVideoAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->e0:Ljava/lang/Object;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v1, 0x3baa1418

    const-string v2, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\uff01"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->l:Lcom/aggmoread/sdk/z/c/a/a/e/v/g;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$a;

    invoke-direct {v2, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;)V

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/e/v/g;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public onAdClicked()V
    .locals 2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    const-string v1, "onAdClicked"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->q()V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "onAdError %s,%s"

    invoke-static {v0, v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public onRequestResult(I)V
    .locals 3

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onRequestResult %s"

    invoke-static {v0, p1, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public v()V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "act = null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->t:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->t:Z

    if-eqz v0, :cond_1

    const v0, 0x3baa1419

    const-string v1, "\u5f53\u524d\u4f20\u5165Activity\u4e3a\u7a7a"

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public y()V
    .locals 2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    const-string v1, "onPageDismiss"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->r()V

    return-void
.end method

.method public z()V
    .locals 2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A:Ljava/lang/String;

    const-string v1, "onVideoPlayEnd"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->B()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->a(Ljava/util/Map;)V

    return-void
.end method

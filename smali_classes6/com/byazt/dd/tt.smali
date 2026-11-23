.class public Lcom/byazt/dd/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dd/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x70e,
        0xd
    }
.end annotation


# instance fields
.field public a:J

.field public aw:Ljava/lang/String;

.field public b:Z

.field public bm:I

.field public bx:Z

.field public c:Z

.field public cu:Z

.field public d:J

.field public da:Ljava/lang/String;

.field public dz:J

.field public eo:I

.field public gr:I

.field public gt:Ljava/lang/String;

.field public gu:Lorg/json/JSONObject;

.field public h:J

.field public hd:Z

.field public i:I

.field public ic:Z

.field public iu:Z

.field public j:Ljava/lang/String;

.field public kk:Z

.field public kp:Ljava/lang/String;

.field public l:J

.field public lo:J

.field public lr:I
    .annotation build Lcom/byazt/tk/AdBaseConstants$FunnelType;
    .end annotation
.end field

.field public lt:Z

.field public m:I

.field public md:J

.field public my:Ljava/lang/String;

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public nb:Z

.field public nu:I

.field public or:Ljava/lang/String;

.field public os:Z

.field public oz:Z

.field public p:I

.field public pf:Z

.field public pu:Z

.field public q:Z

.field public qp:Ljava/lang/String;

.field public qy:J

.field public r:Z

.field public rh:Ljava/lang/String;

.field public rl:Z

.field public s:Z

.field public sl:Ljava/lang/String;

.field public sp:J

.field public sv:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public tk:J

.field public to:J

.field public tt:Z

.field public tx:J

.field public u:Ljava/lang/String;

.field public final uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public transient v:Z

.field public final ve:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public x:Ljava/lang/String;

.field public y:Z

.field public yp:I

.field public yv:I

.field public z:I

.field public zb:I

.field public zm:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/byazt/dd/tt;->i:I

    .line 3
    iput-boolean v0, p0, Lcom/byazt/dd/tt;->rl:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/byazt/dd/tt;->zm:Z

    .line 5
    iput v1, p0, Lcom/byazt/dd/tt;->yv:I

    .line 6
    iput v1, p0, Lcom/byazt/dd/tt;->p:I

    .line 7
    iput-boolean v1, p0, Lcom/byazt/dd/tt;->cu:Z

    .line 8
    iput-boolean v1, p0, Lcom/byazt/dd/tt;->nb:Z

    .line 9
    iput-boolean v0, p0, Lcom/byazt/dd/tt;->pf:Z

    .line 10
    iput-boolean v0, p0, Lcom/byazt/dd/tt;->bx:Z

    .line 11
    iput-boolean v0, p0, Lcom/byazt/dd/tt;->c:Z

    .line 12
    iput-boolean v0, p0, Lcom/byazt/dd/tt;->tt:Z

    .line 13
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/byazt/dd/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/byazt/dd/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/byazt/dd/tt;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    iput v0, p0, Lcom/byazt/dd/tt;->lr:I

    .line 17
    iput-boolean v0, p0, Lcom/byazt/dd/tt;->pu:Z

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lcom/byazt/dd/tt;->tx:J

    return-void
.end method

.method public constructor <init>(Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/byazt/dd/tt;-><init>(Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;I)V

    return-void
.end method

.method public constructor <init>(Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;I)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/byazt/dd/tt;->i:I

    .line 22
    iput-boolean v0, p0, Lcom/byazt/dd/tt;->rl:Z

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/byazt/dd/tt;->zm:Z

    .line 24
    iput v1, p0, Lcom/byazt/dd/tt;->yv:I

    .line 25
    iput v1, p0, Lcom/byazt/dd/tt;->p:I

    .line 26
    iput-boolean v1, p0, Lcom/byazt/dd/tt;->cu:Z

    .line 27
    iput-boolean v1, p0, Lcom/byazt/dd/tt;->nb:Z

    .line 28
    iput-boolean v0, p0, Lcom/byazt/dd/tt;->pf:Z

    .line 29
    iput-boolean v0, p0, Lcom/byazt/dd/tt;->bx:Z

    .line 30
    iput-boolean v0, p0, Lcom/byazt/dd/tt;->c:Z

    .line 31
    iput-boolean v0, p0, Lcom/byazt/dd/tt;->tt:Z

    .line 32
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/byazt/dd/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/byazt/dd/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/byazt/dd/tt;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    iput v0, p0, Lcom/byazt/dd/tt;->lr:I

    .line 36
    iput-boolean v0, p0, Lcom/byazt/dd/tt;->pu:Z

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/byazt/dd/tt;->tx:J

    .line 38
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/dd/tt;->a:J

    .line 39
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getExtraValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/dd/tt;->sp:J

    .line 40
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dd/tt;->x:Ljava/lang/String;

    .line 41
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dd/tt;->da:Ljava/lang/String;

    .line 42
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getExtra()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dd/tt;->gu:Lorg/json/JSONObject;

    .line 43
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->isAd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/dd/tt;->rl:Z

    .line 44
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getVersionCode()I

    move-result v0

    iput v0, p0, Lcom/byazt/dd/tt;->nu:I

    .line 45
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dd/tt;->rh:Ljava/lang/String;

    .line 46
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dd/tt;->sl:Ljava/lang/String;

    .line 47
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getDeepLink()Lcom/byazt/e/DeepLink;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getDeepLink()Lcom/byazt/e/DeepLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/e/DeepLink;->getOpenUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dd/tt;->t:Ljava/lang/String;

    .line 49
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getDeepLink()Lcom/byazt/e/DeepLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/e/DeepLink;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dd/tt;->u:Ljava/lang/String;

    .line 50
    :cond_0
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getModelType()I

    move-result v0

    iput v0, p0, Lcom/byazt/dd/tt;->yp:I

    .line 51
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dd/tt;->my:Ljava/lang/String;

    .line 52
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getAppIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dd/tt;->gt:Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dd/tt;->qp:Ljava/lang/String;

    .line 54
    invoke-interface {p2}, Lcom/byazt/su/DownloadEventConfig;->getClickButtonTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dd/tt;->sv:Ljava/lang/String;

    .line 55
    invoke-interface {p2}, Lcom/byazt/su/DownloadEventConfig;->getRefer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dd/tt;->aw:Ljava/lang/String;

    .line 56
    invoke-interface {p2}, Lcom/byazt/su/DownloadEventConfig;->isEnableV3Event()Z

    move-result p2

    iput-boolean p2, p0, Lcom/byazt/dd/tt;->ic:Z

    .line 57
    invoke-interface {p3}, Lcom/byazt/su/DownloadController;->isEnableBackDialog()Z

    move-result p2

    iput-boolean p2, p0, Lcom/byazt/dd/tt;->zm:Z

    .line 58
    invoke-interface {p3}, Lcom/byazt/su/DownloadController;->getLinkMode()I

    move-result p2

    iput p2, p0, Lcom/byazt/dd/tt;->z:I

    .line 59
    invoke-interface {p3}, Lcom/byazt/su/DownloadController;->getDownloadMode()I

    move-result p2

    iput p2, p0, Lcom/byazt/dd/tt;->m:I

    .line 60
    invoke-interface {p3}, Lcom/byazt/su/DownloadController;->enableShowComplianceDialog()Z

    move-result p2

    iput-boolean p2, p0, Lcom/byazt/dd/tt;->pu:Z

    .line 61
    invoke-interface {p3}, Lcom/byazt/su/DownloadController;->isAutoDownloadOnCardShow()Z

    move-result p2

    iput-boolean p2, p0, Lcom/byazt/dd/tt;->lt:Z

    .line 62
    invoke-interface {p3}, Lcom/byazt/su/DownloadController;->enableNewActivity()Z

    move-result p2

    iput-boolean p2, p0, Lcom/byazt/dd/tt;->pf:Z

    .line 63
    invoke-interface {p3}, Lcom/byazt/su/DownloadController;->enableAH()Z

    move-result p2

    iput-boolean p2, p0, Lcom/byazt/dd/tt;->c:Z

    .line 64
    invoke-interface {p3}, Lcom/byazt/su/DownloadController;->enableAM()Z

    move-result p2

    iput-boolean p2, p0, Lcom/byazt/dd/tt;->tt:Z

    .line 65
    iput p4, p0, Lcom/byazt/dd/tt;->gr:I

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/byazt/dd/tt;->qy:J

    .line 67
    iput-wide p2, p0, Lcom/byazt/dd/tt;->md:J

    .line 68
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->shouldDownloadWithPatchApply()Z

    move-result p2

    iput-boolean p2, p0, Lcom/byazt/dd/tt;->nb:Z

    .line 69
    instance-of p2, p1, Lcom/byazt/ar/AdDownloadModel;

    if-eqz p2, :cond_1

    .line 70
    check-cast p1, Lcom/byazt/ar/AdDownloadModel;

    invoke-virtual {p1}, Lcom/byazt/ar/AdDownloadModel;->getTaskKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/dd/tt;->j:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static tt(Lorg/json/JSONObject;)Lcom/byazt/dd/tt;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/byazt/dd/tt;

    invoke-direct {v0}, Lcom/byazt/dd/tt;-><init>()V

    :try_start_0
    const-string v1, "mId"

    .line 7
    invoke-static {p0, v1}, Lcom/byazt/ki/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/dd/tt;->uj(J)V

    const-string v1, "mExtValue"

    .line 8
    invoke-static {p0, v1}, Lcom/byazt/ki/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/dd/tt;->n(J)V

    const-string v1, "mLogExtra"

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->ve(Ljava/lang/String;)V

    const-string v1, "mDownloadStatus"

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->n(I)V

    const-string v1, "mPackageName"

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->tt(Ljava/lang/String;)V

    const-string v1, "mIsAd"

    const/4 v2, 0x1

    .line 12
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->c(Z)V

    const-string v1, "mTimeStamp"

    .line 13
    invoke-static {p0, v1}, Lcom/byazt/ki/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/byazt/dd/tt;->a(J)V

    const-string v1, "mVersionCode"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->a(I)V

    const-string v1, "mVersionName"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->uj(Ljava/lang/String;)V

    const-string v1, "mDownloadId"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->sp(I)V

    const-string v1, "mIsV3Event"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->tt(Z)V

    const-string v1, "mScene"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->x(I)V

    const-string v1, "mEventTag"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->a(Ljava/lang/String;)V

    const-string v1, "mEventRefer"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->sp(Ljava/lang/String;)V

    const-string v1, "mDownloadUrl"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->x(Ljava/lang/String;)V

    const-string v1, "mEnableBackDialog"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->ve(Z)V

    .line 23
    iget-object v1, v0, Lcom/byazt/dd/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "hasSendInstallFinish"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    iget-object v1, v0, Lcom/byazt/dd/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "hasSendDownloadFailedFinally"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    iget-object v1, v0, Lcom/byazt/dd/tt;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "hasDoRebootMarketInstallFinishCheck"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v1, "mLastFailedErrCode"

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->uj(I)V

    const-string v1, "mLastFailedErrMsg"

    .line 27
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->c(Ljava/lang/String;)V

    const-string v1, "mOpenUrl"

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->i(Ljava/lang/String;)V

    const-string v1, "mLinkMode"

    .line 29
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->da(I)V

    const-string v1, "mDownloadMode"

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->sl(I)V

    const-string v1, "mModelType"

    .line 31
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->t(I)V

    const-string v1, "mAppName"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->da(Ljava/lang/String;)V

    const-string v1, "mAppIcon"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->sl(Ljava/lang/String;)V

    const-string v1, "mDownloadFailedTimes"

    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->c(I)V

    const-string v1, "mRecentDownloadResumeTime"

    .line 35
    invoke-static {p0, v1}, Lcom/byazt/ki/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/byazt/dd/tt;->c(J)V

    const-string v1, "mClickPauseTimes"

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->tt(I)V

    const-string v1, "mJumpInstallTime"

    .line 37
    invoke-static {p0, v1}, Lcom/byazt/ki/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/byazt/dd/tt;->tt(J)V

    const-string v1, "mCancelInstallTime"

    .line 38
    invoke-static {p0, v1}, Lcom/byazt/ki/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/byazt/dd/tt;->ve(J)V

    const-string v1, "mLastFailedResumeCount"

    .line 39
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->ve(I)V

    const-string v1, "downloadFinishReason"

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->t(Ljava/lang/String;)V

    const-string v1, "clickDownloadSize"

    .line 41
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/byazt/dd/tt;->i(J)V

    const-string v1, "clickDownloadTime"

    .line 42
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/byazt/dd/tt;->x(J)V

    const-string v1, "mIsUpdateDownload"

    .line 43
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->x(Z)V

    const-string v1, "mOriginMimeType"

    .line 44
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->u(Ljava/lang/String;)V

    const-string v1, "mIsPatchApplyHandled"

    .line 45
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->i(Z)V

    const-string v1, "installAfterCleanSpace"

    .line 46
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->a(Z)V

    const-string v1, "funnelType"

    .line 47
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->i(I)V

    const-string v1, "webUrl"

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->n(Ljava/lang/String;)V

    const-string v1, "enableShowComplianceDialog"

    .line 49
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->m(Z)V

    const-string v1, "isAutoDownloadOnCardShow"

    .line 50
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->nu(Z)V

    const-string v1, "enable_new_activity"

    .line 51
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->rh(Z)V

    const-string v1, "enable_pause"

    .line 52
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->my(Z)V

    const-string v1, "enable_ah"

    .line 53
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->gt(Z)V

    const-string v1, "enable_am"

    .line 54
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Lcom/byazt/dd/tt;->rl(Z)V

    const-string v1, "mExtras"

    .line 55
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->c(Lorg/json/JSONObject;)V

    const-string v1, "intent_jump_browser_success"

    .line 56
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->qy(Z)V

    const-string v1, "task_key"

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->yp(Ljava/lang/String;)V

    const-string v1, "market_install_finish_check_start_timestamp"

    .line 58
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/dd/tt;->da(J)V

    const-string v1, "download_pause_timestamp"

    const-wide/16 v2, 0x0

    .line 59
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/byazt/dd/tt;->sl(J)V

    const-string v1, "download_finish_timestamp"

    .line 60
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/dd/tt;->t(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 61
    invoke-static {}, Lcom/byazt/gq/t;->gt()Lcom/byazt/pd/c;

    move-result-object v1

    const-string v2, "NativeDownloadModel fromJson"

    invoke-interface {v1, p0, v2}, Lcom/byazt/pd/c;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/dd/tt;->t:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/dd/tt;->nu:I

    return-void
.end method

.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1
    iput-wide p1, p0, Lcom/byazt/dd/tt;->qy:J

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/dd/tt;->sv:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->hd:Z

    return-void
.end method

.method public aw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dd/tt;->my:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->os:Z

    .line 2
    .line 3
    return v0
.end method

.method public bm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public bx()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->zm:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/dd/tt;->sl:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/dd/tt;->yv:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/dd/tt;->md:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/dd/tt;->or:Ljava/lang/String;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/dd/tt;->gu:Lorg/json/JSONObject;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->rl:Z

    return-void
.end method

.method public cu()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/dd/tt;->qy:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/dd/tt;->eo:I

    .line 2
    .line 3
    return v0
.end method

.method public da()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dd/tt;->sv:Ljava/lang/String;

    return-object v0
.end method

.method public da(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/dd/tt;->z:I

    return-void
.end method

.method public da(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/byazt/dd/tt;->dz:J

    return-void
.end method

.method public da(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/dd/tt;->my:Ljava/lang/String;

    return-void
.end method

.method public da(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->v:Z

    return-void
.end method

.method public eo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/dd/tt;->zb:I

    .line 2
    .line 3
    return v0
.end method

.method public gr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/dd/tt;->yv:I

    .line 2
    .line 3
    return v0
.end method

.method public gt()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    return v0
.end method

.method public gt(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->c:Z

    return-void
.end method

.method public gu()Lcom/byazt/su/DownloadController;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/dd/tt;->j()Lcom/byazt/ar/AdDownloadController;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/dd/tt;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dd/tt;->kp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/dd/tt;->aw:Ljava/lang/String;

    return-object v0
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/dd/tt;->lr:I

    return-void
.end method

.method public i(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/dd/tt;->lo:J

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/dd/tt;->t:Ljava/lang/String;

    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->nb:Z

    return-void
.end method

.method public ic()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/dd/tt;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public iu()Lcom/byazt/ar/AdDownloadEventConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/dd/tt;->sv:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickButtonTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/byazt/dd/tt;->aw:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setRefer(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-boolean v1, p0, Lcom/byazt/dd/tt;->ic:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setIsEnableV3Event(Z)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->build()Lcom/byazt/ar/AdDownloadEventConfig;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public j()Lcom/byazt/ar/AdDownloadController;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/ar/AdDownloadController$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ar/AdDownloadController$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/byazt/dd/tt;->zm:Z

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setIsEnableBackDialog(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Lcom/byazt/dd/tt;->z:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setLinkMode(I)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Lcom/byazt/dd/tt;->m:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setDownloadMode(I)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-boolean v1, p0, Lcom/byazt/dd/tt;->pu:Z

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableShowComplianceDialog(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-boolean v1, p0, Lcom/byazt/dd/tt;->c:Z

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableAH(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-boolean v1, p0, Lcom/byazt/dd/tt;->tt:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableAM(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/byazt/ar/AdDownloadController$Builder;->build()Lcom/byazt/ar/AdDownloadController;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method public kk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->oz:Z

    .line 2
    .line 3
    return v0
.end method

.method public kp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->kk:Z

    .line 2
    .line 3
    return v0
.end method

.method public lo()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/dd/tt;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public lr()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->hd:Z

    .line 2
    .line 3
    return v0
.end method

.method public lt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->cu:Z

    .line 2
    .line 3
    return v0
.end method

.method public m()Lorg/json/JSONObject;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->pu:Z

    return-void
.end method

.method public md()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/byazt/dd/tt;->md:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/byazt/dd/tt;->qy:J

    .line 10
    .line 11
    :cond_0
    return-wide v0
.end method

.method public my()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/dd/tt;->gr:I

    return v0
.end method

.method public my(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->bx:Z

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/dd/tt;->da:Ljava/lang/String;

    return-object v0
.end method

.method public n(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/dd/tt;->i:I

    return-void
.end method

.method public n(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/dd/tt;->sp:J

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/dd/tt;->u:Ljava/lang/String;

    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->q:Z

    return-void
.end method

.method public nb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dd/tt;->rh:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public nu(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->lt:Z

    return-void
.end method

.method public nu()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->pf:Z

    return v0
.end method

.method public or()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/dd/tt;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public os()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->iu:Z

    .line 2
    .line 3
    return v0
.end method

.method public oz()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dd/tt;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized p()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/byazt/dd/tt;->p:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/byazt/dd/tt;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public pf()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/dd/tt;->bm:I

    .line 2
    .line 3
    return v0
.end method

.method public pu()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/dd/tt;->lo:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public qp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/dd/tt;->nu:I

    .line 2
    .line 3
    return v0
.end method

.method public qy()Lcom/byazt/su/DownloadEventConfig;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/byazt/dd/tt;->iu()Lcom/byazt/ar/AdDownloadEventConfig;

    move-result-object v0

    return-object v0
.end method

.method public qy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->iu:Z

    return-void
.end method

.method public r()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/dd/tt;->dz:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public rh()Lorg/json/JSONObject;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public rh(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->pf:Z

    return-void
.end method

.method public rl()Lcom/byazt/su/DownloadModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/byazt/dd/tt;->y()Lcom/byazt/ar/AdDownloadModel;

    move-result-object v0

    return-object v0
.end method

.method public rl(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->tt:Z

    return-void
.end method

.method public s()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "mId"

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/byazt/dd/tt;->a:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "mExtValue"

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/byazt/dd/tt;->sp:J

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "mLogExtra"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/byazt/dd/tt;->x:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "mDownloadStatus"

    .line 28
    .line 29
    iget v2, p0, Lcom/byazt/dd/tt;->i:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "mPackageName"

    .line 35
    .line 36
    iget-object v2, p0, Lcom/byazt/dd/tt;->da:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "mIsAd"

    .line 42
    .line 43
    iget-boolean v2, p0, Lcom/byazt/dd/tt;->rl:Z

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "mTimeStamp"

    .line 49
    .line 50
    iget-wide v2, p0, Lcom/byazt/dd/tt;->qy:J

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "mExtras"

    .line 56
    .line 57
    iget-object v2, p0, Lcom/byazt/dd/tt;->gu:Lorg/json/JSONObject;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v1, "mVersionCode"

    .line 63
    .line 64
    iget v2, p0, Lcom/byazt/dd/tt;->nu:I

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "mVersionName"

    .line 70
    .line 71
    iget-object v2, p0, Lcom/byazt/dd/tt;->rh:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v1, "mDownloadId"

    .line 77
    .line 78
    iget v2, p0, Lcom/byazt/dd/tt;->gr:I

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    const-string v1, "mIsV3Event"

    .line 84
    .line 85
    iget-boolean v2, p0, Lcom/byazt/dd/tt;->ic:Z

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    const-string v1, "mScene"

    .line 91
    .line 92
    iget v2, p0, Lcom/byazt/dd/tt;->bm:I

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    const-string v1, "mEventTag"

    .line 98
    .line 99
    iget-object v2, p0, Lcom/byazt/dd/tt;->sv:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    const-string v1, "mEventRefer"

    .line 105
    .line 106
    iget-object v2, p0, Lcom/byazt/dd/tt;->aw:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    const-string v1, "mDownloadUrl"

    .line 112
    .line 113
    iget-object v2, p0, Lcom/byazt/dd/tt;->sl:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    const-string v1, "mEnableBackDialog"

    .line 119
    .line 120
    iget-boolean v2, p0, Lcom/byazt/dd/tt;->zm:Z

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    const-string v1, "hasSendInstallFinish"

    .line 126
    .line 127
    iget-object v2, p0, Lcom/byazt/dd/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 134
    .line 135
    .line 136
    const-string v1, "hasSendDownloadFailedFinally"

    .line 137
    .line 138
    iget-object v2, p0, Lcom/byazt/dd/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    const-string v1, "hasDoRebootMarketInstallFinishCheck"

    .line 148
    .line 149
    iget-object v2, p0, Lcom/byazt/dd/tt;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    const-string v1, "mLastFailedErrCode"

    .line 159
    .line 160
    iget v2, p0, Lcom/byazt/dd/tt;->zb:I

    .line 161
    .line 162
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    const-string v1, "mLastFailedErrMsg"

    .line 166
    .line 167
    iget-object v2, p0, Lcom/byazt/dd/tt;->or:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    .line 171
    .line 172
    const-string v1, "mOpenUrl"

    .line 173
    .line 174
    iget-object v2, p0, Lcom/byazt/dd/tt;->t:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    const-string v1, "mLinkMode"

    .line 180
    .line 181
    iget v2, p0, Lcom/byazt/dd/tt;->z:I

    .line 182
    .line 183
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    .line 185
    .line 186
    const-string v1, "mDownloadMode"

    .line 187
    .line 188
    iget v2, p0, Lcom/byazt/dd/tt;->m:I

    .line 189
    .line 190
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    const-string v1, "mModelType"

    .line 194
    .line 195
    iget v2, p0, Lcom/byazt/dd/tt;->yp:I

    .line 196
    .line 197
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    const-string v1, "mAppName"

    .line 201
    .line 202
    iget-object v2, p0, Lcom/byazt/dd/tt;->my:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    .line 206
    .line 207
    const-string v1, "mAppIcon"

    .line 208
    .line 209
    iget-object v2, p0, Lcom/byazt/dd/tt;->gt:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    .line 213
    .line 214
    const-string v1, "mDownloadFailedTimes"

    .line 215
    .line 216
    iget v2, p0, Lcom/byazt/dd/tt;->yv:I

    .line 217
    .line 218
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    .line 220
    .line 221
    const-string v1, "mRecentDownloadResumeTime"

    .line 222
    .line 223
    iget-wide v2, p0, Lcom/byazt/dd/tt;->md:J

    .line 224
    .line 225
    const-wide/16 v4, 0x0

    .line 226
    .line 227
    cmp-long v6, v2, v4

    .line 228
    .line 229
    if-nez v6, :cond_0

    .line 230
    .line 231
    iget-wide v2, p0, Lcom/byazt/dd/tt;->qy:J

    .line 232
    .line 233
    :cond_0
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 234
    .line 235
    .line 236
    const-string v1, "mClickPauseTimes"

    .line 237
    .line 238
    iget v2, p0, Lcom/byazt/dd/tt;->p:I

    .line 239
    .line 240
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    .line 242
    .line 243
    const-string v1, "mJumpInstallTime"

    .line 244
    .line 245
    iget-wide v2, p0, Lcom/byazt/dd/tt;->h:J

    .line 246
    .line 247
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 248
    .line 249
    .line 250
    const-string v1, "mCancelInstallTime"

    .line 251
    .line 252
    iget-wide v2, p0, Lcom/byazt/dd/tt;->d:J

    .line 253
    .line 254
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 255
    .line 256
    .line 257
    const-string v1, "mLastFailedResumeCount"

    .line 258
    .line 259
    iget v2, p0, Lcom/byazt/dd/tt;->eo:I

    .line 260
    .line 261
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    .line 263
    .line 264
    const-string v1, "mIsUpdateDownload"

    .line 265
    .line 266
    iget-boolean v2, p0, Lcom/byazt/dd/tt;->cu:Z

    .line 267
    .line 268
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 269
    .line 270
    .line 271
    const-string v1, "mOriginMimeType"

    .line 272
    .line 273
    iget-object v2, p0, Lcom/byazt/dd/tt;->qp:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    .line 277
    .line 278
    const-string v1, "mIsPatchApplyHandled"

    .line 279
    .line 280
    iget-boolean v2, p0, Lcom/byazt/dd/tt;->nb:Z

    .line 281
    .line 282
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 283
    .line 284
    .line 285
    const-string v1, "downloadFinishReason"

    .line 286
    .line 287
    iget-object v2, p0, Lcom/byazt/dd/tt;->kp:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    .line 291
    .line 292
    const-string v1, "clickDownloadTime"

    .line 293
    .line 294
    iget-wide v2, p0, Lcom/byazt/dd/tt;->l:J

    .line 295
    .line 296
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 297
    .line 298
    .line 299
    const-string v1, "clickDownloadSize"

    .line 300
    .line 301
    iget-wide v2, p0, Lcom/byazt/dd/tt;->lo:J

    .line 302
    .line 303
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 304
    .line 305
    .line 306
    const-string v1, "installAfterCleanSpace"

    .line 307
    .line 308
    iget-boolean v2, p0, Lcom/byazt/dd/tt;->hd:Z

    .line 309
    .line 310
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 311
    .line 312
    .line 313
    const-string v1, "funnelType"

    .line 314
    .line 315
    iget v2, p0, Lcom/byazt/dd/tt;->lr:I

    .line 316
    .line 317
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 318
    .line 319
    .line 320
    const-string v1, "webUrl"

    .line 321
    .line 322
    iget-object v2, p0, Lcom/byazt/dd/tt;->u:Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    .line 326
    .line 327
    const-string v1, "enableShowComplianceDialog"

    .line 328
    .line 329
    iget-boolean v2, p0, Lcom/byazt/dd/tt;->pu:Z

    .line 330
    .line 331
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 332
    .line 333
    .line 334
    const-string v1, "isAutoDownloadOnCardShow"

    .line 335
    .line 336
    iget-boolean v2, p0, Lcom/byazt/dd/tt;->lt:Z

    .line 337
    .line 338
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 339
    .line 340
    .line 341
    const-string v1, "enable_new_activity"

    .line 342
    .line 343
    iget-boolean v2, p0, Lcom/byazt/dd/tt;->pf:Z

    .line 344
    .line 345
    const/4 v3, 0x1

    .line 346
    const/4 v4, 0x0

    .line 347
    if-eqz v2, :cond_1

    .line 348
    .line 349
    const/4 v2, 0x1

    .line 350
    goto :goto_0

    .line 351
    :cond_1
    const/4 v2, 0x0

    .line 352
    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 353
    .line 354
    .line 355
    const-string v1, "enable_pause"

    .line 356
    .line 357
    iget-boolean v2, p0, Lcom/byazt/dd/tt;->bx:Z

    .line 358
    .line 359
    if-eqz v2, :cond_2

    .line 360
    .line 361
    const/4 v2, 0x1

    .line 362
    goto :goto_1

    .line 363
    :cond_2
    const/4 v2, 0x0

    .line 364
    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 365
    .line 366
    .line 367
    const-string v1, "enable_ah"

    .line 368
    .line 369
    iget-boolean v2, p0, Lcom/byazt/dd/tt;->c:Z

    .line 370
    .line 371
    if-eqz v2, :cond_3

    .line 372
    .line 373
    const/4 v2, 0x1

    .line 374
    goto :goto_2

    .line 375
    :cond_3
    const/4 v2, 0x0

    .line 376
    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 377
    .line 378
    .line 379
    const-string v1, "enable_am"

    .line 380
    .line 381
    iget-boolean v2, p0, Lcom/byazt/dd/tt;->tt:Z

    .line 382
    .line 383
    if-eqz v2, :cond_4

    .line 384
    .line 385
    goto :goto_3

    .line 386
    :cond_4
    const/4 v3, 0x0

    .line 387
    :goto_3
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 388
    .line 389
    .line 390
    const-string v1, "intent_jump_browser_success"

    .line 391
    .line 392
    iget-boolean v2, p0, Lcom/byazt/dd/tt;->iu:Z

    .line 393
    .line 394
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    .line 400
    .line 401
    const-string v1, "task_key"

    .line 402
    .line 403
    iget-object v2, p0, Lcom/byazt/dd/tt;->j:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    .line 407
    .line 408
    const-string v1, "market_install_finish_check_start_timestamp"

    .line 409
    .line 410
    iget-wide v2, p0, Lcom/byazt/dd/tt;->dz:J

    .line 411
    .line 412
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    .line 418
    .line 419
    const-string v1, "download_pause_timestamp"

    .line 420
    .line 421
    iget-wide v2, p0, Lcom/byazt/dd/tt;->to:J

    .line 422
    .line 423
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    .line 429
    .line 430
    const-string v1, "download_finish_timestamp"

    .line 431
    .line 432
    iget-wide v2, p0, Lcom/byazt/dd/tt;->tk:J

    .line 433
    .line 434
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .line 440
    .line 441
    goto :goto_4

    .line 442
    :catch_0
    move-exception v1

    .line 443
    invoke-static {}, Lcom/byazt/gq/t;->gt()Lcom/byazt/pd/c;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    const-string v3, "NativeDownloadModel toJson"

    .line 448
    .line 449
    invoke-interface {v2, v1, v3}, Lcom/byazt/pd/c;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    :goto_4
    return-object v0
.end method

.method public sl()Lorg/json/JSONObject;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public sl(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/dd/tt;->m:I

    return-void
.end method

.method public sl(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/byazt/dd/tt;->to:J

    return-void
.end method

.method public sl(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/dd/tt;->gt:Ljava/lang/String;

    return-void
.end method

.method public sl(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->os:Z

    return-void
.end method

.method public sp()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dd/tt;->gu:Lorg/json/JSONObject;

    return-object v0
.end method

.method public sp(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/dd/tt;->gr:I

    return-void
.end method

.method public sp(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/dd/tt;->tx:J

    return-void
.end method

.method public sp(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/dd/tt;->aw:Ljava/lang/String;

    return-void
.end method

.method public sp(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->kk:Z

    return-void
.end method

.method public sv()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/dd/tt;->tx:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public t()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/dd/tt;->sp:J

    return-wide v0
.end method

.method public t(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/dd/tt;->yp:I

    return-void
.end method

.method public t(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/byazt/dd/tt;->tk:J

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/dd/tt;->kp:Ljava/lang/String;

    return-void
.end method

.method public t(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->r:Z

    return-void
.end method

.method public tk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->nb:Z

    .line 2
    .line 3
    return v0
.end method

.method public to()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dd/tt;->qp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/byazt/dd/tt;->a:J

    return-wide v0
.end method

.method public tt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/dd/tt;->p:I

    return-void
.end method

.method public tt(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/dd/tt;->h:J

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/dd/tt;->da:Ljava/lang/String;

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->ic:Z

    return-void
.end method

.method public tx()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/dd/tt;->qp:Ljava/lang/String;

    return-void
.end method

.method public u(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->oz:Z

    return-void
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->ic:Z

    return v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/dd/tt;->x:Ljava/lang/String;

    return-object v0
.end method

.method public uj(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/dd/tt;->zb:I

    return-void
.end method

.method public uj(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/dd/tt;->a:J

    return-void
.end method

.method public uj(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/dd/tt;->rh:Ljava/lang/String;

    return-void
.end method

.method public uj(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->b:Z

    return-void
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public ve(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/dd/tt;->eo:I

    return-void
.end method

.method public ve(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/dd/tt;->d:J

    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/dd/tt;->x:Ljava/lang/String;

    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->zm:Z

    return-void
.end method

.method public ve()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/byazt/dd/tt;->rl:Z

    return v0
.end method

.method public x()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/dd/tt;->lr:I

    return v0
.end method

.method public x(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/dd/tt;->bm:I

    return-void
.end method

.method public x(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/dd/tt;->l:J

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/dd/tt;->sl:Ljava/lang/String;

    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->cu:Z

    return-void
.end method

.method public y()Lcom/byazt/ar/AdDownloadModel;
    .locals 5

    .line 1
    new-instance v0, Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ar/AdDownloadModel$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/byazt/dd/tt;->a:J

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ar/AdDownloadModel$Builder;->setAdId(J)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-wide v1, p0, Lcom/byazt/dd/tt;->sp:J

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ar/AdDownloadModel$Builder;->setExtraValue(J)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/byazt/dd/tt;->x:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setLogExtra(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/byazt/dd/tt;->da:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setPackageName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/byazt/dd/tt;->gu:Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setExtra(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-boolean v1, p0, Lcom/byazt/dd/tt;->rl:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setIsAd(Z)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v1, p0, Lcom/byazt/dd/tt;->nu:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setVersionCode(I)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/byazt/dd/tt;->rh:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setVersionName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/byazt/dd/tt;->sl:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setDownloadUrl(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget v1, p0, Lcom/byazt/dd/tt;->yp:I

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setModelType(I)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/byazt/dd/tt;->qp:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setMimeType(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/byazt/dd/tt;->my:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setAppName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/byazt/dd/tt;->gt:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setAppIcon(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/byazt/dd/tt;->j:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setTaskKey(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, Lcom/byazt/e/DeepLink;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/byazt/dd/tt;->t:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/byazt/dd/tt;->u:Ljava/lang/String;

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    invoke-direct {v1, v2, v3, v4}, Lcom/byazt/e/DeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadModel$Builder;->setDeepLink(Lcom/byazt/e/DeepLink;)Lcom/byazt/ar/AdDownloadModel$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/byazt/ar/AdDownloadModel$Builder;->build()Lcom/byazt/ar/AdDownloadModel;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0
.end method

.method public yp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public yp(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/dd/tt;->j:Ljava/lang/String;

    return-void
.end method

.method public yp(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->s:Z

    return-void
.end method

.method public yv()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/dd/tt;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public z()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public z(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/dd/tt;->y:Z

    return-void
.end method

.method public zb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dd/tt;->or:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized zm()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/byazt/dd/tt;->yv:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/byazt/dd/tt;->yv:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

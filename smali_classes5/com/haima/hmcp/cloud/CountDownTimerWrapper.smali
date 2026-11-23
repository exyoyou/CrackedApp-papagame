.class public abstract Lcom/haima/hmcp/cloud/CountDownTimerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CountDownTimerWrapper"


# instance fields
.field private mCountDownTimer:Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/haima/hmcp/cloud/CountDownTimerWrapper<",
            "TT;>.OrderCountDownTimer;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public cancelTimeCountDown()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "cloud-file: : cancel order timer"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->mCountDownTimer:Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->cancel()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->mCountDownTimer:Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;

    .line 18
    .line 19
    return-void
.end method

.method protected abstract onTimeOut(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public startTimeCountDown(JLjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "cloud-file: : start order timer"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->mCountDownTimer:Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->cancelTimeCountDown()V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;

    .line 16
    .line 17
    const-wide/16 v5, 0x64

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    move-object v2, p0

    .line 21
    move-wide v3, p1

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;-><init>(Lcom/haima/hmcp/cloud/CountDownTimerWrapper;JJ)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->mCountDownTimer:Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;

    .line 26
    .line 27
    invoke-virtual {v0, p3}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;->setData(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->mCountDownTimer:Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/CountDownTimer;->start()Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 33
    .line 34
    .line 35
    return-void
.end method

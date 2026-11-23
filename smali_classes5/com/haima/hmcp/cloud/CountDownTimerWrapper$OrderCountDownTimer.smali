.class Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;
.super Lcom/haima/hmcp/widgets/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/cloud/CountDownTimerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrderCountDownTimer"
.end annotation


# instance fields
.field private t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/haima/hmcp/cloud/CountDownTimerWrapper;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/CountDownTimerWrapper;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;->this$0:Lcom/haima/hmcp/cloud/CountDownTimerWrapper;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/haima/hmcp/widgets/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "cloud-file: : order time out"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;->this$0:Lcom/haima/hmcp/cloud/CountDownTimerWrapper;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;->t:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->onTimeOut(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/CountDownTimerWrapper$OrderCountDownTimer;->t:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$SwitchIMEAckTimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchIMEAckTimer"
.end annotation


# instance fields
.field private cancel:Z

.field private ime:Ljava/lang/String;

.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$SwitchIMEAckTimer;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$SwitchIMEAckTimer;->cancel:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$SwitchIMEAckTimer;->ime:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$SwitchIMEAckTimer;->cancel:Z

    .line 3
    .line 4
    return-void
.end method

.method public getIME()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$SwitchIMEAckTimer;->ime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isCancel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$SwitchIMEAckTimer;->cancel:Z

    .line 2
    .line 3
    return v0
.end method

.method public run()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$SwitchIMEAckTimer;->cancel:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/haima/hmcp/beans/ReportTimer;

    .line 7
    .line 8
    const-string v2, "SwitchIMEAckTimer"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, ""

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$SwitchIMEAckTimer;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mIMEConfig:Lcom/haima/hmcp/beans/IMEConfig;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/IMEConfig;->getSwitchIMEAckTimeout()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    mul-int/lit16 v1, v1, 0x3e8

    .line 40
    .line 41
    int-to-long v4, v1

    .line 42
    const/4 v6, 0x0

    .line 43
    sget-object v7, Lcom/haima/hmcp/beans/ReportTimer$Action;->EXECUTE:Lcom/haima/hmcp/beans/ReportTimer$Action;

    .line 44
    .line 45
    move-object v1, v0

    .line 46
    invoke-direct/range {v1 .. v7}, Lcom/haima/hmcp/beans/ReportTimer;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/haima/hmcp/beans/ReportTimer$Action;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEventRaw(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$SwitchIMEAckTimer;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$SwitchIMEAckTimer;->ime:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$3000(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.class public Lcom/haima/hmcp/business/GetCloudImeTransaction$GetCloudImeTimerTask;
.super Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/business/GetCloudImeTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCloudImeTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/GetCloudImeTransaction;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/business/GetCloudImeTransaction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/GetCloudImeTransaction$GetCloudImeTimerTask;->this$0:Lcom/haima/hmcp/business/GetCloudImeTransaction;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;-><init>(Lcom/haima/hmcp/business/BaseTransaction;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;->cancel:Z

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
    const-string v2, "GetCloudImeTransaction"

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
    iget-object v1, p0, Lcom/haima/hmcp/business/GetCloudImeTransaction$GetCloudImeTimerTask;->this$0:Lcom/haima/hmcp/business/GetCloudImeTransaction;

    .line 32
    .line 33
    iget v1, v1, Lcom/haima/hmcp/business/BaseTransaction;->mTimeOutSeconds:I

    .line 34
    .line 35
    int-to-long v4, v1

    .line 36
    const-wide/16 v6, 0x3e8

    .line 37
    .line 38
    mul-long v4, v4, v6

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    sget-object v7, Lcom/haima/hmcp/beans/ReportTimer$Action;->EXECUTE:Lcom/haima/hmcp/beans/ReportTimer$Action;

    .line 42
    .line 43
    move-object v1, v0

    .line 44
    invoke-direct/range {v1 .. v7}, Lcom/haima/hmcp/beans/ReportTimer;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/haima/hmcp/beans/ReportTimer$Action;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEventRaw(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/haima/hmcp/business/GetCloudImeTransaction$GetCloudImeTimerTask;->this$0:Lcom/haima/hmcp/business/GetCloudImeTransaction;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/haima/hmcp/business/GetCloudImeTransaction;->access$000(Lcom/haima/hmcp/business/GetCloudImeTransaction;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

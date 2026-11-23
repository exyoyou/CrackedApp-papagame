.class public Lcom/haima/hmcp/beans/RetryErrorcodeConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;
    }
.end annotation


# static fields
.field public static requestRetryConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static reset()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/beans/RetryErrorcodeConfig;->requestRetryConfigList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/haima/hmcp/beans/RetryErrorcodeConfig;->requestRetryConfigList:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iput v2, v1, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->currentRetryTimes:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

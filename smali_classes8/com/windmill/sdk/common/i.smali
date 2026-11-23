.class public Lcom/windmill/sdk/common/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/base/AutoAdLoadListener;


# instance fields
.field private a:Lcom/windmill/sdk/base/AutoAdLoadListener;


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


# virtual methods
.method public a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoLoadListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/i;->a:Lcom/windmill/sdk/base/AutoAdLoadListener;

    .line 2
    .line 3
    return-void
.end method

.method public onAutoAdLoadFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/i;->a:Lcom/windmill/sdk/base/AutoAdLoadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/windmill/sdk/base/AutoAdLoadListener;->onAutoAdLoadFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAutoAdLoadSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/i;->a:Lcom/windmill/sdk/base/AutoAdLoadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/windmill/sdk/base/AutoAdLoadListener;->onAutoAdLoadSuccess(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

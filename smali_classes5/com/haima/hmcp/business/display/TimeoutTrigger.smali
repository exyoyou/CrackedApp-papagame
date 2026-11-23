.class Lcom/haima/hmcp/business/display/TimeoutTrigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private listener:Lcom/haima/hmcp/business/display/TimeoutListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/haima/hmcp/business/display/TimeoutListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
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


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/TimeoutTrigger;->listener:Lcom/haima/hmcp/business/display/TimeoutListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/business/display/TimeoutTrigger;->t:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/haima/hmcp/business/display/TimeoutListener;->onTimeout(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
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
    iput-object p1, p0, Lcom/haima/hmcp/business/display/TimeoutTrigger;->t:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setTimeoutListener(Lcom/haima/hmcp/business/display/TimeoutListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/business/display/TimeoutListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/display/TimeoutTrigger;->listener:Lcom/haima/hmcp/business/display/TimeoutListener;

    .line 2
    .line 3
    return-void
.end method

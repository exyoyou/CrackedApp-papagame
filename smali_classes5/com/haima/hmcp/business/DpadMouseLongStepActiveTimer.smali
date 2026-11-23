.class public Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer$DpadMouseLongStepActiveTimerListener;
    }
.end annotation


# instance fields
.field private cancel:Z

.field private event:Landroid/view/KeyEvent;

.field private listener:Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer$DpadMouseLongStepActiveTimerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer;->listener:Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer$DpadMouseLongStepActiveTimerListener;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer;->cancel:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer;->cancel:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer;->listener:Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer$DpadMouseLongStepActiveTimerListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer$DpadMouseLongStepActiveTimerListener;->onNormalStepActive()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer;->cancel:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer;->listener:Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer$DpadMouseLongStepActiveTimerListener;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer;->event:Landroid/view/KeyEvent;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer$DpadMouseLongStepActiveTimerListener;->onLongStepActive(Landroid/view/KeyEvent;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public setEvent(Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer;->event:Landroid/view/KeyEvent;

    .line 2
    .line 3
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer$DpadMouseLongStepActiveTimerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer;->listener:Lcom/haima/hmcp/business/DpadMouseLongStepActiveTimer$DpadMouseLongStepActiveTimerListener;

    .line 2
    .line 3
    return-void
.end method

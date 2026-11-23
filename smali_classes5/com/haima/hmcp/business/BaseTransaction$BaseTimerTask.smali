.class public abstract Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/business/BaseTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseTimerTask"
.end annotation


# instance fields
.field protected cancel:Z

.field final synthetic this$0:Lcom/haima/hmcp/business/BaseTransaction;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/business/BaseTransaction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;->this$0:Lcom/haima/hmcp/business/BaseTransaction;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;->cancel:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;->cancel:Z

    .line 3
    .line 4
    return-void
.end method

.method public isCancel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;->cancel:Z

    .line 2
    .line 3
    return v0
.end method

.method public run()V
    .locals 0

    return-void
.end method

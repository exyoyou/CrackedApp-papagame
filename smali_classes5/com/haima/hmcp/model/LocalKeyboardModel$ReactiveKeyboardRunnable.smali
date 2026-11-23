.class Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/model/LocalKeyboardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReactiveKeyboardRunnable"
.end annotation


# instance fields
.field private listener:Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnableListener;

.field private payload:Ljava/lang/String;


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
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "reactive keyboard is running..."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;->listener:Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnableListener;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;->payload:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnableListener;->onReactive(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnableListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;->listener:Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnableListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;->payload:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

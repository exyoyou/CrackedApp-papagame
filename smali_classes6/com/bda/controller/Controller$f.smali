.class Lcom/bda/controller/Controller$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final b:Lcom/bda/controller/StateEvent;

.field final synthetic c:Lcom/bda/controller/Controller;


# direct methods
.method public constructor <init>(Lcom/bda/controller/Controller;Lcom/bda/controller/StateEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bda/controller/Controller$f;->c:Lcom/bda/controller/Controller;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/bda/controller/Controller$f;->b:Lcom/bda/controller/StateEvent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller$f;->c:Lcom/bda/controller/Controller;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bda/controller/Controller$f;->b:Lcom/bda/controller/StateEvent;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/bda/controller/b;->onStateEvent(Lcom/bda/controller/StateEvent;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

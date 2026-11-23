.class Lcom/beizi/ad/v2/a/b$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/ad/v2/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/v2/a/b;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/a/b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/a/b$1;->a:Lcom/beizi/ad/v2/a/b;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x10

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/beizi/ad/v2/a/b$1;->a:Lcom/beizi/ad/v2/a/b;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/beizi/ad/v2/a/b;->n()Z

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

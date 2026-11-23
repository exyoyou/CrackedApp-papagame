.class public Lcom/byazt/omf/EmptyView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x9e2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/EmptyView;->uj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/omf/EmptyView;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/EmptyView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/EmptyView$2;->c:Lcom/byazt/omf/EmptyView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$2;->c:Lcom/byazt/omf/EmptyView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/omf/EmptyView;->uj(Lcom/byazt/omf/EmptyView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$2;->c:Lcom/byazt/omf/EmptyView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/omf/EmptyView;->n(Lcom/byazt/omf/EmptyView;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$2;->c:Lcom/byazt/omf/EmptyView;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v0, v1}, Lcom/byazt/omf/EmptyView;->tt(Lcom/byazt/omf/EmptyView;Z)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$2;->c:Lcom/byazt/omf/EmptyView;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/omf/EmptyView;->a(Lcom/byazt/omf/EmptyView;)I

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput v1, v0, Landroid/os/Message;->what:I

    .line 34
    .line 35
    iget-object v1, p0, Lcom/byazt/omf/EmptyView$2;->c:Lcom/byazt/omf/EmptyView;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/byazt/omf/EmptyView;->sp(Lcom/byazt/omf/EmptyView;)Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method

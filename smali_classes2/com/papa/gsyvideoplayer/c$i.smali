.class Lcom/papa/gsyvideoplayer/c$i;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/gsyvideoplayer/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/c;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c$i;->a:Lcom/papa/gsyvideoplayer/c;

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
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$i;->a:Lcom/papa/gsyvideoplayer/c;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/papa/gsyvideoplayer/c;->D(Lcom/papa/gsyvideoplayer/c;Landroid/os/Message;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c$i;->a:Lcom/papa/gsyvideoplayer/c;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/player/c;->release()V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c$i;->a:Lcom/papa/gsyvideoplayer/c;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/papa/gsyvideoplayer/c;->j:Lcom/papa/gsyvideoplayer/cache/b;

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/cache/b;->release()V

    .line 37
    .line 38
    .line 39
    :cond_3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c$i;->a:Lcom/papa/gsyvideoplayer/c;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput v0, p1, Lcom/papa/gsyvideoplayer/c;->o:I

    .line 43
    .line 44
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/c;->q:Z

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/c;->W(Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c$i;->a:Lcom/papa/gsyvideoplayer/c;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/c;->E()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$i;->a:Lcom/papa/gsyvideoplayer/c;

    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/papa/gsyvideoplayer/c;->C(Lcom/papa/gsyvideoplayer/c;Landroid/os/Message;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

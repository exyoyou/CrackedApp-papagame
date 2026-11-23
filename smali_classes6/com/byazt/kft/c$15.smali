.class public Lcom/byazt/kft/c$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x501
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/c;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kft/c;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/c$15;->c:Lcom/byazt/kft/c;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/c$15;->c:Lcom/byazt/kft/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/kft/c;->h(Lcom/byazt/kft/c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "TTLottieFakeVideoPlayer"

    .line 10
    .line 11
    const-string v1, "--==--audio buffering start"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/kft/c$15;->c:Lcom/byazt/kft/c;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/kft/c;->isPlaying()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/kft/c$15;->c:Lcom/byazt/kft/c;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/kft/c;->d(Lcom/byazt/kft/c;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/c$15;->c:Lcom/byazt/kft/c;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/kft/c;->rh(Lcom/byazt/kft/c;)Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/byazt/kft/c$15;->c:Lcom/byazt/kft/c;

    .line 52
    .line 53
    const/4 v3, -0x1

    .line 54
    invoke-interface {v1, v2, v3, v3, v3}, Lcom/byazt/fk/sp$c;->onBufferStart(Lcom/byazt/fk/sp;III)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/byazt/kft/c$15;->c:Lcom/byazt/kft/c;

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-static {v0, v1}, Lcom/byazt/kft/c;->ve(Lcom/byazt/kft/c;Z)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method

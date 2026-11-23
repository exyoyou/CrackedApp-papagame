.class public Lcom/byazt/kft/c$2;
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
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/c;->uj()V
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
    iput-object p1, p0, Lcom/byazt/kft/c$2;->c:Lcom/byazt/kft/c;

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
    const-string v0, "TTLottieFakeVideoPlayer"

    .line 2
    .line 3
    const-string v1, "--==--audio buffering end"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/kft/c$2;->c:Lcom/byazt/kft/c;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/byazt/kft/c;->ve(Lcom/byazt/kft/c;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/kft/c$2;->c:Lcom/byazt/kft/c;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/kft/c;->isPaused()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/kft/c$2;->c:Lcom/byazt/kft/c;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/kft/c;->eo(Lcom/byazt/kft/c;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/c$2;->c:Lcom/byazt/kft/c;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/byazt/kft/c;->rh(Lcom/byazt/kft/c;)Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/byazt/kft/c$2;->c:Lcom/byazt/kft/c;

    .line 50
    .line 51
    const/4 v3, -0x1

    .line 52
    invoke-interface {v1, v2, v3}, Lcom/byazt/fk/sp$c;->onBufferEnd(Lcom/byazt/fk/sp;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

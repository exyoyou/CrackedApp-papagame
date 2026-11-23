.class public Lcom/byazt/lcf/TTBaseVideoActivity$7;
.super Lcom/byazt/qq/da;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26,
        0x654
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qq/da;

.field public final synthetic tt:Lcom/byazt/lcf/TTBaseVideoActivity;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/qq/da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$7;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/lcf/TTBaseVideoActivity$7;->c:Lcom/byazt/qq/da;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/qq/da;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$7;->c:Lcom/byazt/qq/da;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/qq/da;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$7;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v1, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->pf:Lcom/byazt/kcl/ve;

    invoke-static {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->zm(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/qq/tt$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qq/tt$c;->c()I

    move-result v0

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity$7;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->zm(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/qq/tt$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/qq/tt$c;->tt()Ljava/lang/String;

    move-result-object v2

    const-string v3, "reward_retain_dialog_cancel"

    invoke-virtual {v1, v3, v0, v2}, Lcom/byazt/kcl/ve;->c(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$7;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(IZ)V

    .line 5
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$7;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u606d\u559c\u60a8\uff0c\u53ef\u63d0\u524d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s\u83b7\u5f97\u5956\u52b1\uff5e"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/kcl/n;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public tt()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$7;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$7;->c:Lcom/byazt/qq/da;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/qq/da;->tt()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$7;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->pf:Lcom/byazt/kcl/ve;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->zm(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/qq/tt$c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/byazt/qq/tt$c;->c()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity$7;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->zm(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/qq/tt$c;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/byazt/qq/tt$c;->tt()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "reward_retain_dialog_skip"

    .line 39
    .line 40
    invoke-virtual {v1, v3, v0, v2}, Lcom/byazt/kcl/ve;->c(Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public ve()V
    .locals 0

    return-void
.end method

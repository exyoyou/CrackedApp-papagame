.class public Lcom/byazt/fcd/ve$5;
.super Lcom/byazt/qq/da;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x186
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/fcd/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qq/da;

.field public final synthetic tt:Lcom/byazt/fcd/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/fcd/ve;Lcom/byazt/qq/da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fcd/ve$5;->tt:Lcom/byazt/fcd/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/fcd/ve$5;->c:Lcom/byazt/qq/da;

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
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/qq/da;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/ve$5;->c:Lcom/byazt/qq/da;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/qq/da;->c()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/ve$5;->tt:Lcom/byazt/fcd/ve;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->aw()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/ve$5;->c:Lcom/byazt/qq/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/qq/da;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/byazt/qq/da;->ve()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/ve$5;->tt:Lcom/byazt/fcd/ve;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->aw()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/fcd/ve$5;->tt:Lcom/byazt/fcd/ve;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/fcd/ve;->i(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/fcd/ve$5;->tt:Lcom/byazt/fcd/ve;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->lt()Lcom/byazt/kcl/ve;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    const-string v2, ""

    .line 27
    .line 28
    const-string v3, "reward_retain_dialog_next"

    .line 29
    .line 30
    invoke-virtual {v0, v3, v1, v2}, Lcom/byazt/kcl/ve;->c(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.class public Lcom/byazt/fcd/da$1;
.super Lcom/byazt/qq/da;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x138
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/fcd/da;->c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qq/da;

.field public final synthetic tt:Lcom/byazt/fcd/da;


# direct methods
.method public constructor <init>(Lcom/byazt/fcd/da;Lcom/byazt/qq/da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fcd/da$1;->tt:Lcom/byazt/fcd/da;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/fcd/da$1;->c:Lcom/byazt/qq/da;

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
    iget-object v0, p0, Lcom/byazt/fcd/da$1;->c:Lcom/byazt/qq/da;

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
    iget-object v0, p0, Lcom/byazt/fcd/da$1;->tt:Lcom/byazt/fcd/da;

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
    iget-object v0, p0, Lcom/byazt/fcd/da$1;->c:Lcom/byazt/qq/da;

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
    iget-object v0, p0, Lcom/byazt/fcd/da$1;->c:Lcom/byazt/qq/da;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/qq/da;->ve()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/da$1;->tt:Lcom/byazt/fcd/da;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->aw()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/fcd/da$1;->tt:Lcom/byazt/fcd/da;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->lt()Lcom/byazt/kcl/ve;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    const-string v2, ""

    .line 28
    .line 29
    const-string v3, "reward_retain_dialog_next"

    .line 30
    .line 31
    invoke-virtual {v0, v3, v1, v2}, Lcom/byazt/kcl/ve;->c(Ljava/lang/String;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

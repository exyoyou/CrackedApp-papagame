.class public Lcom/byazt/fcd/sl$1;
.super Lcom/byazt/qq/da;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x2b8
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/fcd/sl;->c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qq/da;

.field public final synthetic tt:Lcom/byazt/ete/ic;

.field public final synthetic ve:Lcom/byazt/fcd/sl;


# direct methods
.method public constructor <init>(Lcom/byazt/fcd/sl;Lcom/byazt/qq/da;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fcd/sl$1;->ve:Lcom/byazt/fcd/sl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/fcd/sl$1;->c:Lcom/byazt/qq/da;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/fcd/sl$1;->tt:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/qq/da;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/sl$1;->c:Lcom/byazt/qq/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/qq/da;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/sl$1;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/fcd/sl$1;->ve:Lcom/byazt/fcd/sl;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 19
    .line 20
    check-cast v0, Lcom/byazt/dqg/c;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/dqg/c;->uj()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/sl$1;->ve:Lcom/byazt/fcd/sl;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->aw()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/sl$1;->c:Lcom/byazt/qq/da;

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

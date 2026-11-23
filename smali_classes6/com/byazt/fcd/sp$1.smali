.class public Lcom/byazt/fcd/sp$1;
.super Lcom/byazt/qq/da;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/fcd/sp;->c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qq/da;

.field public final synthetic tt:Lcom/byazt/fcd/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/fcd/sp;Lcom/byazt/qq/da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fcd/sp$1;->tt:Lcom/byazt/fcd/sp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/fcd/sp$1;->c:Lcom/byazt/qq/da;

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
    iget-object v0, p0, Lcom/byazt/fcd/sp$1;->c:Lcom/byazt/qq/da;

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
    iget-object v0, p0, Lcom/byazt/fcd/sp$1;->tt:Lcom/byazt/fcd/sp;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->aw()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/sp$1;->c:Lcom/byazt/qq/da;

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

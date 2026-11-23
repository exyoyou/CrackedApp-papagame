.class public final Lcom/byazt/bt/ve$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x112,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bt/ve;->tt(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dna/c;

.field public final synthetic tt:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/dna/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/byazt/bt/ve$1;->c:Lcom/byazt/dna/c;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/bt/ve$1;->tt:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/bt/ve$1;->c:Lcom/byazt/dna/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/bt/ve$1;->tt:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0, v1}, Lcom/byazt/bt/ve;->uj(Ljava/lang/Boolean;Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/bt/ve;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.class public Lcom/byazt/wr/ve$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x551,
        0x186
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wr/ve;->applySync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wr/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/wr/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wr/ve$5;->c:Lcom/byazt/wr/ve;

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
    iget-object v0, p0, Lcom/byazt/wr/ve$5;->c:Lcom/byazt/wr/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wr/ve;->uj(Lcom/byazt/wr/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/wr/ve$5;->c:Lcom/byazt/wr/ve;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/wr/ve;->applySync()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

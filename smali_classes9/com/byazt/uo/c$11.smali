.class public Lcom/byazt/uo/c$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vis/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x4d0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/c;->setAdShowCallback(Lcom/byazt/vis/ve;Lcom/byazt/omf/EmptyView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/vis/ve;

.field public final synthetic tt:Lcom/byazt/omf/EmptyView;

.field public final synthetic ve:Lcom/byazt/uo/c;


# direct methods
.method public constructor <init>(Lcom/byazt/uo/c;Lcom/byazt/vis/ve;Lcom/byazt/omf/EmptyView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/c$11;->ve:Lcom/byazt/uo/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/uo/c$11;->c:Lcom/byazt/vis/ve;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/uo/c$11;->tt:Lcom/byazt/omf/EmptyView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c$11;->c:Lcom/byazt/vis/ve;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/uo/c$11;->tt:Lcom/byazt/omf/EmptyView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/vis/ve;->c(Lcom/byazt/omf/EmptyView;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/uo/c$11;->c:Lcom/byazt/vis/ve;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/byazt/uo/c$11;->ve:Lcom/byazt/uo/c;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/byazt/uo/c;->my:Ljava/util/Map;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/vis/ve;->c(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/uo/c$11;->c:Lcom/byazt/vis/ve;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/uo/c$11;->ve:Lcom/byazt/uo/c;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/byazt/uo/c;->uj(Lcom/byazt/uo/c;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/vis/ve;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/uo/c$11;->c:Lcom/byazt/vis/ve;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/byazt/uo/c$11;->ve:Lcom/byazt/uo/c;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/byazt/uo/c;->n(Lcom/byazt/uo/c;)Ljava/lang/Double;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/byazt/vis/ve;->c(Ljava/lang/Double;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/uo/c$11;->ve:Lcom/byazt/uo/c;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/byazt/uo/c;->qp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    return v0
.end method

.class public Lcom/byazt/tp/tt$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vis/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b4,
        0x2e5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tp/tt;->c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/vis/ve;

.field public final synthetic n:Lcom/byazt/tp/tt;

.field public final synthetic tt:Lcom/byazt/omf/EmptyView;

.field public final synthetic uj:Lcom/byazt/ete/ic;

.field public final synthetic ve:Lcom/byazt/ouz/NativeExpressView;


# direct methods
.method public constructor <init>(Lcom/byazt/tp/tt;Lcom/byazt/vis/ve;Lcom/byazt/omf/EmptyView;Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tp/tt$7;->n:Lcom/byazt/tp/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tp/tt$7;->c:Lcom/byazt/vis/ve;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/tp/tt$7;->tt:Lcom/byazt/omf/EmptyView;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/tp/tt$7;->ve:Lcom/byazt/ouz/NativeExpressView;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/tp/tt$7;->uj:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/tp/tt$7;->c:Lcom/byazt/vis/ve;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/tp/tt$7;->tt:Lcom/byazt/omf/EmptyView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/vis/ve;->c(Lcom/byazt/omf/EmptyView;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/tp/tt$7;->c:Lcom/byazt/vis/ve;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/byazt/tp/tt$7;->n:Lcom/byazt/tp/tt;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/byazt/tp/tt$7;->ve:Lcom/byazt/ouz/NativeExpressView;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/byazt/tp/tt$7;->uj:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-static {v1, v2, v3}, Lcom/byazt/tp/tt;->c(Lcom/byazt/tp/tt;Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/vis/ve;->c(Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/tp/tt$7;->c:Lcom/byazt/vis/ve;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/tp/tt$7;->n:Lcom/byazt/tp/tt;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/byazt/tp/tt;->c(Lcom/byazt/tp/tt;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/byazt/vis/ve;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/tp/tt$7;->c:Lcom/byazt/vis/ve;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/byazt/tp/tt$7;->n:Lcom/byazt/tp/tt;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/byazt/tp/tt;->z(Lcom/byazt/tp/tt;)Ljava/lang/Double;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/byazt/vis/ve;->c(Ljava/lang/Double;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/byazt/tp/tt$7;->n:Lcom/byazt/tp/tt;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/byazt/tp/tt;->sl(Lcom/byazt/tp/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    return v0
.end method

.class public Lcom/byazt/omf/my$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vis/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x93f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/my;->c(Lcom/byazt/vis/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/vis/ve;

.field public final synthetic tt:Lcom/byazt/omf/my;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/my;Lcom/byazt/vis/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/my$8;->tt:Lcom/byazt/omf/my;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/omf/my$8;->c:Lcom/byazt/vis/ve;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/my$8;->c:Lcom/byazt/vis/ve;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/omf/my$8;->tt:Lcom/byazt/omf/my;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/byazt/omf/my;->gr(Lcom/byazt/omf/my;)Lcom/byazt/omf/EmptyView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/vis/ve;->c(Lcom/byazt/omf/EmptyView;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/omf/my$8;->c:Lcom/byazt/vis/ve;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/omf/my$8;->tt:Lcom/byazt/omf/my;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/byazt/omf/my;->yp(Lcom/byazt/omf/my;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/vis/ve;->c(Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/omf/my$8;->c:Lcom/byazt/vis/ve;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/omf/my$8;->tt:Lcom/byazt/omf/my;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/byazt/omf/my;->uj(Lcom/byazt/omf/my;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/byazt/vis/ve;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/omf/my$8;->c:Lcom/byazt/vis/ve;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/byazt/omf/my$8;->tt:Lcom/byazt/omf/my;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/byazt/omf/my;->m(Lcom/byazt/omf/my;)Ljava/lang/Double;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/byazt/vis/ve;->c(Ljava/lang/Double;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/byazt/omf/my$8;->tt:Lcom/byazt/omf/my;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/byazt/omf/my;->t(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;

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

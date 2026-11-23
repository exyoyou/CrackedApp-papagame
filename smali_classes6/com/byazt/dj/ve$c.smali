.class public Lcom/byazt/dj/ve$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x166,
        0x18
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/dj/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/byazt/yxi/uj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/byazt/dj/ve$c;->c:Lcom/byazt/yxi/uj;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(D)Lcom/byazt/dj/ve$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/ve$c;->c:Lcom/byazt/yxi/uj;

    const v1, 0x3ff71

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    return-object p0
.end method

.method public c()Lcom/byazt/dj/ve;
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/dj/ve;

    iget-object v1, p0, Lcom/byazt/dj/ve$c;->c:Lcom/byazt/yxi/uj;

    invoke-virtual {v1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/dj/ve;-><init>(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public tt(D)Lcom/byazt/dj/ve$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dj/ve$c;->c:Lcom/byazt/yxi/uj;

    .line 2
    .line 3
    const v1, 0x3ff72

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

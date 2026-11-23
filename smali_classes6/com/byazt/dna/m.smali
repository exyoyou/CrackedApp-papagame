.class public Lcom/byazt/dna/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/z;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x47f,
        0x82
    }
.end annotation


# instance fields
.field public volatile c:Ljava/util/function/Function;

.field public volatile tt:Lcom/byazt/dna/z;


# direct methods
.method public constructor <init>(Lcom/byazt/dna/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/dna/m;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x5

    if-eq v0, v1, :cond_2

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object v2, p0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    iput-object p1, p0, Lcom/byazt/dna/m;->c:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/dna/m;->c:Ljava/util/function/Function;

    return-object p1
.end method

.method public onAdEventReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/dna/z;->onAdEventReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/m;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAdEventReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/ya/c;)V
    .locals 9

    .line 2
    move-object v0, p0

    move-object/from16 v8, p7

    iget-object v1, v0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/byazt/dna/z;->onAdEventReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/ya/c;)V

    return-void

    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    move-object v4, p1

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x2

    move-object v4, p2

    invoke-virtual {v1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x3

    move-object v4, p3

    invoke-virtual {v1, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x4

    move-object v4, p4

    invoke-virtual {v1, v2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x5

    move-object v4, p5

    invoke-virtual {v1, v2, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, p6

    invoke-virtual {v1, v3, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v8, :cond_1

    new-instance v2, Lcom/byazt/ya/tt;

    invoke-direct {v2, v8}, Lcom/byazt/ya/tt;-><init>(Lcom/byazt/ya/c;)V

    move-object v8, v2

    :cond_1
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/byazt/dna/m;->c:Ljava/util/function/Function;

    invoke-static {v2, v1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAppLogMiscEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    invoke-interface {v0, p1, p2}, Lcom/byazt/dna/z;->onAppLogMiscEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/m;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onExceptionEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/dna/z;->onExceptionEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/m;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStatsEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    invoke-interface {v0, p1, p2}, Lcom/byazt/dna/z;->onStatsEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/m;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStatsEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/m;->tt:Lcom/byazt/dna/z;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/dna/z;->onStatsEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/m;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

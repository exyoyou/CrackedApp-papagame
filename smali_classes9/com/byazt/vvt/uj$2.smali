.class public Lcom/byazt/vvt/uj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xs/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x61
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vvt/uj;->c(Lcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:[I

.field public final synthetic c:[I

.field public final synthetic n:Lcom/byazt/vvt/tt$c;

.field public final synthetic sp:Lcom/byazt/vvt/uj;

.field public final synthetic tt:J

.field public final synthetic uj:Ljava/util/List;

.field public final synthetic ve:Lcom/byazt/dj/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/vvt/uj;[IJLcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;[I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vvt/uj$2;->sp:Lcom/byazt/vvt/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/vvt/uj$2;->c:[I

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/byazt/vvt/uj$2;->tt:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/vvt/uj$2;->ve:Lcom/byazt/dj/tt;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/byazt/vvt/uj$2;->uj:Ljava/util/List;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/byazt/vvt/uj$2;->n:Lcom/byazt/vvt/tt$c;

    .line 12
    .line 13
    iput-object p8, p0, Lcom/byazt/vvt/uj$2;->a:[I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public c()V
    .locals 11

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/byazt/vvt/uj$2;->a:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v10, v2, -0x1

    aput v10, v0, v1

    .line 7
    iget-object v3, p0, Lcom/byazt/vvt/uj$2;->sp:Lcom/byazt/vvt/uj;

    iget-wide v4, p0, Lcom/byazt/vvt/uj$2;->tt:J

    iget-object v6, p0, Lcom/byazt/vvt/uj$2;->ve:Lcom/byazt/dj/tt;

    iget-object v7, p0, Lcom/byazt/vvt/uj$2;->uj:Ljava/util/List;

    iget-object v8, p0, Lcom/byazt/vvt/uj$2;->n:Lcom/byazt/vvt/tt$c;

    iget-object v0, p0, Lcom/byazt/vvt/uj$2;->c:[I

    aget v9, v0, v1

    invoke-static/range {v3 .. v10}, Lcom/byazt/vvt/uj;->c(Lcom/byazt/vvt/uj;JLcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;II)V

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/byazt/vvt/uj$2;->c:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v8, v1, 0x1

    aput v8, p1, v0

    .line 3
    iget-object v2, p0, Lcom/byazt/vvt/uj$2;->sp:Lcom/byazt/vvt/uj;

    iget-wide v3, p0, Lcom/byazt/vvt/uj$2;->tt:J

    iget-object v5, p0, Lcom/byazt/vvt/uj$2;->ve:Lcom/byazt/dj/tt;

    iget-object v6, p0, Lcom/byazt/vvt/uj$2;->uj:Ljava/util/List;

    iget-object v7, p0, Lcom/byazt/vvt/uj$2;->n:Lcom/byazt/vvt/tt$c;

    iget-object p1, p0, Lcom/byazt/vvt/uj$2;->a:[I

    aget v9, p1, v0

    invoke-static/range {v2 .. v9}, Lcom/byazt/vvt/uj;->c(Lcom/byazt/vvt/uj;JLcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;II)V

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

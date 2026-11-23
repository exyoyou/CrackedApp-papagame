.class public final Lcom/byazt/umr/uj$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x416,
        0x7b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/umr/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/byazt/umr/uj$tt;

.field public final tt:[Z

.field public uj:Z

.field public final synthetic ve:Lcom/byazt/umr/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/umr/uj;Lcom/byazt/umr/uj$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/umr/uj$c;->ve:Lcom/byazt/umr/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/umr/uj$c;->c:Lcom/byazt/umr/uj$tt;

    .line 7
    .line 8
    iget-boolean p2, p2, Lcom/byazt/umr/uj$tt;->n:Z

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p1, p1, Lcom/byazt/umr/uj;->uj:I

    .line 15
    .line 16
    new-array p1, p1, [Z

    .line 17
    .line 18
    :goto_0
    iput-object p1, p0, Lcom/byazt/umr/uj$c;->tt:[Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public c(I)Lcom/byazt/mk/rh;
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/byazt/umr/uj$c;->ve:Lcom/byazt/umr/uj;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/byazt/umr/uj$c;->uj:Z

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/byazt/umr/uj$c;->c:Lcom/byazt/umr/uj$tt;

    iget-object v2, v1, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;

    if-eq v2, p0, :cond_0

    .line 8
    invoke-static {}, Lcom/byazt/mk/t;->c()Lcom/byazt/mk/rh;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 9
    :cond_0
    iget-boolean v2, v1, Lcom/byazt/umr/uj$tt;->n:Z

    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/byazt/umr/uj$c;->tt:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 11
    :cond_1
    iget-object v1, v1, Lcom/byazt/umr/uj$tt;->uj:[Ljava/io/File;

    aget-object p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    iget-object v1, p0, Lcom/byazt/umr/uj$c;->ve:Lcom/byazt/umr/uj;

    iget-object v1, v1, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    invoke-interface {v1, p1}, Lcom/byazt/hia/c;->tt(Ljava/io/File;)Lcom/byazt/mk/rh;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    new-instance v1, Lcom/byazt/umr/uj$c$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/umr/uj$c$1;-><init>(Lcom/byazt/umr/uj$c;Lcom/byazt/mk/rh;)V

    monitor-exit v0

    return-object v1

    .line 14
    :catch_0
    invoke-static {}, Lcom/byazt/mk/t;->c()Lcom/byazt/mk/rh;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/umr/uj$c;->c:Lcom/byazt/umr/uj$tt;

    iget-object v0, v0, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/byazt/umr/uj$c;->ve:Lcom/byazt/umr/uj;

    iget v2, v1, Lcom/byazt/umr/uj;->uj:I

    if-ge v0, v2, :cond_0

    .line 3
    :try_start_0
    iget-object v1, v1, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    iget-object v2, p0, Lcom/byazt/umr/uj$c;->c:Lcom/byazt/umr/uj$tt;

    iget-object v2, v2, Lcom/byazt/umr/uj$tt;->uj:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/byazt/hia/c;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/umr/uj$c;->c:Lcom/byazt/umr/uj$tt;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;

    :cond_1
    return-void
.end method

.method public tt()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/umr/uj$c;->ve:Lcom/byazt/umr/uj;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/byazt/umr/uj$c;->uj:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/umr/uj$c;->c:Lcom/byazt/umr/uj$tt;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v1, p0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/umr/uj$c;->ve:Lcom/byazt/umr/uj;

    .line 16
    .line 17
    invoke-virtual {v1, p0, v2}, Lcom/byazt/umr/uj;->c(Lcom/byazt/umr/uj$c;Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-boolean v2, p0, Lcom/byazt/umr/uj$c;->uj:Z

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v1
.end method

.method public ve()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/umr/uj$c;->ve:Lcom/byazt/umr/uj;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/byazt/umr/uj$c;->uj:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/umr/uj$c;->c:Lcom/byazt/umr/uj$tt;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;

    .line 11
    .line 12
    if-ne v1, p0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/umr/uj$c;->ve:Lcom/byazt/umr/uj;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, p0, v2}, Lcom/byazt/umr/uj;->c(Lcom/byazt/umr/uj$c;Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/byazt/umr/uj$c;->uj:Z

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw v1

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1
.end method

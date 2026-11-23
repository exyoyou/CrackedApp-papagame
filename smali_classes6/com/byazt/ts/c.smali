.class public abstract Lcom/byazt/ts/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ts/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x165,
        0x14
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ts/ve$sp;

.field public c:Z

.field public n:Lcom/byazt/ts/ve$a;

.field public sp:Lcom/byazt/ts/ve$ve;

.field public tt:Lcom/byazt/ts/ve$n;

.field public uj:Lcom/byazt/ts/ve$c;

.field public ve:Lcom/byazt/ts/ve$tt;

.field public x:Lcom/byazt/ts/ve$uj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/ts/c;->c:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/byazt/ts/c;->tt:Lcom/byazt/ts/ve$n;

    .line 9
    iput-object v0, p0, Lcom/byazt/ts/c;->uj:Lcom/byazt/ts/ve$c;

    .line 10
    iput-object v0, p0, Lcom/byazt/ts/c;->ve:Lcom/byazt/ts/ve$tt;

    .line 11
    iput-object v0, p0, Lcom/byazt/ts/c;->n:Lcom/byazt/ts/ve$a;

    .line 12
    iput-object v0, p0, Lcom/byazt/ts/c;->a:Lcom/byazt/ts/ve$sp;

    .line 13
    iput-object v0, p0, Lcom/byazt/ts/c;->sp:Lcom/byazt/ts/ve$ve;

    .line 14
    iput-object v0, p0, Lcom/byazt/ts/c;->x:Lcom/byazt/ts/ve$uj;

    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ts/c;->uj:Lcom/byazt/ts/ve$c;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0, p0, p1}, Lcom/byazt/ts/ve$c;->c(Lcom/byazt/ts/ve;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnBufferingUpdate error: "

    .line 17
    invoke-static {v0, v1, p1}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(IIII)V
    .locals 6

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ts/c;->a:Lcom/byazt/ts/ve$sp;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 19
    invoke-interface/range {v0 .. v5}, Lcom/byazt/ts/ve$sp;->c(Lcom/byazt/ts/ve;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "AbstractMediaPlayer"

    const-string p3, "AbstractMediaPlayer.notifyOnVideoSizeChanged error: "

    .line 20
    invoke-static {p2, p3, p1}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lcom/byazt/ts/ve$a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/ts/c;->n:Lcom/byazt/ts/ve$a;

    return-void
.end method

.method public final c(Lcom/byazt/ts/ve$c;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ts/c;->uj:Lcom/byazt/ts/ve$c;

    return-void
.end method

.method public final c(Lcom/byazt/ts/ve$n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ts/c;->tt:Lcom/byazt/ts/ve$n;

    return-void
.end method

.method public final c(Lcom/byazt/ts/ve$sp;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/ts/c;->a:Lcom/byazt/ts/ve$sp;

    return-void
.end method

.method public final c(Lcom/byazt/ts/ve$tt;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ts/c;->ve:Lcom/byazt/ts/ve$tt;

    return-void
.end method

.method public final c(Lcom/byazt/ts/ve$uj;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/ts/c;->x:Lcom/byazt/ts/ve$uj;

    return-void
.end method

.method public final c(Lcom/byazt/ts/ve$ve;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/ts/c;->sp:Lcom/byazt/ts/ve$ve;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/byazt/ts/c;->c:Z

    return-void
.end method

.method public final c(II)Z
    .locals 2

    const/4 v0, 0x0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ts/c;->sp:Lcom/byazt/ts/ve$ve;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1, p2}, Lcom/byazt/ts/ve$ve;->c(Lcom/byazt/ts/ve;II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    const-string p2, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnError error: "

    .line 22
    invoke-static {p2, v1, p1}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final tt()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ts/c;->tt:Lcom/byazt/ts/ve$n;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/byazt/ts/ve$n;->tt(Lcom/byazt/ts/ve;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnPrepared error: "

    .line 3
    invoke-static {v1, v2, v0}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final tt(II)Z
    .locals 2

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ts/c;->x:Lcom/byazt/ts/ve$uj;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1, p2}, Lcom/byazt/ts/ve$uj;->tt(Lcom/byazt/ts/ve;II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    const-string p2, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnInfo error: "

    .line 5
    invoke-static {p2, v1, p1}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final uj()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ts/c;->n:Lcom/byazt/ts/ve$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/byazt/ts/ve$a;->ve(Lcom/byazt/ts/ve;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    const-string v1, "AbstractMediaPlayer"

    .line 11
    .line 12
    const-string v2, "AbstractMediaPlayer.notifyOnSeekComplete error: "

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final ve()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ts/c;->ve:Lcom/byazt/ts/ve$tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/byazt/ts/ve$tt;->c(Lcom/byazt/ts/ve;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    const-string v1, "AbstractMediaPlayer"

    .line 11
    .line 12
    const-string v2, "AbstractMediaPlayer.notifyOnCompletion error: "

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

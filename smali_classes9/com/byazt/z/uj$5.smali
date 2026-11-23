.class public Lcom/byazt/z/uj$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/s/yp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x85,
        0x6b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/z/uj;->c(Lcom/byazt/z/n;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:Lcom/byazt/z/uj;

.field public final synthetic tt:Lcom/byazt/t/DownloadTask;

.field public final synthetic uj:Z

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/z/uj;Ljava/lang/String;Lcom/byazt/t/DownloadTask;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/z/uj$5;->n:Lcom/byazt/z/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/z/uj$5;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/z/uj$5;->tt:Lcom/byazt/t/DownloadTask;

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/z/uj$5;->ve:I

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/byazt/z/uj$5;->uj:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/z/uj;->rh()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "notification permission granted, start download :"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/byazt/z/uj$5;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/z/uj$5;->n:Lcom/byazt/z/uj;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/z/uj$5;->tt:Lcom/byazt/t/DownloadTask;

    .line 27
    .line 28
    iget v2, p0, Lcom/byazt/z/uj$5;->ve:I

    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/byazt/z/uj$5;->uj:Z

    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/z/uj;->c(Lcom/byazt/z/uj;Lcom/byazt/t/DownloadTask;IZ)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public tt()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/z/uj;->rh()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "notification permission denied, start download :"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/byazt/z/uj$5;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/z/uj$5;->n:Lcom/byazt/z/uj;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/z/uj$5;->tt:Lcom/byazt/t/DownloadTask;

    .line 27
    .line 28
    iget v2, p0, Lcom/byazt/z/uj$5;->ve:I

    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/byazt/z/uj$5;->uj:Z

    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/z/uj;->c(Lcom/byazt/z/uj;Lcom/byazt/t/DownloadTask;IZ)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

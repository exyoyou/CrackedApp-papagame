.class public final Lcom/byazt/z/ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x85,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/z/ve;->tt(Landroid/content/Context;IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic n:Ljava/io/File;

.field public final synthetic tt:I

.field public final synthetic uj:Lcom/byazt/t/DownloadInfo;

.field public final synthetic ve:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLcom/byazt/t/DownloadInfo;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/z/ve$2;->c:Landroid/content/Context;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/z/ve$2;->tt:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/z/ve$2;->ve:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/z/ve$2;->uj:Lcom/byazt/t/DownloadInfo;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/z/ve$2;->n:Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/z/uj;->t()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/z/ve$2;->c:Landroid/content/Context;

    .line 9
    .line 10
    iget v1, p0, Lcom/byazt/z/ve$2;->tt:I

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/byazt/z/ve$2;->ve:Z

    .line 13
    .line 14
    iget-object v3, p0, Lcom/byazt/z/ve$2;->uj:Lcom/byazt/t/DownloadInfo;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/byazt/z/ve$2;->n:Ljava/io/File;

    .line 17
    .line 18
    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/z/ve;->c(Landroid/content/Context;IZLcom/byazt/t/DownloadInfo;Ljava/io/File;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/byazt/z/uj;->nu()Lcom/byazt/c/zb;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/byazt/z/uj;->nu()Lcom/byazt/c/zb;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/byazt/z/ve$2;->uj:Lcom/byazt/t/DownloadInfo;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-interface {v1, v2, v3}, Lcom/byazt/c/zb;->c(Lcom/byazt/t/DownloadInfo;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v1, p0, Lcom/byazt/z/ve$2;->uj:Lcom/byazt/t/DownloadInfo;

    .line 50
    .line 51
    iget-boolean v2, p0, Lcom/byazt/z/ve$2;->ve:Z

    .line 52
    .line 53
    invoke-static {v1, v2, v0}, Lcom/byazt/z/ve;->c(Lcom/byazt/t/DownloadInfo;ZI)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

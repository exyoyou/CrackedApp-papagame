.class public final Lcom/byazt/w/sp$9;
.super Lcom/byazt/c/t$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x905
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/u;)Lcom/byazt/c/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/u;


# direct methods
.method public constructor <init>(Lcom/byazt/c/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$9;->c:Lcom/byazt/c/u;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/c/t$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/t/DownloadInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$9;->c:Lcom/byazt/c/u;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/u;->c(Lcom/byazt/t/DownloadInfo;)V
    :try_end_0
    .catch Lcom/byazt/m/BaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$9;->c:Lcom/byazt/c/u;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/u;->tt(Lcom/byazt/t/DownloadInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

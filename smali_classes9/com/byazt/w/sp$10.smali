.class public final Lcom/byazt/w/sp$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/c/eo;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x71c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/d;)Lcom/byazt/c/eo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/d;


# direct methods
.method public constructor <init>(Lcom/byazt/c/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$10;->c:Lcom/byazt/c/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$10;->c:Lcom/byazt/c/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/d;->c(Lcom/byazt/t/DownloadInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$10;->c:Lcom/byazt/c/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/d;->tt(Lcom/byazt/t/DownloadInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public ve(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$10;->c:Lcom/byazt/c/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/d;->ve(Lcom/byazt/t/DownloadInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1
.end method

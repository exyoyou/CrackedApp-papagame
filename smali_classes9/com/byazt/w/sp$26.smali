.class public final Lcom/byazt/w/sp$26;
.super Lcom/byazt/c/d$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x715
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/eo;)Lcom/byazt/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/eo;


# direct methods
.method public constructor <init>(Lcom/byazt/c/eo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$26;->c:Lcom/byazt/c/eo;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/c/d$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$26;->c:Lcom/byazt/c/eo;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/eo;->c(Lcom/byazt/t/DownloadInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$26;->c:Lcom/byazt/c/eo;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/eo;->tt(Lcom/byazt/t/DownloadInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public ve(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$26;->c:Lcom/byazt/c/eo;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/eo;->ve(Lcom/byazt/t/DownloadInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.class public final Lcom/byazt/w/sp$23;
.super Lcom/byazt/c/zm$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x716
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/yv;)Lcom/byazt/c/zm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/yv;


# direct methods
.method public constructor <init>(Lcom/byazt/c/yv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$23;->c:Lcom/byazt/c/yv;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/c/zm$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/w/sp$23;->c:Lcom/byazt/c/yv;

    invoke-interface {v0}, Lcom/byazt/c/yv;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(ILcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$23;->c:Lcom/byazt/c/yv;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/c/yv;->c(ILcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/w/sp$23;->c:Lcom/byazt/c/yv;

    invoke-interface {v0, p1}, Lcom/byazt/c/yv;->c(Z)Z

    move-result p1

    return p1
.end method

.class public final Lcom/byazt/w/sp$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/c/yv;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x24f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/zm;)Lcom/byazt/c/yv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/zm;


# direct methods
.method public constructor <init>(Lcom/byazt/c/zm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$7;->c:Lcom/byazt/c/zm;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$7;->c:Lcom/byazt/c/zm;

    invoke-interface {v0}, Lcom/byazt/c/zm;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(ILcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$7;->c:Lcom/byazt/c/zm;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/c/zm;->c(ILcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Z)Z
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$7;->c:Lcom/byazt/c/zm;

    invoke-interface {v0, p1}, Lcom/byazt/c/zm;->c(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

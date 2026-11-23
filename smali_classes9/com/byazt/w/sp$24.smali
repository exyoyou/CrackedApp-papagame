.class public final Lcom/byazt/w/sp$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/c/IDownloadFileUriProvider;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x717
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/sp;)Lcom/byazt/c/IDownloadFileUriProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/c/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$24;->c:Lcom/byazt/c/sp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getUriForFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$24;->c:Lcom/byazt/c/sp;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/byazt/c/sp;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

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
    return-object p1
.end method

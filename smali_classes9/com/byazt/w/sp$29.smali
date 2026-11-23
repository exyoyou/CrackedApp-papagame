.class public final Lcom/byazt/w/sp$29;
.super Lcom/byazt/c/sp$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x718
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/IDownloadFileUriProvider;)Lcom/byazt/c/sp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/IDownloadFileUriProvider;


# direct methods
.method public constructor <init>(Lcom/byazt/c/IDownloadFileUriProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$29;->c:Lcom/byazt/c/IDownloadFileUriProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/c/sp$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$29;->c:Lcom/byazt/c/IDownloadFileUriProvider;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/byazt/c/IDownloadFileUriProvider;->getUriForFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

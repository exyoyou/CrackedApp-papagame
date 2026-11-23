.class public final Lcom/byazt/w/sp$6;
.super Lcom/byazt/c/x$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x251
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/IDownloadInterceptor;)Lcom/byazt/c/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/IDownloadInterceptor;


# direct methods
.method public constructor <init>(Lcom/byazt/c/IDownloadInterceptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$6;->c:Lcom/byazt/c/IDownloadInterceptor;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/c/x$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$6;->c:Lcom/byazt/c/IDownloadInterceptor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/c/IDownloadInterceptor;->intercepte()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

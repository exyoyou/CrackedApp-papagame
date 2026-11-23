.class public Lcom/byazt/t/DownloadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x42,
        0x2e4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/t/DownloadTask;->asyncDownload(Lcom/byazt/zz/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zz/m;

.field public final synthetic tt:Lcom/byazt/t/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/byazt/t/DownloadTask;Lcom/byazt/zz/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/t/DownloadTask$1;->tt:Lcom/byazt/t/DownloadTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/t/DownloadTask$1;->c:Lcom/byazt/zz/m;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/t/DownloadTask$1;->tt:Lcom/byazt/t/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->download()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

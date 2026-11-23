.class public Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cid:Ljava/lang/String;

.field public downloadCallback:Lcom/haima/hmcp/listeners/DownloadCallback;

.field public downloadMode:Lcom/haima/hmcp/enums/DownloadMode;

.field public files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

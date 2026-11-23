.class public Lcom/haima/hmcp/cloud/job/CloudFileJob;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCloudFile:Lcom/haima/hmcp/beans/CloudFile;

.field private mListener:Lcom/haima/hmcp/listeners/CloudOperationListener;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CloudOperationListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/cloud/job/CloudFileJob;->mCloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/haima/hmcp/cloud/job/CloudFileJob;->mListener:Lcom/haima/hmcp/listeners/CloudOperationListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getmCloudFile()Lcom/haima/hmcp/beans/CloudFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/job/CloudFileJob;->mCloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 2
    .line 3
    return-object v0
.end method

.method public getmListener()Lcom/haima/hmcp/listeners/CloudOperationListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/job/CloudFileJob;->mListener:Lcom/haima/hmcp/listeners/CloudOperationListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public setmCloudFile(Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/job/CloudFileJob;->mCloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 2
    .line 3
    return-void
.end method

.method public setmListener(Lcom/haima/hmcp/listeners/CloudOperationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/job/CloudFileJob;->mListener:Lcom/haima/hmcp/listeners/CloudOperationListener;

    .line 2
    .line 3
    return-void
.end method

.class public interface abstract Lcom/haima/hmcp/listeners/BatchCloudOperationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/CloudOperationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;,
        Lcom/haima/hmcp/listeners/BatchCloudOperationListener$BatchOperationResult;
    }
.end annotation


# virtual methods
.method public abstract onBatchFinish(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/listeners/BatchCloudOperationListener$BatchOperationResult;)V
.end method

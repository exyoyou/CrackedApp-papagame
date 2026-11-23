.class public Lcom/haima/hmcp/beans/CheckCloudServiceResult$ChannelInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/beans/CheckCloudServiceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelInfo"
.end annotation


# instance fields
.field public appChannel:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/haima/hmcp/beans/CheckCloudServiceResult;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/beans/CheckCloudServiceResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/CheckCloudServiceResult$ChannelInfo;->this$0:Lcom/haima/hmcp/beans/CheckCloudServiceResult;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

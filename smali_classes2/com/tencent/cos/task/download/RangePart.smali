.class public Lcom/tencent/cos/task/download/RangePart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5f748d3c38ab6830L


# instance fields
.field protected downloadUrl:Ljava/lang/String;

.field protected fileName:Ljava/lang/String;

.field protected length:J

.field protected localPath:Ljava/lang/String;

.field protected range:J


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


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/download/RangePart;->downloadUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/download/RangePart;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/cos/task/download/RangePart;->length:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/download/RangePart;->localPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRange()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/cos/task/download/RangePart;->range:J

    .line 2
    .line 3
    return-wide v0
.end method

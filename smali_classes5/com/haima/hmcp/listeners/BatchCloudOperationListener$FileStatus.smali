.class public Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/listeners/BatchCloudOperationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileStatus"
.end annotation


# instance fields
.field public code:I

.field public file:Lcom/haima/hmcp/beans/CloudFile;

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;->file:Lcom/haima/hmcp/beans/CloudFile;

    .line 5
    .line 6
    iput p2, p0, Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;->code:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;->msg:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;->file:Lcom/haima/hmcp/beans/CloudFile;

    .line 5
    .line 6
    const-string v2, "null"

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v2

    .line 16
    :goto_0
    const/4 v3, 0x0

    .line 17
    aput-object v1, v0, v3

    .line 18
    .line 19
    iget-object v1, p0, Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;->file:Lcom/haima/hmcp/beans/CloudFile;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v1, v2

    .line 29
    :goto_1
    const/4 v3, 0x1

    .line 30
    aput-object v1, v0, v3

    .line 31
    .line 32
    iget v1, p0, Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;->code:I

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v3, 0x2

    .line 39
    aput-object v1, v0, v3

    .line 40
    .line 41
    iget-object v1, p0, Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;->msg:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    move-object v2, v1

    .line 46
    :cond_2
    const/4 v1, 0x3

    .line 47
    aput-object v2, v0, v1

    .line 48
    .line 49
    const-string v1, "FileStatus{file=%s, path=%s,code=%d, msg=\'%s\'}"

    .line 50
    .line 51
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

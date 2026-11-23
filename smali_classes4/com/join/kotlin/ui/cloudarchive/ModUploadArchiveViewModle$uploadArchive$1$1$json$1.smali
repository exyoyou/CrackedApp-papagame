.class public final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$1$1$json$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/common/http/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->uploadArchive(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$1$1$json$1",
        "Lcom/join/android/app/common/http/ProgressRequestListener;",
        "onRequestProgress",
        "",
        "bytesWritten",
        "",
        "contentLength",
        "b",
        "",
        "url",
        "",
        "onUploadFailed",
        "msg",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$1$1$json$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRequestProgress(JJZLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p5, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$1$1$json$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 2
    .line 3
    invoke-virtual {p5}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getUploadProgress()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object p5

    .line 7
    const/16 p6, 0x64

    .line 8
    .line 9
    int-to-long v0, p6

    .line 10
    mul-long p1, p1, v0

    .line 11
    .line 12
    div-long/2addr p1, p3

    .line 13
    long-to-int p2, p1

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p5, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onUploadFailed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

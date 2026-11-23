.class Lcom/join/android/app/common/servcie/DownloadService_$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/servcie/DownloadService_;->N(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/join/android/app/common/servcie/DownloadService_;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/servcie/DownloadService_;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$money",
            "val$empirical"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadService_$d;->d:Lcom/join/android/app/common/servcie/DownloadService_;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/android/app/common/servcie/DownloadService_$d;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/android/app/common/servcie/DownloadService_$d;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_$d;->d:Lcom/join/android/app/common/servcie/DownloadService_;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/android/app/common/servcie/DownloadService_$d;->b:I

    .line 4
    .line 5
    iget v2, p0, Lcom/join/android/app/common/servcie/DownloadService_$d;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/servcie/DownloadService_;->R(Lcom/join/android/app/common/servcie/DownloadService_;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.class final Lcom/zxing/android/camera/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final d:Ljava/lang/String; = "f"


# instance fields
.field private final a:Lcom/zxing/android/camera/b;

.field private b:Landroid/os/Handler;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/zxing/android/camera/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configManager"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/zxing/android/camera/f;->a:Lcom/zxing/android/camera/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method a(Landroid/os/Handler;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewHandler",
            "previewMessage"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zxing/android/camera/f;->b:Landroid/os/Handler;

    .line 2
    .line 3
    iput p2, p0, Lcom/zxing/android/camera/f;->c:I

    .line 4
    .line 5
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "camera"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/zxing/android/camera/f;->a:Lcom/zxing/android/camera/b;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/zxing/android/camera/b;->d()Landroid/graphics/Point;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/zxing/android/camera/f;->b:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/zxing/android/camera/f;->c:I

    .line 12
    .line 13
    iget v2, p2, Landroid/graphics/Point;->x:I

    .line 14
    .line 15
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/zxing/android/camera/f;->b:Landroid/os/Handler;

    .line 26
    .line 27
    :cond_0
    return-void
.end method

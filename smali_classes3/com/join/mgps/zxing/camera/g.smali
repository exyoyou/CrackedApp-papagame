.class final Lcom/join/mgps/zxing/camera/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final e:Ljava/lang/String; = "g"


# instance fields
.field private final a:Lcom/join/mgps/zxing/camera/b;

.field private final b:Z

.field private c:Landroid/os/Handler;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/join/mgps/zxing/camera/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "configManager",
            "useOneShotPreviewCallback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/zxing/camera/g;->a:Lcom/join/mgps/zxing/camera/b;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/join/mgps/zxing/camera/g;->b:Z

    .line 7
    .line 8
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
    iput-object p1, p0, Lcom/join/mgps/zxing/camera/g;->c:Landroid/os/Handler;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/zxing/camera/g;->d:I

    .line 4
    .line 5
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
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
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/g;->a:Lcom/join/mgps/zxing/camera/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/zxing/camera/b;->c()Landroid/graphics/Point;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/join/mgps/zxing/camera/g;->b:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/zxing/camera/g;->c:Landroid/os/Handler;

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    iget v1, p0, Lcom/join/mgps/zxing/camera/g;->d:I

    .line 20
    .line 21
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 22
    .line 23
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 24
    .line 25
    invoke-virtual {p2, v1, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/join/mgps/zxing/camera/g;->c:Landroid/os/Handler;

    .line 33
    .line 34
    :cond_1
    return-void
.end method

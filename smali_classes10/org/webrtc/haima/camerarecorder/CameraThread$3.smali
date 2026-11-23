.class Lorg/webrtc/haima/camerarecorder/CameraThread$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/camerarecorder/CameraThread;->getClosestSupportedSize(Ljava/util/List;II)Landroid/util/Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$requestedHeight:I

.field final synthetic val$requestedWidth:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread$3;->val$requestedWidth:I

    .line 2
    .line 3
    iput p2, p0, Lorg/webrtc/haima/camerarecorder/CameraThread$3;->val$requestedHeight:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private diff(Landroid/util/Size;)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread$3;->val$requestedWidth:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread$3;->val$requestedHeight:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sub-int/2addr v1, p1

    .line 19
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    add-int/2addr v0, p1

    .line 24
    return v0
.end method


# virtual methods
.method public compare(Landroid/util/Size;Landroid/util/Size;)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/CameraThread$3;->diff(Landroid/util/Size;)I

    move-result p1

    invoke-direct {p0, p2}, Lorg/webrtc/haima/camerarecorder/CameraThread$3;->diff(Landroid/util/Size;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Lorg/webrtc/haima/camerarecorder/CameraThread$3;->compare(Landroid/util/Size;Landroid/util/Size;)I

    move-result p1

    return p1
.end method

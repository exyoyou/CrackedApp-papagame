.class Lorg/ppsspp/ppsspp/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ppsspp/ppsspp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/ppsspp/ppsspp/c;


# direct methods
.method constructor <init>(Lorg/ppsspp/ppsspp/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p2, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 6
    .line 7
    invoke-static {p2}, Lorg/ppsspp/ppsspp/c;->a(Lorg/ppsspp/ppsspp/c;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long v2, v0, v2

    .line 12
    .line 13
    const-wide/16 v4, 0x64

    .line 14
    .line 15
    cmp-long p2, v2, v4

    .line 16
    .line 17
    if-gez p2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p2, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 21
    .line 22
    invoke-static {p2, v0, v1}, Lorg/ppsspp/ppsspp/c;->b(Lorg/ppsspp/ppsspp/c;J)J

    .line 23
    .line 24
    .line 25
    new-instance p2, Landroid/graphics/YuvImage;

    .line 26
    .line 27
    const/16 v4, 0x11

    .line 28
    .line 29
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 30
    .line 31
    invoke-static {v0}, Lorg/ppsspp/ppsspp/c;->c(Lorg/ppsspp/ppsspp/c;)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 36
    .line 37
    invoke-static {v0}, Lorg/ppsspp/ppsspp/c;->d(Lorg/ppsspp/ppsspp/c;)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    const/4 v7, 0x0

    .line 42
    move-object v2, p2

    .line 43
    move-object v3, p1

    .line 44
    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v0, Landroid/graphics/Rect;

    .line 53
    .line 54
    iget-object v1, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 55
    .line 56
    invoke-static {v1}, Lorg/ppsspp/ppsspp/c;->c(Lorg/ppsspp/ppsspp/c;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/lit16 v1, v1, -0x1e0

    .line 61
    .line 62
    div-int/lit8 v1, v1, 0x2

    .line 63
    .line 64
    iget-object v2, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 65
    .line 66
    invoke-static {v2}, Lorg/ppsspp/ppsspp/c;->d(Lorg/ppsspp/ppsspp/c;)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    add-int/lit16 v2, v2, -0x110

    .line 71
    .line 72
    div-int/lit8 v2, v2, 0x2

    .line 73
    .line 74
    iget-object v3, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 75
    .line 76
    invoke-static {v3}, Lorg/ppsspp/ppsspp/c;->c(Lorg/ppsspp/ppsspp/c;)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    iget-object v4, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 81
    .line 82
    invoke-static {v4}, Lorg/ppsspp/ppsspp/c;->c(Lorg/ppsspp/ppsspp/c;)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    add-int/lit16 v4, v4, -0x1e0

    .line 87
    .line 88
    div-int/lit8 v4, v4, 0x2

    .line 89
    .line 90
    sub-int/2addr v3, v4

    .line 91
    iget-object v4, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 92
    .line 93
    invoke-static {v4}, Lorg/ppsspp/ppsspp/c;->d(Lorg/ppsspp/ppsspp/c;)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    iget-object v5, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 98
    .line 99
    invoke-static {v5}, Lorg/ppsspp/ppsspp/c;->d(Lorg/ppsspp/ppsspp/c;)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    add-int/lit16 v5, v5, -0x110

    .line 104
    .line 105
    div-int/lit8 v5, v5, 0x2

    .line 106
    .line 107
    sub-int/2addr v4, v5

    .line 108
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x50

    .line 112
    .line 113
    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->pushCameraImage([B)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

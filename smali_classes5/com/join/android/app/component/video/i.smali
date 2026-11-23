.class public Lcom/join/android/app/component/video/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/join/android/app/component/video/StandardVideoView;

.field private static b:Lv7/a;

.field private static c:Landroid/graphics/Bitmap;


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

.method public static a(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchVideo"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/i;->a:Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->k(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static b()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/i;->c:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static c(Lcom/join/android/app/component/video/StandardVideoView;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gsyVideoPlayer",
            "url",
            "cache",
            "title"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoView;->setSwitchUrl(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/join/android/app/component/video/StandardVideoView;->setSwitchCache(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lcom/join/android/app/component/video/StandardVideoView;->setSwitchTitle(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/join/android/app/component/video/i;->a:Lcom/join/android/app/component/video/StandardVideoView;

    .line 3
    .line 4
    sput-object v0, Lcom/join/android/app/component/video/i;->b:Lv7/a;

    .line 5
    .line 6
    return-void
.end method

.method public static e(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap2"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/join/android/app/component/video/i;->c:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method

.method public static f(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchVideo"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoView;->n()Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/join/android/app/component/video/i;->a:Lcom/join/android/app/component/video/StandardVideoView;

    .line 6
    .line 7
    sput-object p0, Lcom/join/android/app/component/video/i;->b:Lv7/a;

    .line 8
    .line 9
    return-void
.end method

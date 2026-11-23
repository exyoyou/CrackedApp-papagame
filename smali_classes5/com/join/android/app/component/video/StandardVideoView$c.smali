.class Lcom/join/android/app/component/video/StandardVideoView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/StandardVideoView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/StandardVideoView;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView$c;->a:Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "progress",
            "secProgress",
            "currentPosition",
            "duration"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView$c;->a:Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    .line 3
    int-to-long v1, p3

    .line 4
    iput-wide v1, v0, Lcom/join/android/app/component/video/StandardVideoView;->d:J

    .line 5
    .line 6
    const/16 v1, 0x64

    .line 7
    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    if-ne p3, p4, :cond_1

    .line 11
    .line 12
    :cond_0
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    iput-wide v1, v0, Lcom/join/android/app/component/video/StandardVideoView;->d:J

    .line 15
    .line 16
    :cond_1
    iget-object v0, v0, Lcom/join/android/app/component/video/StandardVideoView;->i:Lcom/join/android/app/component/video/StandardVideoView$k;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/StandardVideoView$k;->a(IIII)V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-void
.end method

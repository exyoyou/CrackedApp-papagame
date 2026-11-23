.class Lcom/join/android/app/component/video/StandardVideoViewJC$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/video/StandardVideoViewJC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/StandardVideoViewJC;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$b;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$b;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->j0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

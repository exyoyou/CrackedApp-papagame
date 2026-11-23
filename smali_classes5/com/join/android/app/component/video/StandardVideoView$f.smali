.class Lcom/join/android/app/component/video/StandardVideoView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/StandardVideoView;->showWifiDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/video/StandardVideoView;


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
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView$f;->b:Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView$f;->b:Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView$f;->b:Lcom/join/android/app/component/video/StandardVideoView;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/join/android/app/component/video/StandardVideoView;->z:Lcom/join/mgps/customview/t;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/ColorModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setColorMode(Lcom/haima/hmcp/beans/ColorMode;Lcom/haima/hmcp/listeners/ColorModeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field final synthetic val$colorMode:Lcom/haima/hmcp/beans/ColorMode;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/ColorModeListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/beans/ColorMode;Lcom/haima/hmcp/listeners/ColorModeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$47;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$47;->val$colorMode:Lcom/haima/hmcp/beans/ColorMode;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$47;->val$listener:Lcom/haima/hmcp/listeners/ColorModeListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onColorModeResult(ZLjava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$47;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mColorMode:Lcom/haima/hmcp/beans/ColorMode;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$47;->val$colorMode:Lcom/haima/hmcp/beans/ColorMode;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/ColorMode;->getMode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/ColorMode;->setMode(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$47;->val$listener:Lcom/haima/hmcp/listeners/ColorModeListener;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/ColorModeListener;->onColorModeResult(ZLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

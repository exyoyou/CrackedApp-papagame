.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/InputOpModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$9;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInputOpEvent(ILcom/haima/hmcp/beans/FPoint;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$9;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendInputOpMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    iget-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$9;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    invoke-static {p3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$700(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventModel;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    iget v0, p2, Lcom/haima/hmcp/beans/FPoint;->x:F

    .line 15
    .line 16
    iget p2, p2, Lcom/haima/hmcp/beans/FPoint;->y:F

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p3, p1, v0, p2, v1}, Lcom/haima/hmcp/model/EventModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

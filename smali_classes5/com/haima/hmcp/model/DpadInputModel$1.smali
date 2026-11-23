.class Lcom/haima/hmcp/model/DpadInputModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/DpadTimerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/model/DpadInputModel;->startDpadTimer(ILcom/haima/hmcp/beans/PointCoord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/model/DpadInputModel;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/model/DpadInputModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/DpadInputModel$1;->this$0:Lcom/haima/hmcp/model/DpadInputModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onUpdateDpadPoint(Lcom/haima/hmcp/beans/FPoint;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel$1;->this$0:Lcom/haima/hmcp/model/DpadInputModel;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/haima/hmcp/model/DpadInputModel;->access$000(Lcom/haima/hmcp/model/DpadInputModel;)Lcom/haima/hmcp/beans/FPoint;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p1, Lcom/haima/hmcp/beans/FPoint;->x:F

    .line 11
    .line 12
    iput v1, v0, Lcom/haima/hmcp/beans/FPoint;->x:F

    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel$1;->this$0:Lcom/haima/hmcp/model/DpadInputModel;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/haima/hmcp/model/DpadInputModel;->access$000(Lcom/haima/hmcp/model/DpadInputModel;)Lcom/haima/hmcp/beans/FPoint;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget p1, p1, Lcom/haima/hmcp/beans/FPoint;->y:F

    .line 21
    .line 22
    iput p1, v0, Lcom/haima/hmcp/beans/FPoint;->y:F

    .line 23
    .line 24
    return-void
.end method

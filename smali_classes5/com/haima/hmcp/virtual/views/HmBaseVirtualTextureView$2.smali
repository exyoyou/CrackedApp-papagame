.class Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBtnMoveEvent(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "now is not editMode"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;->performGuide(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public onBtnTouchEvent(ILjava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onBtnTouchEvent state ="

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ";size="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ";sourceType="

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 46
    .line 47
    invoke-static {v0, p4}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$400(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    const-string p2, "onBtnTouchEvent is ignored"

    .line 58
    .line 59
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    if-ne p3, v1, :cond_1

    .line 81
    .line 82
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 83
    .line 84
    invoke-virtual {v1, p1, v0, p4}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveKeyBoardData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 89
    .line 90
    invoke-virtual {v1, p1, v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveStickData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    return-void
.end method

.method public onCheckBoxStateChanged(ZF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onCheckBoxStateChanged "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->useSpecificSensitivity(ZF)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onClickListener(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "now is not editMode"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;->selectVirtualView(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;->performGuide(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public onMouseTouchEvent(IIIII)V
    .locals 0

    .line 1
    packed-switch p2, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p5, 0x0

    .line 5
    goto :goto_0

    .line 6
    :pswitch_0
    sget-object p5, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_MIDDLE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_1
    sget-object p5, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_RIGHT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_2
    sget-object p5, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_LEFT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 13
    .line 14
    :goto_0
    if-nez p5, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string p4, "onMouseTouchEvent error = "

    .line 26
    .line 27
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    const/4 p2, 0x2

    .line 42
    if-ne p1, p2, :cond_1

    .line 43
    .line 44
    sget-object p5, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_MOV:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 45
    .line 46
    :cond_1
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 47
    .line 48
    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveMouseData(IIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRockerTouchEvent(ILjava/util/List;IIIIFF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;IIIIFF)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "onRockerTouchEvent :"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ";"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p3, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p3, 0x3

    .line 50
    if-eq p4, p3, :cond_2

    .line 51
    .line 52
    const/4 p3, 0x4

    .line 53
    if-eq p4, p3, :cond_1

    .line 54
    .line 55
    const/4 p3, 0x5

    .line 56
    if-eq p4, p3, :cond_1

    .line 57
    .line 58
    const/4 p3, 0x6

    .line 59
    if-eq p4, p3, :cond_0

    .line 60
    .line 61
    const/4 p3, 0x7

    .line 62
    if-eq p4, p3, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 66
    .line 67
    move v1, p1

    .line 68
    move-object v2, p2

    .line 69
    move v3, p5

    .line 70
    move v4, p6

    .line 71
    move v5, p4

    .line 72
    invoke-static/range {v0 .. v5}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$600(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;ILjava/util/List;III)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 77
    .line 78
    invoke-virtual {p2, p1, p4, p7, p8}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveStickRocker(IIFF)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 83
    .line 84
    invoke-static {p3, p1, p2, p5}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$500(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;ILjava/util/List;I)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method public onViewEdit()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "now is not editMode"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;->setResetEnabled(Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.class Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/virtual/listeners/OperateListener;


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
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdd(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$300(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 9
    .line 10
    iget v1, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->virtualType:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    sget-object v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;->KEYBOARD:Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;

    .line 16
    .line 17
    invoke-static {p1, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->picsSupplement(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-nez v1, :cond_1

    .line 22
    .line 23
    sget-object v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;->XBOX:Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;

    .line 24
    .line 25
    invoke-static {p1, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->picsSupplement(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 39
    .line 40
    iget-object v4, v3, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 41
    .line 42
    iget v3, v3, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->virtualType:I

    .line 43
    .line 44
    invoke-virtual {v1, p1, v2, v4, v3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->convertOneBean2View(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$700(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 60
    .line 61
    invoke-static {v1, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1100(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$900(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->getViewBean()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_2
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p1
.end method

.method public onDelete(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$300(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$700(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 18
    .line 19
    invoke-static {v1, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$800(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$900(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->getViewBean()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
.end method

.method public onExit()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->stopAnim()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 10
    .line 11
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getCurrentConfigJson()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lcom/haima/hmcp/enums/EditStatus;->EDIT_STATE_EXIT:Lcom/haima/hmcp/enums/EditStatus;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->editKeyboardConfigNotify(Ljava/lang/String;Lcom/haima/hmcp/enums/EditStatus;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 25
    .line 26
    iget v2, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->virtualType:I

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getKeyboardLayout()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1, v0, v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->loadVirtualData(Ljava/util/List;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getXboxLayout()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2, v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->loadVirtualData(Ljava/util/List;I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public onReset()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->stopAnim()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 10
    .line 11
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getCurrentConfigJson()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lcom/haima/hmcp/enums/EditStatus;->EDIT_STATE_RESTORE:Lcom/haima/hmcp/enums/EditStatus;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->editKeyboardConfigNotify(Ljava/lang/String;Lcom/haima/hmcp/enums/EditStatus;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 25
    .line 26
    iget v1, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->virtualType:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->deleteLocalKeyboardLayout(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 45
    .line 46
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getKeyboardLayout()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->loadVirtualData(Ljava/util/List;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->deleteLocalXboxLayout(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 72
    .line 73
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getXboxLayout()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2, v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->loadVirtualData(Ljava/util/List;I)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method

.method public onSave(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$300(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->notifySave()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$900(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 24
    .line 25
    iget v4, v3, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->virtualType:I

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 32
    .line 33
    invoke-static {v5}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1000(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->saveLayout(Ljava/util/List;ILandroid/content/Context;Z)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    sput-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 42
    .line 43
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    iput-boolean v3, v2, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mIsUserConfig:Z

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->stopAnim()V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getCurrentConfigJson()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 62
    .line 63
    sget-object v4, Lcom/haima/hmcp/enums/EditStatus;->EDIT_STATE_MODIFIED_SAVE:Lcom/haima/hmcp/enums/EditStatus;

    .line 64
    .line 65
    invoke-virtual {p1, v2, v4}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->editKeyboardConfigNotify(Ljava/lang/String;Lcom/haima/hmcp/enums/EditStatus;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 70
    .line 71
    sget-object v4, Lcom/haima/hmcp/enums/EditStatus;->EDIT_STATE_NO_MODIFY_SAVE:Lcom/haima/hmcp/enums/EditStatus;

    .line 72
    .line 73
    invoke-virtual {p1, v2, v4}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->editKeyboardConfigNotify(Ljava/lang/String;Lcom/haima/hmcp/enums/EditStatus;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 77
    .line 78
    iget v2, p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->virtualType:I

    .line 79
    .line 80
    if-ne v2, v3, :cond_1

    .line 81
    .line 82
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getKeyboardLayout()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1, v1, v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->loadVirtualData(Ljava/util/List;I)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getXboxLayout()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p1, v2, v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->loadVirtualData(Ljava/util/List;I)V

    .line 103
    .line 104
    .line 105
    :goto_1
    monitor-exit v0

    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw p1
.end method

.class public Lcom/join/mgps/activity/HandShankYesActivity;
.super Lcom/join/mgps/activity/HandShankBaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HandShankYesActivity$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0377
.end annotation


# instance fields
.field private adapter:Lcom/join/mgps/activity/HandShankYesActivity$d;

.field private data:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/join/mgps/db/tables/HandShankTable;",
            ">;"
        }
    .end annotation
.end field

.field private dataBaseInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HandShankTable;",
            ">;"
        }
    .end annotation
.end field

.field handshank_tip_lay:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field listview:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mAdView:Lcom/join/mgps/customview/HandShankAdView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mGameControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation
.end field

.field public onLineHandShankTableInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/db/tables/HandShankTable;",
            ">;"
        }
    .end annotation
.end field

.field papahandList:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rightButn:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->onLineHandShankTableInfos:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/HandShankYesActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankYesActivity;->haveConnectedDevices()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/HandShankYesActivity;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object p0
.end method

.method private handleChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->mGameControllers:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->mGameControllers:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankBaseActivity;->getValidDevice(Ljava/util/List;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->onLineHandShankTableInfos:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ge v1, v2, :cond_3

    .line 43
    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    .line 49
    .line 50
    new-instance v3, Lcom/join/mgps/db/tables/HandShankTable;

    .line 51
    .line 52
    invoke-direct {v3}, Lcom/join/mgps/db/tables/HandShankTable;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Lcom/join/mgps/db/tables/HandShankTable;->setName(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->a()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v3, v2}, Lcom/join/mgps/db/tables/HandShankTable;->setAddress(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v3, v2}, Lcom/join/mgps/db/tables/HandShankTable;->setTime(Ljava/lang/Long;)V

    .line 78
    .line 79
    .line 80
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Lcom/join/mgps/db/tables/HandShankTable;->setIsConnect(Ljava/lang/Boolean;)V

    .line 83
    .line 84
    .line 85
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankYesActivity;->onLineHandShankTableInfos:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankYesActivity;->onLineHandShankTableInfos:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 100
    .line 101
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 105
    .line 106
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/HandShankYesActivity;->refreshConnectState(Ljava/lang/Boolean;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->handshank_tip_lay:Landroid/widget/FrameLayout;

    .line 116
    .line 117
    const/16 v2, 0x8

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->adapter:Lcom/join/mgps/activity/HandShankYesActivity$d;

    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/HandShankYesActivity;->refreshConnectState(Ljava/lang/Boolean;)V

    .line 131
    .line 132
    .line 133
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->mGameControllers:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 136
    .line 137
    .line 138
    if-eqz p1, :cond_5

    .line 139
    .line 140
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->mGameControllers:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :cond_5
    :goto_3
    return-void
.end method

.method private haveConnectedDevices()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/join/mgps/db/tables/HandShankTable;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/HandShankTable;->getIsConnect()Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_1
    monitor-exit v0

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw v1

    .line 49
    :cond_2
    :goto_0
    return v1
.end method

.method private initView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->rightButn:Landroid/widget/Button;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v2, 0x7f0d0378

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->dataBaseInfos:Ljava/util/List;

    .line 25
    .line 26
    new-instance v2, Ljava/util/LinkedList;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->dataBaseInfos:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {}, Lt6/x;->p()Lt6/x;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Lt6/x;->o()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankYesActivity;->dataBaseInfos:Ljava/util/List;

    .line 49
    .line 50
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    new-instance v2, Lcom/join/mgps/activity/HandShankYesActivity$d;

    .line 54
    .line 55
    invoke-direct {v2, p0, v3}, Lcom/join/mgps/activity/HandShankYesActivity$d;-><init>(Lcom/join/mgps/activity/HandShankYesActivity;Lcom/join/mgps/activity/HandShankYesActivity$a;)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->adapter:Lcom/join/mgps/activity/HandShankYesActivity$d;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->listview:Landroid/widget/ListView;

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->listview:Landroid/widget/ListView;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankYesActivity;->adapter:Lcom/join/mgps/activity/HandShankYesActivity$d;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    .line 71
    .line 72
    const v2, 0x7f0a0def

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v2, Lcom/join/mgps/activity/HandShankYesActivity$a;

    .line 80
    .line 81
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/HandShankYesActivity$a;-><init>(Lcom/join/mgps/activity/HandShankYesActivity;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->isBlueEnabled()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/16 v2, 0x8

    .line 92
    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->handshank_tip_lay:Landroid/widget/FrameLayout;

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankYesActivity;->haveConnectedDevices()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->handshank_tip_lay:Landroid/widget/FrameLayout;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->handshank_tip_lay:Landroid/widget/FrameLayout;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    :goto_0
    return-void
.end method

.method private notifyNoDeviceConnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->handshank_tip_lay:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lt6/x;->p()Lt6/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lt6/x;->o()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->dataBaseInfos:Ljava/util/List;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->dataBaseInfos:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->adapter:Lcom/join/mgps/activity/HandShankYesActivity$d;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private parseConnectBlue()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->handshank_tip_lay:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->onLineHandShankTableInfos:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/join/mgps/db/tables/HandShankTable;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankYesActivity;->dataBaseInfos:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/HandShankYesActivity;->sendJoystickInfo(Lcom/join/mgps/db/tables/HandShankTable;)V

    .line 36
    .line 37
    .line 38
    move-object v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/HandShankTable;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/HandShankYesActivity;->showDialog(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-static {}, Lt6/x;->p()Lt6/x;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lt6/x;->o()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->dataBaseInfos:Ljava/util/List;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->onLineHandShankTableInfos:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->dataBaseInfos:Ljava/util/List;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->onLineHandShankTableInfos:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->dataBaseInfos:Ljava/util/List;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->adapter:Lcom/join/mgps/activity/HandShankYesActivity$d;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->dataBaseInfos:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->dataBaseInfos:Ljava/util/List;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 98
    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->data:Ljava/util/LinkedList;

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HandShankYesActivity;->saveDataBase(Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/b1;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/b1;->c(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/join/mgps/activity/HandShankYesActivity$b;

    .line 10
    .line 11
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/HandShankYesActivity$b;-><init>(Lcom/join/mgps/activity/HandShankYesActivity;Lcom/join/mgps/dialog/b1;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/b1;->a(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lcom/join/mgps/activity/HandShankYesActivity$c;

    .line 18
    .line 19
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/HandShankYesActivity$c;-><init>(Lcom/join/mgps/activity/HandShankYesActivity;Lcom/join/mgps/dialog/b1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/b1;->b(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method afterView()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankYesActivity;->loadAdData()V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const-string v4, ""

    .line 31
    .line 32
    const-string v5, ""

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/t;->c0(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankYesActivity;->initView()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method backImage()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method getAdData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getHandShankAdList()Lcom/join/mgps/dto/CommonRequestBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->V0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x258

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->mAdView:Lcom/join/mgps/customview/HandShankAdView;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/join/mgps/dto/HandShankAdBean;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/HandShankAdView;->m(Lcom/join/mgps/dto/HandShankAdBean;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->mAdView:Lcom/join/mgps/customview/HandShankAdView;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/customview/HandShankAdView;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->mAdView:Lcom/join/mgps/customview/HandShankAdView;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/customview/HandShankAdView;->i()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public loadAdData()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankYesActivity;->getAdData()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->mAdView:Lcom/join/mgps/customview/HandShankAdView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/customview/HandShankAdView;->l()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public onControllerDeviceChanged(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "controllerDevices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/HandShankYesActivity;->handleChanged(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HandShankBaseActivity;->setSpp4CheckInfo(Z)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->onResume()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method papahandList()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    const-string v1, "http://h5.5fun.com/wf_shoubing.html"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected declared-synchronized refreshConnectState(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isConnect"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankYesActivity;->parseConnectBlue()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankYesActivity;->notifyNoDeviceConnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :goto_0
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method rightButn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "\u8bbe\u5907\u4e0d\u652f\u6301\u84dd\u7259\uff0c\u65e0\u6cd5\u8fde\u63a5"

    .line 19
    .line 20
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method saveDataBase(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBaseInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HandShankTable;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lt6/x;->p()Lt6/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/join/mgps/db/tables/HandShankTable;

    .line 21
    .line 22
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/HandShankTable;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lt6/x;->p()Lt6/x;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2, v1}, Lt6/x;->n(Lcom/join/mgps/db/tables/HandShankTable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    monitor-exit v0

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method

.method sendJoystickInfo(Lcom/join/mgps/db/tables/HandShankTable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handShankTable"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lt6/x;->p()Lt6/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getAddress()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lt6/x;->q(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lcom/papa/sim/statistic/JoyStickConfig;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/papa/sim/statistic/JoyStickConfig;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setUid(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setUid(I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setGamepad_name(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getAddress()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, ":"

    .line 54
    .line 55
    const-string v3, "_"

    .line 56
    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setGamepad_mac(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getTime()Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/JoyStickConfig;->setUpdate_time(J)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

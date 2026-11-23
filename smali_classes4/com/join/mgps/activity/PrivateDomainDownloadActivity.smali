.class public Lcom/join/mgps/activity/PrivateDomainDownloadActivity;
.super Lcom/join/mgps/base/dialog/BaseDialogActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0094
.end annotation


# instance fields
.field domainBean:Lcom/join/mgps/dto/DomainInfoBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private iv_close:Landroid/view/View;

.field name:Landroid/widget/TextView;

.field prefDef_:Lcom/join/mgps/pref/PrefDef_;

.field private sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

.field wxProgram:Lcom/join/mgps/dto/WxProgram;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 10
    .line 11
    const v0, 0x7f0a10d8

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->name:Landroid/widget/TextView;

    .line 21
    .line 22
    const v0, 0x7f0a0a22

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->iv_close:Landroid/view/View;

    .line 30
    .line 31
    const v0, 0x7f0a14a2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->iv_close:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->domainBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 57
    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object v1, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->domainBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/join/mgps/dto/DomainInfoBean;->getPic()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sget-object v1, Lcom/papa/sim/statistic/Event;->pdGameDownload:Lcom/papa/sim/statistic/Event;

    .line 89
    .line 90
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 91
    .line 92
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v3, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->domainBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/join/mgps/dto/DomainInfoBean;->getGameId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iget-object v3, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->domainBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->domainBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/join/mgps/dto/DomainInfoBean;->getGameId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget-object v3, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->domainBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/join/mgps/dto/DomainInfoBean;->getLocation()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    const/4 v4, 0x6

    .line 132
    if-ne v3, v4, :cond_2

    .line 133
    .line 134
    const-string v3, "101"

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    const-string v3, "102"

    .line 138
    .line 139
    :goto_0
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 144
    .line 145
    .line 146
    :cond_3
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a0a22

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 11
    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    const v0, 0x7f0a14a2

    .line 16
    .line 17
    .line 18
    if-ne p1, v0, :cond_4

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->domainBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v0, Lcom/papa/sim/statistic/Event;->pdGameDownloadedClick:Lcom/papa/sim/statistic/Event;

    .line 29
    .line 30
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->domainBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/join/mgps/dto/DomainInfoBean;->getGameId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->domainBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->domainBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->domainBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/join/mgps/dto/DomainInfoBean;->getLocation()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/4 v3, 0x6

    .line 72
    if-ne v2, v3, :cond_1

    .line 73
    .line 74
    const-string v2, "101"

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const-string v2, "102"

    .line 78
    .line 79
    :goto_0
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->domainBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->domainBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-class v1, Lcom/join/mgps/dto/WxProgram;

    .line 113
    .line 114
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/join/mgps/dto/WxProgram;

    .line 119
    .line 120
    iput-object p1, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->wxProgram:Lcom/join/mgps/dto/WxProgram;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->wxProgram:Lcom/join/mgps/dto/WxProgram;

    .line 128
    .line 129
    if-eqz p1, :cond_3

    .line 130
    .line 131
    const-string v0, "game_download"

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/WxProgram;->setSceneType(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;->wxProgram:Lcom/join/mgps/dto/WxProgram;

    .line 137
    .line 138
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->C4(Landroid/content/Context;Lcom/join/mgps/dto/WxProgram;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_2
    return-void
.end method

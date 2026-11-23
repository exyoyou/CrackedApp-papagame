.class public Lcom/join/mgps/activity/SplashActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0862
.end annotation


# static fields
.field public static final X:Ljava/lang/String; = "SplashActivity"

.field private static final Y:Ljava/lang/String; = "\u70b9\u51fb\u8df3\u8fc7 %d"


# instance fields
.field private A:Lcom/join/mgps/adapter/g3;

.field private B:Lcom/join/mgps/dto/FirstIntentData;

.field C:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

.field D:I

.field private E:Landroid/os/Handler;

.field private F:Z

.field private G:Z

.field private H:I

.field private I:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private J:Ljava/lang/String;

.field private K:I

.field private L:I

.field private M:Lcom/join/mgps/shake/a;

.field private N:Landroid/os/Vibrator;

.field O:Lcom/join/mgps/shake/a$a;

.field P:Landroid/view/GestureDetector;

.field Q:Lcom/nineoldandroids/animation/q;

.field R:F

.field S:F

.field T:Lcom/join/mgps/dto/ShowViewDataBean;

.field U:Lcom/join/mgps/dto/SplashIntentBean;

.field private V:Lcom/beizi/fusion/SplashAd;

.field W:Lcom/aggmoread/sdk/client/splash/AMSplashAd;

.field b:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/android/app/component/video/EmptyControlVideoView;

.field d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field e:Landroid/widget/RelativeLayout;

.field f:Landroid/widget/ImageView;

.field g:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/view/View;

.field k:Lcom/join/mgps/dto/ThAdSwitchDataBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field l:Lcom/join/mgps/dto/PlayCfgBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field m:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a15e8
    .end annotation
.end field

.field n:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a15b2
    .end annotation
.end field

.field o:Landroid/widget/ImageView;

.field p:Landroid/widget/ImageView;

.field q:Landroid/widget/RelativeLayout;

.field r:Landroid/widget/LinearLayout;

.field s:Landroid/widget/LinearLayout;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/TextView;

.field v:Landroid/widget/RelativeLayout;

.field private w:I

.field private x:J

.field public y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x7d0

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/activity/SplashActivity;->w:I

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/join/mgps/activity/SplashActivity;->x:J

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->y:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->z:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->C:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    iput v2, p0, Lcom/join/mgps/activity/SplashActivity;->D:I

    .line 22
    .line 23
    new-instance v2, Lcom/join/mgps/activity/SplashActivity$i;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v2, p0, v3}, Lcom/join/mgps/activity/SplashActivity$i;-><init>(Lcom/join/mgps/activity/SplashActivity;Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->E:Landroid/os/Handler;

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->F:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->G:Z

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    iput v2, p0, Lcom/join/mgps/activity/SplashActivity;->H:I

    .line 40
    .line 41
    const-string v2, ""

    .line 42
    .line 43
    iput-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->J:Ljava/lang/String;

    .line 44
    .line 45
    iput v0, p0, Lcom/join/mgps/activity/SplashActivity;->L:I

    .line 46
    .line 47
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->M:Lcom/join/mgps/shake/a;

    .line 48
    .line 49
    new-instance v0, Lcom/join/mgps/activity/SplashActivity$k;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SplashActivity$k;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->O:Lcom/join/mgps/shake/a$a;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/join/mgps/activity/SplashActivity;->R:F

    .line 60
    .line 61
    iput v0, p0, Lcom/join/mgps/activity/SplashActivity;->S:F

    .line 62
    .line 63
    return-void
.end method

.method private A()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->U()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->s()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private B(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "appid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/SplashActivity;->v(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Z

    .line 28
    .line 29
    .line 30
    new-instance p2, Lcom/join/mgps/activity/SplashActivity$c;

    .line 31
    .line 32
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/SplashActivity$c;-><init>(Lcom/join/mgps/activity/SplashActivity;Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->start(Lcom/bytedance/sdk/openadsdk/TTAdSdk$Callback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private C()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method private D(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "now"
        }
    .end annotation

    .line 1
    const-string v0, "Aspect"

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "isInRange"

    .line 12
    .line 13
    const-string v5, "before"

    .line 14
    .line 15
    move-object v3, p1

    .line 16
    move-object v4, p2

    .line 17
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    const-wide/16 v4, 0x3e8

    .line 43
    .line 44
    mul-long v2, v2, v4

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    cmp-long v6, p3, v2

    .line 48
    .line 49
    if-lez v6, :cond_1

    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    mul-long v2, v2, v4

    .line 56
    .line 57
    cmp-long v4, p3, v2

    .line 58
    .line 59
    if-gez v4, :cond_1

    .line 60
    .line 61
    const/4 p3, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 p3, 0x0

    .line 64
    :goto_0
    const/4 p4, 0x6

    .line 65
    new-array p4, p4, [Ljava/lang/String;

    .line 66
    .line 67
    const-string v2, "Aspect"

    .line 68
    .line 69
    aput-object v2, p4, v1

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    aput-object v2, p4, v0

    .line 80
    .line 81
    const-string v0, "isInRange"

    .line 82
    .line 83
    const/4 v2, 0x2

    .line 84
    aput-object v0, p4, v2

    .line 85
    .line 86
    const/4 v0, 0x3

    .line 87
    aput-object p1, p4, v0

    .line 88
    .line 89
    const/4 v0, 0x4

    .line 90
    aput-object p2, p4, v0

    .line 91
    .line 92
    const-string v0, "after"

    .line 93
    .line 94
    const/4 v2, 0x5

    .line 95
    aput-object v0, p4, v2

    .line 96
    .line 97
    invoke-static {p4}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    return p3

    .line 101
    :catch_0
    move-exception p3

    .line 102
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    const-string v2, "Aspect"

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    const-string v4, "isInRange"

    .line 116
    .line 117
    const-string v7, "after"

    .line 118
    .line 119
    move-object v5, p1

    .line 120
    move-object v6, p2

    .line 121
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return v1

    .line 129
    :cond_2
    :goto_1
    const-string v2, "Aspect"

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    const-string v4, "isInRange"

    .line 140
    .line 141
    const-string v7, "after"

    .line 142
    .line 143
    move-object v5, p1

    .line 144
    move-object v6, p2

    .line 145
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return v1
.end method

.method private E()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Lt6/i0;->o()Lt6/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {v3}, Lq5/b;->d()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    new-instance v4, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->getShowVieDatabean()Lcom/join/mgps/dto/ShowViewDataBean;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    const/4 v3, 0x0

    .line 48
    move-object v7, v3

    .line 49
    const/4 v8, 0x0

    .line 50
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-ge v8, v9, :cond_3

    .line 55
    .line 56
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    check-cast v9, Lcom/join/mgps/dto/ShowViewDataBean;

    .line 61
    .line 62
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getIs_force()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    const/4 v12, 0x2

    .line 71
    const-wide/16 v13, 0x3e8

    .line 72
    .line 73
    if-eqz v11, :cond_1

    .line 74
    .line 75
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-eq v11, v12, :cond_1

    .line 80
    .line 81
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getBegin_times()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v10

    .line 89
    mul-long v10, v10, v13

    .line 90
    .line 91
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getEnd_times()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v15

    .line 99
    mul-long v15, v15, v13

    .line 100
    .line 101
    cmp-long v12, v5, v10

    .line 102
    .line 103
    if-lez v12, :cond_2

    .line 104
    .line 105
    cmp-long v10, v5, v15

    .line 106
    .line 107
    if-gez v10, :cond_2

    .line 108
    .line 109
    move-object v3, v9

    .line 110
    goto :goto_2

    .line 111
    :cond_1
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-nez v10, :cond_2

    .line 116
    .line 117
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getBegin_times()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v10

    .line 125
    mul-long v10, v10, v13

    .line 126
    .line 127
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getEnd_times()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v15

    .line 131
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 132
    .line 133
    .line 134
    move-result-wide v15

    .line 135
    mul-long v15, v15, v13

    .line 136
    .line 137
    cmp-long v13, v5, v10

    .line 138
    .line 139
    if-lez v13, :cond_2

    .line 140
    .line 141
    cmp-long v10, v5, v15

    .line 142
    .line 143
    if-gez v10, :cond_2

    .line 144
    .line 145
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    if-lez v10, :cond_2

    .line 154
    .line 155
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    if-eq v10, v12, :cond_2

    .line 160
    .line 161
    move-object v7, v9

    .line 162
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_3
    if-eqz v3, :cond_4

    .line 166
    .line 167
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/SplashActivity;->Z(Lcom/join/mgps/dto/ShowViewDataBean;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    return v1

    .line 172
    :cond_4
    if-eqz v7, :cond_5

    .line 173
    .line 174
    invoke-virtual {v0, v7}, Lcom/join/mgps/activity/SplashActivity;->Z(Lcom/join/mgps/dto/ShowViewDataBean;)Z

    .line 175
    .line 176
    .line 177
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    return v1

    .line 179
    :catch_0
    :cond_5
    return v2
.end method

.method private synthetic F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/PlayCfgBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/SplashActivity;->M(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/PlayCfgBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/SplashActivity;->N(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/PlayCfgBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/SplashActivity;->O(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic I()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/PlayCfgBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/SplashActivity;->P(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static synthetic J(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private synthetic K(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->P:Landroid/view/GestureDetector;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method private L(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adid"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private M(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/papa/sim/statistic/Event;->AdscopeSdk_loading:Lcom/papa/sim/statistic/Event;

    .line 28
    .line 29
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->f0()V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/beizi/fusion/SplashAd;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    new-instance v7, Lcom/join/mgps/activity/SplashActivity$e;

    .line 44
    .line 45
    invoke-direct {v7, p0}, Lcom/join/mgps/activity/SplashActivity$e;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v8, 0xbb8

    .line 49
    .line 50
    move-object v3, v0

    .line 51
    move-object v4, p0

    .line 52
    move-object v6, p1

    .line 53
    invoke-direct/range {v3 .. v9}, Lcom/beizi/fusion/SplashAd;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/beizi/fusion/AdListener;J)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->V:Lcom/beizi/fusion/SplashAd;

    .line 57
    .line 58
    invoke-static {p0}, Lcom/join/mgps/activity/login/AbScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {p0}, Lcom/join/mgps/activity/login/AbScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, p1, v1}, Lcom/beizi/fusion/SplashAd;->loadAd(II)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private N(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/papa/sim/statistic/Event;->AdRenerSdk_loading:Lcom/papa/sim/statistic/Event;

    .line 28
    .line 29
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->f0()V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setSlotId(Ljava/lang/String;)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const v0, 0x7f0a0fee

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/view/ViewGroup;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setAdContainer(Landroid/view/ViewGroup;)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setAdCount(I)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/16 v0, 0xbb8

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setFetchTimeOut(I)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->build()Lcom/aggmoread/sdk/client/AMAdLoadSlot;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/aggmoread/sdk/client/AMSdk;->makeAdLoader(Lcom/aggmoread/sdk/client/AMAdLoadSlot;)Lcom/aggmoread/sdk/client/AMAdLoader;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance v0, Lcom/join/mgps/activity/SplashActivity$f;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SplashActivity$f;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/join/mgps/activity/SplashActivity$g;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SplashActivity$g;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p0, v0, v1}, Lcom/aggmoread/sdk/client/AMAdLoader;->loadAndShowSplashAd(Landroid/content/Context;Lcom/aggmoread/sdk/client/splash/AMSplashAdListener;Lcom/aggmoread/sdk/client/splash/AMSplashInteractionListener;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private O(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p0}, Lcom/windmill/sdk/utils/UIUtils;->getScreenWidthInPx(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {p0}, Lcom/windmill/sdk/utils/UIUtils;->getScreenHeightInPx(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->I:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 35
    .line 36
    new-instance v1, Lcom/join/mgps/activity/SplashActivity$d;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SplashActivity$d;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 39
    .line 40
    .line 41
    const/16 v2, 0xbb8

    .line 42
    .line 43
    invoke-interface {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$CSJSplashAdListener;I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private P(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/papa/sim/statistic/Event;->TobidSdk_loading:Lcom/papa/sim/statistic/Event;

    .line 28
    .line 29
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->f0()V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "ad_key_width"

    .line 56
    .line 57
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 65
    .line 66
    const/high16 v2, 0x42c80000    # 100.0f

    .line 67
    .line 68
    invoke-static {v2, p0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    sub-int/2addr v1, v2

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "ad_key_height"

    .line 78
    .line 79
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 83
    .line 84
    const-string v2, "123456"

    .line 85
    .line 86
    invoke-direct {v1, p1, v2, v0}, Lcom/windmill/sdk/splash/WMSplashAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x1

    .line 90
    invoke-virtual {v1, p1}, Lcom/windmill/sdk/splash/WMSplashAdRequest;->setDisableAutoHideAd(Z)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Lcom/windmill/sdk/splash/WMSplashAd;

    .line 94
    .line 95
    new-instance v0, Lcom/join/mgps/activity/SplashActivity$h;

    .line 96
    .line 97
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SplashActivity$h;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, p0, v1, v0}, Lcom/windmill/sdk/splash/WMSplashAd;-><init>(Landroid/app/Activity;Lcom/windmill/sdk/splash/WMSplashAdRequest;Lcom/windmill/sdk/splash/WMSplashAdListener;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->b:Landroid/widget/FrameLayout;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->b:Landroid/widget/FrameLayout;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/splash/WMSplashAd;->loadAdAndShow(Landroid/view/ViewGroup;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private Q()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->y()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->y:Z

    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method private R(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "showViewDataBean",
            "appBeanMain",
            "recPosition"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getIs_force()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "1"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    const-string v3, ""

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ShowViewDataBean;->setTag_show(I)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lt6/i0;->o()Lt6/i0;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getShowVieDatabeanTable()Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v1, v4}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastClickPageAD()Lorg/androidannotations/api/sharedpreferences/p;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getId()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v1, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->E()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v4, p0, Lcom/join/mgps/activity/SplashActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->isShowSplash()Lorg/androidannotations/api/sharedpreferences/d;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v4, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    new-instance v1, Lcom/papa/sim/statistic/f;

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getJump_id()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getTitle()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    const-string v6, "spreadButton"

    .line 124
    .line 125
    invoke-direct {v1, v4, v6, v5, v3}, Lcom/papa/sim/statistic/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/4 v3, 0x1

    .line 129
    invoke-direct {p0, v1, v3}, Lcom/join/mgps/activity/SplashActivity;->X(Lcom/papa/sim/statistic/f;Z)V

    .line 130
    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getStrategy_id()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v4, "_"

    .line 145
    .line 146
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getTitle()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getJump_id()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    sget-object v5, Lcom/papa/sim/statistic/Event;->onclickScreenAds:Lcom/papa/sim/statistic/Event;

    .line 175
    .line 176
    new-instance v6, Lcom/papa/sim/statistic/Ext;

    .line 177
    .line 178
    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v1}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v6, v1}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v4, v5, v6}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 190
    .line 191
    .line 192
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    sget-object v5, Lcom/papa/sim/statistic/Event;->expHomeTrigTab:Lcom/papa/sim/statistic/Event;

    .line 197
    .line 198
    new-instance v6, Lcom/papa/sim/statistic/Ext;

    .line 199
    .line 200
    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, p3}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-virtual {p3, v6}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    invoke-virtual {p3, v1}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    invoke-virtual {p3, v1}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 220
    .line 221
    .line 222
    move-result-object p3

    .line 223
    invoke-virtual {v4, v5, p3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/SplashIntentBean;->setTag_show(I)V

    .line 227
    .line 228
    .line 229
    invoke-static {}, Lt6/i0;->o()Lt6/i0;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getShowVieDatabeanTable()Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p2, p1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    iput-boolean v3, p0, Lcom/join/mgps/activity/SplashActivity;->F:Z

    .line 241
    .line 242
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->E()Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 247
    .line 248
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->isShowSplash()Lorg/androidannotations/api/sharedpreferences/d;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p2, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SplashActivity;->d0(Lcom/join/mgps/Util/IntentDateBean;)V

    .line 260
    .line 261
    .line 262
    return-void
.end method

.method private T()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->p:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/q;->Z()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v1, 0x7f071301

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/join/mgps/activity/SplashActivity;->R:F

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v1, 0x7f0715c0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/join/mgps/activity/SplashActivity;->S:F

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->p:Landroid/widget/ImageView;

    .line 43
    .line 44
    const/high16 v2, 0x40800000    # 4.0f

    .line 45
    .line 46
    mul-float v0, v0, v2

    .line 47
    .line 48
    const/high16 v2, 0x40a00000    # 5.0f

    .line 49
    .line 50
    div-float/2addr v0, v2

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->p:Landroid/widget/ImageView;

    .line 55
    .line 56
    iget v1, p0, Lcom/join/mgps/activity/SplashActivity;->R:F

    .line 57
    .line 58
    const/high16 v3, 0x40000000    # 2.0f

    .line 59
    .line 60
    mul-float v1, v1, v3

    .line 61
    .line 62
    div-float/2addr v1, v2

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/nineoldandroids/animation/q;

    .line 67
    .line 68
    invoke-direct {v0}, Lcom/nineoldandroids/animation/q;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 72
    .line 73
    const/4 v1, 0x5

    .line 74
    new-array v1, v1, [F

    .line 75
    .line 76
    fill-array-data v1, :array_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/q;->f0([F)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 83
    .line 84
    const/4 v1, -0x1

    .line 85
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/q;->j0(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/q;->k0(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 95
    .line 96
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 97
    .line 98
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/q;->m(Landroid/view/animation/Interpolator;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/join/mgps/activity/SplashActivity$l;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SplashActivity$l;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->p:Landroid/widget/ImageView;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/a;->o(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/q;->D(Lcom/nineoldandroids/animation/q$g;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 122
    .line 123
    const-wide/16 v1, 0x3e8

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/q;->d0(J)Lcom/nineoldandroids/animation/q;

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/q;->r()V

    .line 131
    .line 132
    .line 133
    :cond_1
    return-void

    .line 134
    nop

    .line 135
    :array_0
    .array-data 4
        0x0
        0x41f00000    # 30.0f
        0x0
        0x42340000    # 45.0f
        0x0
    .end array-data
.end method

.method private U()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->o:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/q;->Z()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v1, 0x7f071317

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/join/mgps/activity/SplashActivity;->R:F

    .line 28
    .line 29
    new-instance v0, Lcom/nineoldandroids/animation/q;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/nineoldandroids/animation/q;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    new-array v1, v1, [F

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    iget v3, p0, Lcom/join/mgps/activity/SplashActivity;->R:F

    .line 41
    .line 42
    aput v3, v1, v2

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x1

    .line 46
    aput v2, v1, v3

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/q;->f0([F)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 52
    .line 53
    const/4 v1, -0x1

    .line 54
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/q;->j0(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/q;->k0(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 63
    .line 64
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 65
    .line 66
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/q;->m(Landroid/view/animation/Interpolator;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/join/mgps/activity/SplashActivity$n;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SplashActivity$n;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->o:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/a;->o(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/q;->D(Lcom/nineoldandroids/animation/q$g;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 90
    .line 91
    const-wide/16 v1, 0x5dc

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/q;->d0(J)Lcom/nineoldandroids/animation/q;

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->Q:Lcom/nineoldandroids/animation/q;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/q;->r()V

    .line 99
    .line 100
    .line 101
    :cond_1
    return-void
.end method

.method private V(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sourceUrl",
            "showViewDataBean",
            "appBeanMain"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote_local()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    new-instance v2, Ljava/io/File;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-static {v2}, Lcom/join/android/app/common/utils/l;->H(Ljava/io/File;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p3}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p3}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_0
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    const v2, 0x7f08009c

    .line 52
    .line 53
    .line 54
    sget-object v3, Lcom/facebook/drawee/drawable/s$c;->a:Lcom/facebook/drawee/drawable/s$c;

    .line 55
    .line 56
    invoke-static {v0, v2, v1, v3}, Lcom/join/android/app/common/utils/l;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    .line 61
    const/4 v2, -0x1

    .line 62
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/join/android/app/component/video/EmptyControlVideoView;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setThumbImageView(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/join/android/app/component/video/EmptyControlVideoView;

    .line 74
    .line 75
    const-string v1, " "

    .line 76
    .line 77
    const/4 v2, 0x1

    .line 78
    invoke-virtual {v0, p1, v2, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUp(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/join/android/app/component/video/EmptyControlVideoView;

    .line 82
    .line 83
    new-instance v0, Lcom/join/mgps/activity/SplashActivity$q;

    .line 84
    .line 85
    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/activity/SplashActivity$q;-><init>(Lcom/join/mgps/activity/SplashActivity;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lv7/h;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/join/android/app/component/video/EmptyControlVideoView;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Lcom/join/android/app/component/video/EmptyControlVideoView;->setMute(Z)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->E:Landroid/os/Handler;

    .line 97
    .line 98
    new-instance p2, Lcom/join/mgps/activity/SplashActivity$a;

    .line 99
    .line 100
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/SplashActivity$a;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 101
    .line 102
    .line 103
    const-wide/16 v0, 0xc8

    .line 104
    .line 105
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method private W(Lcom/join/mgps/dto/ShowViewDataBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showViewDataBean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->E:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/SplashActivity$o;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/SplashActivity$o;-><init>(Lcom/join/mgps/activity/SplashActivity;Lcom/join/mgps/dto/ShowViewDataBean;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private X(Lcom/papa/sim/statistic/f;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventPointZB",
            "isclick"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/f;->j(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/papa/sim/statistic/t;->w(Lcom/papa/sim/statistic/f;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/SplashActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/SplashActivity;->K(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/join/mgps/activity/SplashActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->G()V

    return-void
.end method

.method private b0()V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->d()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-class v2, Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 20
    .line 21
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->C:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 28
    .line 29
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v1, 0x7f0d0861

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const v1, 0x7f0a13f2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->q:Landroid/widget/RelativeLayout;

    .line 51
    .line 52
    const v1, 0x7f0a13bc

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 60
    .line 61
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->v:Landroid/widget/RelativeLayout;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->C:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/join/mgps/dto/FirstScreenAdInteractionBean;->getAction()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->J:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->C:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/join/mgps/dto/FirstScreenAdInteractionBean;->getMode()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "shake_click"

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v2, 0x1

    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const-string v4, "android.hardware.sensor.accelerometer"

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v3, 0x1

    .line 100
    :goto_0
    const/4 v4, 0x0

    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    const v1, 0x7f0a0a3d

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Landroid/widget/ImageView;

    .line 113
    .line 114
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->p:Landroid/widget/ImageView;

    .line 115
    .line 116
    const v1, 0x7f0a0efc

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Landroid/widget/LinearLayout;

    .line 124
    .line 125
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->r:Landroid/widget/LinearLayout;

    .line 126
    .line 127
    const v1, 0x7f0a1981

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Landroid/widget/TextView;

    .line 135
    .line 136
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->t:Landroid/widget/TextView;

    .line 137
    .line 138
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->r:Landroid/widget/LinearLayout;

    .line 139
    .line 140
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->C:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/join/mgps/dto/FirstScreenAdInteractionBean;->getTips()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_2

    .line 154
    .line 155
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->t:Landroid/widget/TextView;

    .line 156
    .line 157
    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->C:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/join/mgps/dto/FirstScreenAdInteractionBean;->getTips()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->C:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/join/mgps/dto/FirstScreenAdInteractionBean;->getShake_conf()Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/SplashActivity;->z(Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;)V

    .line 173
    .line 174
    .line 175
    const/4 v1, 0x2

    .line 176
    iput v1, p0, Lcom/join/mgps/activity/SplashActivity;->L:I

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->C:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/join/mgps/dto/FirstScreenAdInteractionBean;->getMode()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    const-string v3, "slide_click"

    .line 186
    .line 187
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_5

    .line 192
    .line 193
    const v1, 0x7f0a0a3e

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    check-cast v1, Landroid/widget/ImageView;

    .line 201
    .line 202
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->o:Landroid/widget/ImageView;

    .line 203
    .line 204
    const v1, 0x7f0a0efd

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Landroid/widget/LinearLayout;

    .line 212
    .line 213
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->s:Landroid/widget/LinearLayout;

    .line 214
    .line 215
    const v1, 0x7f0a1982

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, Landroid/widget/TextView;

    .line 223
    .line 224
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->u:Landroid/widget/TextView;

    .line 225
    .line 226
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->s:Landroid/widget/LinearLayout;

    .line 227
    .line 228
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->C:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/join/mgps/dto/FirstScreenAdInteractionBean;->getTips()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_4

    .line 242
    .line 243
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->u:Landroid/widget/TextView;

    .line 244
    .line 245
    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->C:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 246
    .line 247
    invoke-virtual {v2}, Lcom/join/mgps/dto/FirstScreenAdInteractionBean;->getTips()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->v:Landroid/widget/RelativeLayout;

    .line 255
    .line 256
    new-instance v2, Lcom/join/mgps/activity/w9;

    .line 257
    .line 258
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/w9;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    .line 263
    .line 264
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->A()V

    .line 265
    .line 266
    .line 267
    const/4 v1, 0x3

    .line 268
    iput v1, p0, Lcom/join/mgps/activity/SplashActivity;->L:I

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->q:Landroid/widget/RelativeLayout;

    .line 272
    .line 273
    const/16 v3, 0x8

    .line 274
    .line 275
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    iput v2, p0, Lcom/join/mgps/activity/SplashActivity;->L:I

    .line 279
    .line 280
    :cond_6
    :goto_1
    const v1, 0x7f0a1b82

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 288
    .line 289
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 290
    .line 291
    const v1, 0x7f0a0447

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    check-cast v1, Landroid/widget/TextView;

    .line 299
    .line 300
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->h:Landroid/widget/TextView;

    .line 301
    .line 302
    const v1, 0x7f0a0449

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    check-cast v1, Landroid/widget/TextView;

    .line 310
    .line 311
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->i:Landroid/widget/TextView;

    .line 312
    .line 313
    const v1, 0x7f0a0448

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->j:Landroid/view/View;

    .line 321
    .line 322
    const v1, 0x7f0a0217

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 330
    .line 331
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->e:Landroid/widget/RelativeLayout;

    .line 332
    .line 333
    const v1, 0x7f0a0880

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    check-cast v1, Landroid/widget/ImageView;

    .line 341
    .line 342
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->f:Landroid/widget/ImageView;

    .line 343
    .line 344
    const v1, 0x7f0a1b70

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    check-cast v1, Lcom/join/android/app/component/video/EmptyControlVideoView;

    .line 352
    .line 353
    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/join/android/app/component/video/EmptyControlVideoView;

    .line 354
    .line 355
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->b:Landroid/widget/FrameLayout;

    .line 356
    .line 357
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 358
    .line 359
    .line 360
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->j:Landroid/view/View;

    .line 361
    .line 362
    new-instance v1, Lcom/join/mgps/activity/SplashActivity$j;

    .line 363
    .line 364
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SplashActivity$j;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->g0()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->x()V

    .line 374
    .line 375
    .line 376
    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/activity/SplashActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->H()V

    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/activity/SplashActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->F()V

    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/activity/SplashActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->I()V

    return-void
.end method

.method public static synthetic f(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/SplashActivity;->J(Landroid/view/View;)V

    return-void
.end method

.method private f0()V
    .locals 5

    .line 1
    const-string v0, "adCount"

    .line 2
    .line 3
    new-instance v1, Lcom/papa91/wrapper/UserPrefs;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/papa91/wrapper/UserPrefs;->getSspAdConfig()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    move v4, v0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    invoke-virtual {v1, v4}, Lcom/papa91/wrapper/UserPrefs;->setSspAdConfig(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method static synthetic g(Lcom/join/mgps/activity/SplashActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/SplashActivity;->F:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SplashActivity;->E:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/activity/SplashActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->C()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic j(Lcom/join/mgps/activity/SplashActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/dto/FirstIntentData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SplashActivity;->B:Lcom/join/mgps/dto/FirstIntentData;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Vibrator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SplashActivity;->N:Landroid/os/Vibrator;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/shake/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SplashActivity;->M:Lcom/join/mgps/shake/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/join/mgps/activity/SplashActivity;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/SplashActivity;->R(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o(Lcom/join/mgps/activity/SplashActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/SplashActivity;->K:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lcom/join/mgps/activity/SplashActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Lcom/join/mgps/activity/SplashActivity;Lcom/bytedance/sdk/openadsdk/TTAdNative;)Lcom/bytedance/sdk/openadsdk/TTAdNative;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->I:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic r(Lcom/join/mgps/activity/SplashActivity;)Lcom/beizi/fusion/SplashAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SplashActivity;->V:Lcom/beizi/fusion/SplashAd;

    .line 2
    .line 3
    return-object p0
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->P:Landroid/view/GestureDetector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/view/GestureDetector;

    .line 6
    .line 7
    new-instance v1, Lcom/join/mgps/activity/SplashActivity$m;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SplashActivity$m;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->P:Landroid/view/GestureDetector;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private t(Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shakeConfBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/shake/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/shake/a;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->M:Lcom/join/mgps/shake/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/shake/a;->c(Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->M:Lcom/join/mgps/shake/a;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->O:Lcom/join/mgps/shake/a$a;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/shake/a;->b(Lcom/join/mgps/shake/a$a;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "vibrator"

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/os/Vibrator;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->N:Landroid/os/Vibrator;

    .line 27
    .line 28
    return-void
.end method

.method private v(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "\u609f\u996d\u6e38\u620f\u5385_android"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x4

    .line 30
    const/4 v1, 0x3

    .line 31
    filled-new-array {v0, v1}, [I

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method private y()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->y:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x2711

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->y:Z

    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method private z(Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shakeConfBean"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->T()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SplashActivity;->t(Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public S()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/join/mgps/activity/SplashActivity;->x:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget v2, p0, Lcom/join/mgps/activity/SplashActivity;->w:I

    .line 9
    .line 10
    int-to-long v3, v2

    .line 11
    cmp-long v5, v0, v3

    .line 12
    .line 13
    if-lez v5, :cond_0

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    int-to-long v2, v2

    .line 19
    sub-long v0, v2, v0

    .line 20
    .line 21
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->E:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lcom/join/mgps/activity/SplashActivity$b;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/SplashActivity$b;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method Y(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "showViewDataBean",
            "appBeanMain"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    const-string v2, "_"

    .line 6
    .line 7
    :try_start_0
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->T:Lcom/join/mgps/dto/ShowViewDataBean;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/activity/SplashActivity;->U:Lcom/join/mgps/dto/SplashIntentBean;

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getStrategy_id()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getTitle()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getJump_id()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    sget-object v4, Lcom/papa/sim/statistic/Event;->FullScreenAds:Lcom/papa/sim/statistic/Event;

    .line 52
    .line 53
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 54
    .line 55
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v5, v2}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5, v2}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    sget-object v4, Lcom/papa/sim/statistic/Event;->expHomeFunTab:Lcom/papa/sim/statistic/Event;

    .line 78
    .line 79
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 80
    .line 81
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget v5, p0, Lcom/join/mgps/activity/SplashActivity;->L:I

    .line 89
    .line 90
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v1, v5}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v1, v5}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v3, v4, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 118
    .line 119
    const/4 v2, 0x0

    .line 120
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->h:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->i:Landroid/widget/TextView;

    .line 129
    .line 130
    const/16 v3, 0x8

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->f:Landroid/widget/ImageView;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->e:Landroid/widget/RelativeLayout;

    .line 141
    .line 142
    const/4 v3, -0x1

    .line 143
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->E:Landroid/os/Handler;

    .line 147
    .line 148
    if-eqz v1, :cond_0

    .line 149
    .line 150
    const/4 v3, 0x2

    .line 151
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    .line 153
    .line 154
    :cond_0
    new-instance v1, Lcom/papa/sim/statistic/f;

    .line 155
    .line 156
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    const-string v4, "spreadButton"

    .line 161
    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getJump_id()I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getTitle()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-direct {v1, v3, v4, v5, v0}, Lcom/papa/sim/statistic/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-direct {p0, v1, v2}, Lcom/join/mgps/activity/SplashActivity;->X(Lcom/papa/sim/statistic/f;Z)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->v:Landroid/widget/RelativeLayout;

    .line 207
    .line 208
    new-instance v1, Lcom/join/mgps/activity/SplashActivity$p;

    .line 209
    .line 210
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/SplashActivity$p;-><init>(Lcom/join/mgps/activity/SplashActivity;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->e:Landroid/widget/RelativeLayout;

    .line 217
    .line 218
    new-instance v0, Lcom/join/mgps/activity/r9;

    .line 219
    .line 220
    invoke-direct {v0}, Lcom/join/mgps/activity/r9;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->E:Landroid/os/Handler;

    .line 227
    .line 228
    if-eqz p1, :cond_1

    .line 229
    .line 230
    const/4 v0, 0x1

    .line 231
    const-wide/16 v1, 0xfa0

    .line 232
    .line 233
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 234
    .line 235
    .line 236
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote_local()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const-string v1, "http"

    .line 245
    .line 246
    const v2, 0x7f08009c

    .line 247
    .line 248
    .line 249
    if-eqz v0, :cond_4

    .line 250
    .line 251
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 252
    .line 253
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    if-eqz p1, :cond_2

    .line 261
    .line 262
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 263
    .line 264
    invoke-static {v0}, Lcom/join/android/app/common/utils/l;->H(Ljava/io/File;)Landroid/net/Uri;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    sget-object v0, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 273
    .line 274
    invoke-static {p1, v2, p2, v0}, Lcom/join/android/app/common/utils/l;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 275
    .line 276
    .line 277
    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    if-eqz p2, :cond_3

    .line 287
    .line 288
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 289
    .line 290
    .line 291
    move-result p2

    .line 292
    if-eqz p2, :cond_3

    .line 293
    .line 294
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 295
    .line 296
    invoke-static {p2, v2, p1}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto :goto_0

    .line 300
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 301
    .line 302
    invoke-static {p1}, Lcom/join/android/app/common/utils/l;->I(Ljava/lang/String;)Landroid/net/Uri;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    sget-object v0, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 311
    .line 312
    invoke-static {p2, v2, p1, v0}, Lcom/join/android/app/common/utils/l;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 313
    .line 314
    .line 315
    goto :goto_0

    .line 316
    :cond_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result p2

    .line 324
    if-eqz p2, :cond_5

    .line 325
    .line 326
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    if-eqz p2, :cond_5

    .line 331
    .line 332
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 333
    .line 334
    sget-object v0, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 335
    .line 336
    invoke-static {p2, v2, p1, v0}, Lcom/join/android/app/common/utils/l;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 337
    .line 338
    .line 339
    goto :goto_0

    .line 340
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    const-string v0, "file://"

    .line 346
    .line 347
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 358
    .line 359
    invoke-static {p1}, Lcom/join/android/app/common/utils/l;->I(Ljava/lang/String;)Landroid/net/Uri;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    sget-object v0, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 368
    .line 369
    invoke-static {p2, v2, p1, v0}, Lcom/join/android/app/common/utils/l;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    .line 371
    .line 372
    goto :goto_0

    .line 373
    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->c0()V

    .line 378
    .line 379
    .line 380
    :goto_0
    return-void
.end method

.method Z(Lcom/join/mgps/dto/ShowViewDataBean;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getIs_force()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "1"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/join/mgps/dto/SplashIntentBean;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastClickPageAD()Lorg/androidannotations/api/sharedpreferences/p;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getId()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, ""

    .line 53
    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    xor-int/2addr p1, v2

    .line 66
    return p1

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/join/mgps/dto/SplashIntentBean;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/join/mgps/dto/SplashIntentBean;->getTag_show()I

    .line 88
    .line 89
    .line 90
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v3, 0x2

    .line 92
    if-eq v1, v3, :cond_1

    .line 93
    .line 94
    return v2

    .line 95
    :cond_2
    return v0

    .line 96
    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    return v0
.end method

.method a0(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "showViewDataBean",
            "appBeanMain"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    const-string v2, "_"

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getStrategy_id()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getTitle()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getJump_id()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    sget-object v4, Lcom/papa/sim/statistic/Event;->FullScreenAds:Lcom/papa/sim/statistic/Event;

    .line 48
    .line 49
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5, v2}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v5, v2}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    sget-object v4, Lcom/papa/sim/statistic/Event;->expHomeFunTab:Lcom/papa/sim/statistic/Event;

    .line 74
    .line 75
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 76
    .line 77
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget v5, p0, Lcom/join/mgps/activity/SplashActivity;->L:I

    .line 85
    .line 86
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v1, v5}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v1, v5}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v3, v4, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 111
    .line 112
    .line 113
    const/4 v1, 0x4

    .line 114
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/f;->l(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->h:Landroid/widget/TextView;

    .line 118
    .line 119
    const/16 v2, 0x8

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->i:Landroid/widget/TextView;

    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->f:Landroid/widget/ImageView;

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->e:Landroid/widget/RelativeLayout;

    .line 136
    .line 137
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/join/android/app/component/video/EmptyControlVideoView;

    .line 141
    .line 142
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    new-instance v1, Lcom/papa/sim/statistic/f;

    .line 146
    .line 147
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    const-string v4, "spreadButton"

    .line 152
    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getJump_id()I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getTitle()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-direct {v1, v2, v4, v5, v0}, Lcom/papa/sim/statistic/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {p0, v1, v3}, Lcom/join/mgps/activity/SplashActivity;->X(Lcom/papa/sim/statistic/f;Z)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url_local()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    const-string v2, "https"

    .line 206
    .line 207
    const-string v3, "http"

    .line 208
    .line 209
    if-eqz v1, :cond_3

    .line 210
    .line 211
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 212
    .line 213
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    .line 222
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/join/android/app/component/video/EmptyControlVideoView;

    .line 223
    .line 224
    if-eqz v0, :cond_6

    .line 225
    .line 226
    invoke-static {v1}, Lcom/join/android/app/common/utils/l;->H(Ljava/io/File;)Landroid/net/Uri;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-direct {p0, v0, p1, p2}, Lcom/join/mgps/activity/SplashActivity;->V(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    .line 235
    .line 236
    .line 237
    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_2

    .line 247
    .line 248
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-nez v1, :cond_1

    .line 253
    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-eqz v1, :cond_2

    .line 259
    .line 260
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/join/mgps/activity/SplashActivity;->V(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    .line 261
    .line 262
    .line 263
    goto :goto_0

    .line 264
    :cond_2
    invoke-static {v0}, Lcom/join/android/app/common/utils/l;->I(Ljava/lang/String;)Landroid/net/Uri;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-direct {p0, v0, p1, p2}, Lcom/join/mgps/activity/SplashActivity;->V(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    .line 273
    .line 274
    .line 275
    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_5

    .line 285
    .line 286
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-nez v1, :cond_4

    .line 291
    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_5

    .line 297
    .line 298
    :cond_4
    invoke-direct {p0, v0, p1, p2}, Lcom/join/mgps/activity/SplashActivity;->V(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    .line 299
    .line 300
    .line 301
    goto :goto_0

    .line 302
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    const-string v2, "file://"

    .line 308
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-static {v0}, Lcom/join/android/app/common/utils/l;->I(Ljava/lang/String;)Landroid/net/Uri;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-direct {p0, v0, p1, p2}, Lcom/join/mgps/activity/SplashActivity;->V(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    .line 329
    .line 330
    goto :goto_0

    .line 331
    :catch_0
    move-exception p1

    .line 332
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->c0()V

    .line 336
    .line 337
    .line 338
    :cond_6
    :goto_0
    return-void
.end method

.method c0()V
    .locals 1

    .line 1
    const/16 v0, 0x2711

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method d0(Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentDateBean"
        }
    .end annotation

    .line 1
    const-string v0, "splash"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setFrom(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x3

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getJump_type()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 25
    .line 26
    .line 27
    iget v3, p0, Lcom/join/mgps/activity/SplashActivity;->K:I

    .line 28
    .line 29
    if-ne v3, v1, :cond_1

    .line 30
    .line 31
    const/16 v3, 0x3391

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/16 v3, 0x9d

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/join/mgps/activity/SplashActivity;->C:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 40
    .line 41
    if-eqz v3, :cond_6

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-ne v3, v1, :cond_6

    .line 48
    .line 49
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v3, v4}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const/4 v4, 0x0

    .line 62
    const-string v5, "detail_dl"

    .line 63
    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    const/16 v6, 0xb

    .line 71
    .line 72
    if-ne v3, v6, :cond_2

    .line 73
    .line 74
    iget-object v3, p0, Lcom/join/mgps/activity/SplashActivity;->C:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 75
    .line 76
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/FirstScreenAdInteractionBean;->setAction(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 v3, 0x1

    .line 82
    :goto_1
    iget-object v6, p0, Lcom/join/mgps/activity/SplashActivity;->C:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 83
    .line 84
    invoke-virtual {v6}, Lcom/join/mgps/dto/FirstScreenAdInteractionBean;->getAction()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    const/4 v8, -0x1

    .line 96
    sparse-switch v7, :sswitch_data_0

    .line 97
    .line 98
    .line 99
    :goto_2
    const/4 v4, -0x1

    .line 100
    goto :goto_3

    .line 101
    :sswitch_0
    const-string v4, "main_dl"

    .line 102
    .line 103
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_3

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    const/4 v4, 0x2

    .line 111
    goto :goto_3

    .line 112
    :sswitch_1
    const-string v4, "tab_dl"

    .line 113
    .line 114
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_4

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    const/4 v4, 0x1

    .line 122
    goto :goto_3

    .line 123
    :sswitch_2
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-nez v5, :cond_5

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :pswitch_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {p1, v3}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 143
    .line 144
    .line 145
    const-string v1, "156"

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :pswitch_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-virtual {p1, v3}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    const-string v3, "2"

    .line 157
    .line 158
    invoke-virtual {p1, v3}, Lcom/join/mgps/Util/IntentDateBean;->setExt1(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 165
    .line 166
    .line 167
    const-string v1, "154"

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :pswitch_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {p1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 181
    .line 182
    .line 183
    const/16 v1, 0x9b

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 186
    .line 187
    .line 188
    :cond_6
    :goto_4
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 196
    .line 197
    .line 198
    :goto_5
    const/16 p1, 0x2711

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :sswitch_data_0
    .sparse-switch
        -0x759ad4ca -> :sswitch_2
        -0x3488f28e -> :sswitch_1
        0x318864ce -> :sswitch_0
    .end sparse-switch

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method e0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x64L
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method g0()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->isWifiEnable()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/join/android/app/component/video/EmptyControlVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lv7/h;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->firstNewSplashV2()Lorg/androidannotations/api/sharedpreferences/d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/high16 v0, 0x400000

    .line 31
    .line 32
    and-int/2addr p1, v0

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->firstNewSplashV2()Lorg/androidannotations/api/sharedpreferences/d;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/16 p1, 0x2711

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/join/android/app/component/video/EmptyControlVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->E:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->E:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->G:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/join/android/app/component/video/EmptyControlVideoView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->G:Z

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->y:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->M:Lcom/join/mgps/shake/a;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/shake/a;->e()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->G:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/join/android/app/component/video/EmptyControlVideoView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->y:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->Q()V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->y:Z

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->M:Lcom/join/mgps/shake/a;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/shake/a;->d()V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->M:Lcom/join/mgps/shake/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/shake/a;->e()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public u()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/PlayCfgBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->S()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/PlayCfgBean;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    packed-switch v0, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/PlayCfgBean;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Lcom/join/mgps/activity/v9;

    .line 52
    .line 53
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/v9;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v2, v3}, Lcom/join/mgps/ad/adapter/e;->a(Landroid/content/Context;Ljava/lang/String;Le6/a;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->n:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/PlayCfgBean;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v3, Lcom/join/mgps/activity/t9;

    .line 76
    .line 77
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/t9;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v2, v3}, Lcom/join/mgps/ad/adapter/d;->a(Landroid/content/Context;Ljava/lang/String;Le6/a;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->n:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/PlayCfgBean;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-instance v3, Lcom/join/mgps/activity/s9;

    .line 100
    .line 101
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/s9;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v2, v3}, Lcom/join/mgps/ad/adapter/a;->a(Landroid/content/Context;Ljava/lang/String;Le6/a;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->n:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->n:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/PlayCfgBean;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    new-instance v2, Lcom/join/mgps/activity/u9;

    .line 129
    .line 130
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/u9;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v1, v2}, Lcom/join/mgps/ad/adapter/f;->d(Landroid/content/Context;Ljava/lang/String;Le6/a;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->b0()V

    .line 138
    .line 139
    .line 140
    :goto_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const/4 v2, 0x0

    .line 153
    invoke-virtual {v0, v2, v1}, Lcom/papa/sim/statistic/t;->O2(ILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->plugHasUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    sput-boolean v2, Lcom/join/mgps/service/CommonService;->W:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    .line 173
    .line 174
    :goto_1
    return-void

    .line 175
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method w()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->F:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->c0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method x()V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "333 - aaaa"

    .line 4
    .line 5
    const-string v2, "333 - bbb"

    .line 6
    .line 7
    const-string v3, "333 - ccc"

    .line 8
    .line 9
    const-string v4, "333 - ddd"

    .line 10
    .line 11
    const-string v5, "before"

    .line 12
    .line 13
    const-string v6, "getImageBitmap"

    .line 14
    .line 15
    const-string v7, "Aspect"

    .line 16
    .line 17
    const/4 v8, 0x5

    .line 18
    :try_start_0
    new-array v9, v8, [Ljava/lang/String;

    .line 19
    .line 20
    const/4 v10, 0x0

    .line 21
    aput-object v7, v9, v10

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v11

    .line 27
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v11

    .line 31
    const/4 v12, 0x1

    .line 32
    aput-object v11, v9, v12

    .line 33
    .line 34
    const/4 v11, 0x2

    .line 35
    aput-object v6, v9, v11

    .line 36
    .line 37
    const-string v13, "11"

    .line 38
    .line 39
    const/4 v14, 0x3

    .line 40
    aput-object v13, v9, v14

    .line 41
    .line 42
    const/4 v13, 0x4

    .line 43
    aput-object v5, v9, v13

    .line 44
    .line 45
    invoke-static {v9}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lt6/i0;->o()Lt6/i0;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    invoke-virtual {v9}, Lt6/i0;->n()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    if-eqz v9, :cond_14

    .line 57
    .line 58
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    if-eqz v15, :cond_0

    .line 63
    .line 64
    goto/16 :goto_b

    .line 65
    .line 66
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v13

    .line 70
    iget-object v15, v1, Lcom/join/mgps/activity/SplashActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 71
    .line 72
    invoke-virtual {v15}, Lcom/join/mgps/pref/PrefDef_;->lastShowSplashImage()Lorg/androidannotations/api/sharedpreferences/p;

    .line 73
    .line 74
    .line 75
    move-result-object v15

    .line 76
    const-string v12, ""

    .line 77
    .line 78
    invoke-virtual {v15, v12}, Lorg/androidannotations/api/sharedpreferences/p;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    const/4 v15, 0x0

    .line 83
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    const/16 v19, 0x0

    .line 88
    .line 89
    if-ge v15, v8, :cond_c

    .line 90
    .line 91
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    check-cast v8, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    .line 96
    .line 97
    invoke-virtual {v8}, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->getShowVieDatabean()Lcom/join/mgps/dto/ShowViewDataBean;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-virtual {v8}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    if-eq v10, v11, :cond_a

    .line 106
    .line 107
    invoke-virtual {v8}, Lcom/join/mgps/dto/ShowViewDataBean;->getBegin_times()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-virtual {v8}, Lcom/join/mgps/dto/ShowViewDataBean;->getEnd_times()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    invoke-direct {v1, v10, v11, v13, v14}, Lcom/join/mgps/activity/SplashActivity;->D(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-nez v10, :cond_1

    .line 120
    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :cond_1
    invoke-virtual {v8}, Lcom/join/mgps/dto/ShowViewDataBean;->getIs_force()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-nez v10, :cond_2

    .line 132
    .line 133
    invoke-virtual {v8}, Lcom/join/mgps/dto/ShowViewDataBean;->getIs_force()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    const-string v11, "1"

    .line 138
    .line 139
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    if-eqz v10, :cond_2

    .line 144
    .line 145
    invoke-virtual {v8}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    const/4 v10, 0x0

    .line 150
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    move-object/from16 v19, v9

    .line 155
    .line 156
    check-cast v19, Lcom/join/mgps/dto/SplashIntentBean;

    .line 157
    .line 158
    move-object v9, v8

    .line 159
    move-object/from16 v10, v19

    .line 160
    .line 161
    const/4 v8, 0x1

    .line 162
    goto/16 :goto_7

    .line 163
    .line 164
    :cond_2
    invoke-virtual {v8}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    if-eqz v10, :cond_a

    .line 169
    .line 170
    invoke-virtual {v8}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    if-eqz v10, :cond_3

    .line 179
    .line 180
    goto/16 :goto_5

    .line 181
    .line 182
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    move-object/from16 v20, v9

    .line 188
    .line 189
    const/4 v11, 0x5

    .line 190
    new-array v9, v11, [Ljava/lang/String;

    .line 191
    .line 192
    const/4 v11, 0x0

    .line 193
    aput-object v7, v9, v11

    .line 194
    .line 195
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    const/16 v18, 0x1

    .line 204
    .line 205
    aput-object v11, v9, v18

    .line 206
    .line 207
    const/4 v11, 0x2

    .line 208
    aput-object v6, v9, v11

    .line 209
    .line 210
    const-string v11, "222 - bbb"

    .line 211
    .line 212
    const/16 v17, 0x3

    .line 213
    .line 214
    aput-object v11, v9, v17

    .line 215
    .line 216
    move v11, v15

    .line 217
    const/16 v16, 0x4

    .line 218
    .line 219
    aput-object v5, v9, v16

    .line 220
    .line 221
    invoke-static {v9}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v8}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    move-object/from16 v15, v19

    .line 233
    .line 234
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v19

    .line 238
    if-eqz v19, :cond_7

    .line 239
    .line 240
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v19

    .line 244
    move-object/from16 v21, v8

    .line 245
    .line 246
    move-object/from16 v8, v19

    .line 247
    .line 248
    check-cast v8, Lcom/join/mgps/dto/SplashIntentBean;

    .line 249
    .line 250
    move-object/from16 v22, v9

    .line 251
    .line 252
    invoke-virtual {v8}, Lcom/join/mgps/dto/SplashIntentBean;->getTag_show()I

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    move-wide/from16 v23, v13

    .line 257
    .line 258
    const/4 v13, 0x2

    .line 259
    if-ne v9, v13, :cond_4

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_4
    invoke-virtual {v8}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url_local()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    invoke-static {v12, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    if-nez v9, :cond_6

    .line 271
    .line 272
    invoke-virtual {v8}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote_local()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    invoke-static {v12, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    if-eqz v9, :cond_5

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_5
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    :goto_2
    move-object/from16 v8, v21

    .line 287
    .line 288
    move-object/from16 v9, v22

    .line 289
    .line 290
    move-wide/from16 v13, v23

    .line 291
    .line 292
    goto :goto_1

    .line 293
    :cond_6
    :goto_3
    move-object v15, v8

    .line 294
    goto :goto_2

    .line 295
    :cond_7
    move-object/from16 v21, v8

    .line 296
    .line 297
    move-wide/from16 v23, v13

    .line 298
    .line 299
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 300
    .line 301
    .line 302
    move-result v8

    .line 303
    if-eqz v8, :cond_8

    .line 304
    .line 305
    if-eqz v15, :cond_8

    .line 306
    .line 307
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    :cond_8
    const/4 v8, 0x5

    .line 311
    new-array v9, v8, [Ljava/lang/String;

    .line 312
    .line 313
    const/4 v8, 0x0

    .line 314
    aput-object v7, v9, v8

    .line 315
    .line 316
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    move-result-object v8

    .line 320
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v8

    .line 324
    const/4 v13, 0x1

    .line 325
    aput-object v8, v9, v13

    .line 326
    .line 327
    const/4 v8, 0x2

    .line 328
    aput-object v6, v9, v8

    .line 329
    .line 330
    const-string v8, "222 - ccc"

    .line 331
    .line 332
    const/4 v13, 0x3

    .line 333
    aput-object v8, v9, v13

    .line 334
    .line 335
    const/4 v8, 0x4

    .line 336
    aput-object v5, v9, v8

    .line 337
    .line 338
    invoke-static {v9}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    if-nez v8, :cond_b

    .line 346
    .line 347
    new-instance v8, Ljava/util/Random;

    .line 348
    .line 349
    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 353
    .line 354
    .line 355
    move-result v9

    .line 356
    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    .line 357
    .line 358
    .line 359
    move-result v8

    .line 360
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v9

    .line 364
    check-cast v9, Lcom/join/mgps/dto/SplashIntentBean;

    .line 365
    .line 366
    const/4 v10, 0x1

    .line 367
    add-int/2addr v8, v10

    .line 368
    invoke-virtual {v9, v8}, Lcom/join/mgps/dto/SplashIntentBean;->setShowPosition(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v9}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url_local()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 376
    .line 377
    .line 378
    move-result v8

    .line 379
    if-nez v8, :cond_9

    .line 380
    .line 381
    iget-object v8, v1, Lcom/join/mgps/activity/SplashActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 382
    .line 383
    invoke-virtual {v8}, Lcom/join/mgps/pref/PrefDef_;->lastShowSplashImage()Lorg/androidannotations/api/sharedpreferences/p;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    invoke-virtual {v9}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url_local()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v10

    .line 391
    invoke-virtual {v8, v10}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    goto :goto_4

    .line 395
    :cond_9
    iget-object v8, v1, Lcom/join/mgps/activity/SplashActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 396
    .line 397
    invoke-virtual {v8}, Lcom/join/mgps/pref/PrefDef_;->lastShowSplashImage()Lorg/androidannotations/api/sharedpreferences/p;

    .line 398
    .line 399
    .line 400
    move-result-object v8

    .line 401
    invoke-virtual {v9}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote_local()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v10

    .line 405
    invoke-virtual {v8, v10}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    :goto_4
    move-object v10, v9

    .line 409
    move-object/from16 v9, v21

    .line 410
    .line 411
    goto :goto_6

    .line 412
    :cond_a
    :goto_5
    move-object/from16 v20, v9

    .line 413
    .line 414
    move-wide/from16 v23, v13

    .line 415
    .line 416
    move v11, v15

    .line 417
    :cond_b
    add-int/lit8 v8, v11, 0x1

    .line 418
    .line 419
    move v15, v8

    .line 420
    move-object/from16 v9, v20

    .line 421
    .line 422
    move-wide/from16 v13, v23

    .line 423
    .line 424
    const/4 v10, 0x0

    .line 425
    const/4 v11, 0x2

    .line 426
    goto/16 :goto_0

    .line 427
    .line 428
    :cond_c
    move-object/from16 v9, v19

    .line 429
    .line 430
    move-object v10, v9

    .line 431
    :goto_6
    const/4 v8, 0x0

    .line 432
    :goto_7
    const/4 v11, 0x5

    .line 433
    new-array v12, v11, [Ljava/lang/String;

    .line 434
    .line 435
    const/4 v11, 0x0

    .line 436
    aput-object v7, v12, v11

    .line 437
    .line 438
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    move-result-object v11

    .line 442
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v11

    .line 446
    const/4 v13, 0x1

    .line 447
    aput-object v11, v12, v13

    .line 448
    .line 449
    const/4 v11, 0x2

    .line 450
    aput-object v6, v12, v11

    .line 451
    .line 452
    const-string v11, "333"

    .line 453
    .line 454
    const/4 v13, 0x3

    .line 455
    aput-object v11, v12, v13

    .line 456
    .line 457
    const/4 v11, 0x4

    .line 458
    aput-object v5, v12, v11

    .line 459
    .line 460
    invoke-static {v12}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .line 462
    .line 463
    const-string v11, "after"

    .line 464
    .line 465
    if-eqz v8, :cond_10

    .line 466
    .line 467
    if-nez v10, :cond_d

    .line 468
    .line 469
    return-void

    .line 470
    :cond_d
    :try_start_1
    invoke-virtual {v10}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    if-nez v3, :cond_e

    .line 479
    .line 480
    const/4 v3, 0x5

    .line 481
    new-array v2, v3, [Ljava/lang/String;

    .line 482
    .line 483
    const/4 v3, 0x0

    .line 484
    aput-object v7, v2, v3

    .line 485
    .line 486
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    const/4 v4, 0x1

    .line 495
    aput-object v3, v2, v4

    .line 496
    .line 497
    const/4 v3, 0x2

    .line 498
    aput-object v6, v2, v3

    .line 499
    .line 500
    const/4 v3, 0x3

    .line 501
    aput-object v0, v2, v3

    .line 502
    .line 503
    const/4 v3, 0x4

    .line 504
    aput-object v5, v2, v3

    .line 505
    .line 506
    invoke-static {v2}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1, v9, v10}, Lcom/join/mgps/activity/SplashActivity;->a0(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    .line 510
    .line 511
    .line 512
    const/4 v2, 0x5

    .line 513
    new-array v3, v2, [Ljava/lang/String;

    .line 514
    .line 515
    const/4 v2, 0x0

    .line 516
    aput-object v7, v3, v2

    .line 517
    .line 518
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    const/4 v4, 0x1

    .line 527
    aput-object v2, v3, v4

    .line 528
    .line 529
    const/4 v2, 0x2

    .line 530
    aput-object v6, v3, v2

    .line 531
    .line 532
    const/4 v2, 0x3

    .line 533
    aput-object v0, v3, v2

    .line 534
    .line 535
    const/4 v0, 0x4

    .line 536
    aput-object v11, v3, v0

    .line 537
    .line 538
    invoke-static {v3}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    goto :goto_8

    .line 542
    :cond_e
    const/4 v0, 0x5

    .line 543
    new-array v3, v0, [Ljava/lang/String;

    .line 544
    .line 545
    const/4 v0, 0x0

    .line 546
    aput-object v7, v3, v0

    .line 547
    .line 548
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    const/4 v4, 0x1

    .line 557
    aput-object v0, v3, v4

    .line 558
    .line 559
    const/4 v0, 0x2

    .line 560
    aput-object v6, v3, v0

    .line 561
    .line 562
    const/4 v0, 0x3

    .line 563
    aput-object v2, v3, v0

    .line 564
    .line 565
    const/4 v0, 0x4

    .line 566
    aput-object v5, v3, v0

    .line 567
    .line 568
    invoke-static {v3}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v1, v9, v10}, Lcom/join/mgps/activity/SplashActivity;->Y(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    .line 572
    .line 573
    .line 574
    const/4 v0, 0x5

    .line 575
    new-array v3, v0, [Ljava/lang/String;

    .line 576
    .line 577
    const/4 v0, 0x0

    .line 578
    aput-object v7, v3, v0

    .line 579
    .line 580
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    const/4 v4, 0x1

    .line 589
    aput-object v0, v3, v4

    .line 590
    .line 591
    const/4 v0, 0x2

    .line 592
    aput-object v6, v3, v0

    .line 593
    .line 594
    const/4 v0, 0x3

    .line 595
    aput-object v2, v3, v0

    .line 596
    .line 597
    const/4 v0, 0x4

    .line 598
    aput-object v11, v3, v0

    .line 599
    .line 600
    invoke-static {v3}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    :goto_8
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    if-nez v0, :cond_f

    .line 608
    .line 609
    const/4 v0, 0x2

    .line 610
    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/ShowViewDataBean;->setTag_show(I)V

    .line 611
    .line 612
    .line 613
    invoke-direct {v1, v9}, Lcom/join/mgps/activity/SplashActivity;->W(Lcom/join/mgps/dto/ShowViewDataBean;)V

    .line 614
    .line 615
    .line 616
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/SplashActivity;->E()Z

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    iget-object v2, v1, Lcom/join/mgps/activity/SplashActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 621
    .line 622
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->isShowSplash()Lorg/androidannotations/api/sharedpreferences/d;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-virtual {v2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 631
    .line 632
    .line 633
    goto/16 :goto_a

    .line 634
    .line 635
    :cond_f
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    const/4 v2, 0x1

    .line 640
    if-ne v0, v2, :cond_13

    .line 641
    .line 642
    invoke-direct {v1, v9}, Lcom/join/mgps/activity/SplashActivity;->W(Lcom/join/mgps/dto/ShowViewDataBean;)V

    .line 643
    .line 644
    .line 645
    goto/16 :goto_a

    .line 646
    .line 647
    :cond_10
    if-eqz v9, :cond_12

    .line 648
    .line 649
    invoke-virtual {v10}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    if-nez v0, :cond_11

    .line 658
    .line 659
    const/4 v0, 0x5

    .line 660
    new-array v2, v0, [Ljava/lang/String;

    .line 661
    .line 662
    const/4 v0, 0x0

    .line 663
    aput-object v7, v2, v0

    .line 664
    .line 665
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    const/4 v4, 0x1

    .line 674
    aput-object v0, v2, v4

    .line 675
    .line 676
    const/4 v0, 0x2

    .line 677
    aput-object v6, v2, v0

    .line 678
    .line 679
    const/4 v0, 0x3

    .line 680
    aput-object v3, v2, v0

    .line 681
    .line 682
    const/4 v0, 0x4

    .line 683
    aput-object v5, v2, v0

    .line 684
    .line 685
    invoke-static {v2}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v1, v9, v10}, Lcom/join/mgps/activity/SplashActivity;->a0(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    .line 689
    .line 690
    .line 691
    const/4 v0, 0x5

    .line 692
    new-array v2, v0, [Ljava/lang/String;

    .line 693
    .line 694
    const/4 v0, 0x0

    .line 695
    aput-object v7, v2, v0

    .line 696
    .line 697
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    const/4 v4, 0x1

    .line 706
    aput-object v0, v2, v4

    .line 707
    .line 708
    const/4 v0, 0x2

    .line 709
    aput-object v6, v2, v0

    .line 710
    .line 711
    const/4 v0, 0x3

    .line 712
    aput-object v3, v2, v0

    .line 713
    .line 714
    const/4 v0, 0x4

    .line 715
    aput-object v11, v2, v0

    .line 716
    .line 717
    invoke-static {v2}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    goto :goto_9

    .line 721
    :cond_11
    const/4 v0, 0x5

    .line 722
    new-array v2, v0, [Ljava/lang/String;

    .line 723
    .line 724
    const/4 v0, 0x0

    .line 725
    aput-object v7, v2, v0

    .line 726
    .line 727
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    const/4 v3, 0x1

    .line 736
    aput-object v0, v2, v3

    .line 737
    .line 738
    const/4 v0, 0x2

    .line 739
    aput-object v6, v2, v0

    .line 740
    .line 741
    const/4 v0, 0x3

    .line 742
    aput-object v4, v2, v0

    .line 743
    .line 744
    const/4 v0, 0x4

    .line 745
    aput-object v5, v2, v0

    .line 746
    .line 747
    invoke-static {v2}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v1, v9, v10}, Lcom/join/mgps/activity/SplashActivity;->Y(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    .line 751
    .line 752
    .line 753
    const/4 v0, 0x5

    .line 754
    new-array v2, v0, [Ljava/lang/String;

    .line 755
    .line 756
    const/4 v0, 0x0

    .line 757
    aput-object v7, v2, v0

    .line 758
    .line 759
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    const/4 v3, 0x1

    .line 768
    aput-object v0, v2, v3

    .line 769
    .line 770
    const/4 v0, 0x2

    .line 771
    aput-object v6, v2, v0

    .line 772
    .line 773
    const/4 v0, 0x3

    .line 774
    aput-object v4, v2, v0

    .line 775
    .line 776
    const/4 v0, 0x4

    .line 777
    aput-object v11, v2, v0

    .line 778
    .line 779
    invoke-static {v2}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 783
    .line 784
    .line 785
    move-result-wide v2

    .line 786
    invoke-virtual {v10, v2, v3}, Lcom/join/mgps/dto/SplashIntentBean;->setShow_time(J)V

    .line 787
    .line 788
    .line 789
    invoke-direct {v1, v9}, Lcom/join/mgps/activity/SplashActivity;->W(Lcom/join/mgps/dto/ShowViewDataBean;)V

    .line 790
    .line 791
    .line 792
    goto :goto_a

    .line 793
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 794
    .line 795
    .line 796
    :cond_13
    :goto_a
    const/4 v0, 0x5

    .line 797
    new-array v0, v0, [Ljava/lang/String;

    .line 798
    .line 799
    const/4 v2, 0x0

    .line 800
    aput-object v7, v0, v2

    .line 801
    .line 802
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    .line 804
    .line 805
    move-result-object v2

    .line 806
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v2

    .line 810
    const/4 v3, 0x1

    .line 811
    aput-object v2, v0, v3

    .line 812
    .line 813
    const/4 v2, 0x2

    .line 814
    aput-object v6, v0, v2

    .line 815
    .line 816
    const-string v2, "444"

    .line 817
    .line 818
    const/4 v3, 0x3

    .line 819
    aput-object v2, v0, v3

    .line 820
    .line 821
    const/4 v2, 0x4

    .line 822
    aput-object v5, v0, v2

    .line 823
    .line 824
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    goto :goto_c

    .line 828
    :cond_14
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 829
    .line 830
    .line 831
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 834
    .line 835
    .line 836
    const-string v2, "Aspect"

    .line 837
    .line 838
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 839
    .line 840
    .line 841
    move-result-object v3

    .line 842
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    const-string v4, "getImageBitmap"

    .line 847
    .line 848
    const-string v5, "555"

    .line 849
    .line 850
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v6

    .line 854
    const-string v7, "before"

    .line 855
    .line 856
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    :goto_c
    return-void
.end method

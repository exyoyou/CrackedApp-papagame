.class Lcom/join/mgps/activity/CloudGameZoneActivity$c;
.super Lcom/kongzue/dialogx/interfaces/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudGameZoneActivity;->showLastLaunchCloudGame(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/s<",
        "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
        "Lcom/join/android/app/mgsim/wufun/databinding/je;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/dto/ExtBean;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/activity/CloudGameZoneActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudGameZoneActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/ExtBean;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$task",
            "val$extBean",
            "val$gameId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->d:Lcom/join/mgps/activity/CloudGameZoneActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->b:Lcom/join/mgps/dto/ExtBean;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/s;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic h(Lcom/join/mgps/activity/CloudGameZoneActivity$c;Lcom/join/mgps/dto/ExtBean;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->k(Lcom/join/mgps/dto/ExtBean;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/join/mgps/activity/CloudGameZoneActivity$c;Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/join/mgps/dto/ExtBean;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->j(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/join/mgps/dto/ExtBean;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private synthetic j(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/join/mgps/dto/ExtBean;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->d:Lcom/join/mgps/activity/CloudGameZoneActivity;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object p4, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGame:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, p4, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/join/mgps/Util/w0;->h()Lcom/join/mgps/Util/w0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p4, p0, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->d:Lcom/join/mgps/activity/CloudGameZoneActivity;

    .line 42
    .line 43
    invoke-static {p4}, Lcom/join/mgps/activity/CloudGameZoneActivity;->access$500(Lcom/join/mgps/activity/CloudGameZoneActivity;)Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, p4, p3, p2}, Lcom/join/mgps/Util/w0;->s(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private synthetic k(Lcom/join/mgps/dto/ExtBean;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->d:Lcom/join/mgps/activity/CloudGameZoneActivity;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->btnClose:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p3, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public l(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;Lcom/join/android/app/mgsim/wufun/databinding/je;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "v",
            "binding"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/je;->B(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/je;->C(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "<font color=\'#999999\'>\u4e0a\u6b21\u8fdb\u5ea6\u65f6\u95f4\uff1a</font>"

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->d:Lcom/join/mgps/activity/CloudGameZoneActivity;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/join/mgps/activity/CloudGameZoneActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchCloudGameTipTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    invoke-static {v0, v1}, Lcom/join/mgps/Util/e0;->I(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/je;->D(Landroid/text/Spanned;)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->d:Lcom/join/mgps/activity/CloudGameZoneActivity;

    .line 66
    .line 67
    iget-object p2, p2, Lcom/join/mgps/activity/CloudGameZoneActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchCloudGameTipTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Ljava/lang/Long;

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    const-wide/16 v2, 0x0

    .line 84
    .line 85
    cmp-long p2, v0, v2

    .line 86
    .line 87
    if-lez p2, :cond_0

    .line 88
    .line 89
    const/4 p2, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    const/4 p2, 0x0

    .line 92
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/je;->E(Ljava/lang/Boolean;)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/je;->e:Landroid/widget/LinearLayout;

    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->b:Lcom/join/mgps/dto/ExtBean;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->c:Ljava/lang/String;

    .line 104
    .line 105
    new-instance v2, Lcom/join/mgps/activity/d0;

    .line 106
    .line 107
    invoke-direct {v2, p0, p1, v0, v1}, Lcom/join/mgps/activity/d0;-><init>(Lcom/join/mgps/activity/CloudGameZoneActivity$c;Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/join/mgps/dto/ExtBean;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/je;->d:Landroid/widget/ImageView;

    .line 114
    .line 115
    iget-object p3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->b:Lcom/join/mgps/dto/ExtBean;

    .line 116
    .line 117
    new-instance v0, Lcom/join/mgps/activity/e0;

    .line 118
    .line 119
    invoke-direct {v0, p0, p3, p1}, Lcom/join/mgps/activity/e0;-><init>(Lcom/join/mgps/activity/CloudGameZoneActivity$c;Lcom/join/mgps/dto/ExtBean;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;Landroid/view/View;Landroidx/viewbinding/ViewBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "dialog",
            "v",
            "binding"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    check-cast p3, Lcom/join/android/app/mgsim/wufun/databinding/je;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->l(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;Lcom/join/android/app/mgsim/wufun/databinding/je;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

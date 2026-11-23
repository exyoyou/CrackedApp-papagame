.class public Lcom/join/mgps/activity/CloudActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CloudActivity$i;,
        Lcom/join/mgps/activity/CloudActivity$j;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0146
.end annotation


# instance fields
.field adapter:Lcom/join/mgps/activity/CloudActivity$i;

.field breakUpload:Z

.field cloudInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudInfo;",
            ">;"
        }
    .end annotation
.end field

.field cloudPassDialog:Lcom/join/mgps/dialog/z;

.field downloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field i:I

.field isRunning:Z

.field listview:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field noUpdateRom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field ok:I

.field result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudInfo;",
            ">;"
        }
    .end annotation
.end field

.field rid:I

.field rpcAccountClient:Lcom/join/mgps/rpc/l;

.field select_txt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field showFirst:Z

.field sub:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field updataFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->map:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->noUpdateRom:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->updataFiles:Ljava/util/Map;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/join/mgps/activity/CloudActivity;->i:I

    .line 27
    .line 28
    iput v0, p0, Lcom/join/mgps/activity/CloudActivity;->ok:I

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudActivity;->breakUpload:Z

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method afterView()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->rpcAccountClient:Lcom/join/mgps/rpc/l;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudActivity;->updateBtn()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->result:Ljava/util/List;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudInfos:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lq5/f;->u()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->downloadTasks:Ljava/util/List;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->downloadTasks:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ge v0, v1, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->downloadTasks:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 50
    .line 51
    new-instance v2, Lcom/join/mgps/dto/CloudInfo;

    .line 52
    .line 53
    invoke-direct {v2}, Lcom/join/mgps/dto/CloudInfo;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/CloudInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v3, v1}, Lcom/join/mgps/Util/o3;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/CloudInfo;->setRomArchiveds(Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CloudInfo;->setRomArchivedNum(I)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-wide/16 v3, 0x0

    .line 86
    .line 87
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_0

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Lcom/join/mgps/dto/RomArchived;

    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/join/mgps/dto/RomArchived;->getSize()J

    .line 100
    .line 101
    .line 102
    move-result-wide v5

    .line 103
    add-long/2addr v3, v5

    .line 104
    goto :goto_1

    .line 105
    :cond_0
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/CloudInfo;->setRomArchivedSize(J)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->cloudInfos:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudInfos:Ljava/util/List;

    .line 117
    .line 118
    new-instance v1, Lcom/join/mgps/activity/CloudActivity$j;

    .line 119
    .line 120
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CloudActivity$j;-><init>(Lcom/join/mgps/activity/CloudActivity;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Lcom/join/mgps/activity/CloudActivity$i;

    .line 127
    .line 128
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudActivity$i;-><init>(Lcom/join/mgps/activity/CloudActivity;)V

    .line 129
    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->adapter:Lcom/join/mgps/activity/CloudActivity$i;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->listview:Landroid/widget/ListView;

    .line 134
    .line 135
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public myPercent(II)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "y",
            "z"
        }
    .end annotation

    .line 1
    int-to-double v0, p1

    .line 2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 3
    .line 4
    mul-double v0, v0, v2

    .line 5
    .line 6
    int-to-double p1, p2

    .line 7
    mul-double p1, p1, v2

    .line 8
    .line 9
    div-double/2addr v0, p1

    .line 10
    new-instance p1, Ljava/text/DecimalFormat;

    .line 11
    .line 12
    const-string p2, "##%"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method select_txt()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/CloudActivity;->i:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->select_txt:Landroid/widget/TextView;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "\u9009\u62e9"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const-string v3, "\u53d6\u6d88"

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudInfos:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/join/mgps/dto/CloudInfo;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CloudInfo;->setSelect(Z)V

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lcom/join/mgps/activity/CloudActivity;->i:I

    .line 51
    .line 52
    add-int/2addr v1, v2

    .line 53
    iput v1, p0, Lcom/join/mgps/activity/CloudActivity;->i:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->select_txt:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->select_txt:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->cloudInfos:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_2

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lcom/join/mgps/dto/CloudInfo;

    .line 99
    .line 100
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/CloudInfo;->setSelect(Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    iput v0, p0, Lcom/join/mgps/activity/CloudActivity;->i:I

    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->select_txt:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudActivity;->updateBtn()V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method showFirstDialog()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudActivity;->isRunning:Z

    .line 3
    .line 4
    const-string v0, "showFirst"

    .line 5
    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/r2;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudActivity;->showFirst:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lcom/join/mgps/dialog/v;

    .line 21
    .line 22
    const v1, 0x7f1301b0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/v;-><init>(Landroid/content/Context;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 29
    .line 30
    .line 31
    const v1, 0x7f0a02f5

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/widget/TextView;

    .line 39
    .line 40
    const v2, 0x7f0a1188

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/widget/TextView;

    .line 48
    .line 49
    const v3, 0x7f0a03bd

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/widget/ImageView;

    .line 57
    .line 58
    iget-boolean v4, p0, Lcom/join/mgps/activity/CloudActivity;->showFirst:Z

    .line 59
    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    const v4, 0x7f080439

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const v4, 0x7f080438

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    .line 74
    .line 75
    :goto_0
    new-instance v4, Lcom/join/mgps/activity/CloudActivity$a;

    .line 76
    .line 77
    invoke-direct {v4, p0, v3}, Lcom/join/mgps/activity/CloudActivity$a;-><init>(Lcom/join/mgps/activity/CloudActivity;Landroid/widget/ImageView;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    new-instance v3, Lcom/join/mgps/activity/CloudActivity$b;

    .line 84
    .line 85
    invoke-direct {v3, p0, v0}, Lcom/join/mgps/activity/CloudActivity$b;-><init>(Lcom/join/mgps/activity/CloudActivity;Lcom/join/mgps/dialog/v;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/join/mgps/activity/CloudActivity$c;

    .line 92
    .line 93
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/CloudActivity$c;-><init>(Lcom/join/mgps/activity/CloudActivity;Lcom/join/mgps/dialog/v;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudActivity;->zip()V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void
.end method

.method showUploadDialog()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/z;

    .line 2
    .line 3
    const v1, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/z;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 15
    .line 16
    const-string v1, "80%"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 22
    .line 23
    const-string v1, "\u4e2d\u65ad\u4e0b\u8f7d"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->d(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 29
    .line 30
    const-string v1, "\u5b58\u6863\u4e0b\u8f7d\u4e2d\uff0c\u8bf7\u52ff\u4e2d\u65ad\u7f51\u7edc"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->f(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 36
    .line 37
    const v1, 0x7f080437

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->c(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method showUploadDialogNum(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "count"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/z;

    .line 12
    .line 13
    const v1, 0x7f1301b0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/z;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/CloudActivity;->myPercent(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/z;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 34
    .line 35
    const-string p2, "\u4e2d\u65ad\u5907\u4efd"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/z;->d(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 41
    .line 42
    const-string p2, "\u5b58\u6863\u5907\u4efd\u4e2d\uff0c\u8bf7\u52ff\u4e2d\u65ad\u7f51\u7edc"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/z;->f(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 48
    .line 49
    const p2, 0x7f080437

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/z;->c(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 56
    .line 57
    new-instance p2, Lcom/join/mgps/activity/CloudActivity$d;

    .line 58
    .line 59
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/CloudActivity$d;-><init>(Lcom/join/mgps/activity/CloudActivity;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/z;->e(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method showUploadDialogStop(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "all"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/z;

    .line 12
    .line 13
    const v1, 0x7f1301b0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/z;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/CloudActivity;->myPercent(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {v0, p2}, Lcom/join/mgps/dialog/z;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 34
    .line 35
    const-string v0, "\u5b8c\u6210"

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Lcom/join/mgps/dialog/z;->d(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v1, "\u4f20\u8f93\u4e2d\u65ad\uff0c\u5df2\u4f20\u8f93"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, "\u4e2a\u5b58\u6863"

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p2, p1}, Lcom/join/mgps/dialog/z;->f(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 68
    .line 69
    const p2, 0x7f080434

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/z;->c(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 76
    .line 77
    new-instance p2, Lcom/join/mgps/activity/CloudActivity$e;

    .line 78
    .line 79
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/CloudActivity$e;-><init>(Lcom/join/mgps/activity/CloudActivity;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/z;->e(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method showUploadDialogSuccess()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->b(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 9
    .line 10
    const v1, 0x7f080435

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->c(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 17
    .line 18
    const-string v1, "\u6210\u529f\u5907\u4efd\u5b58\u6863"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->f(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 24
    .line 25
    const-string v1, "\u5b8c\u6210"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->d(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudPassDialog:Lcom/join/mgps/dialog/z;

    .line 31
    .line 32
    new-instance v1, Lcom/join/mgps/activity/CloudActivity$f;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CloudActivity$f;-><init>(Lcom/join/mgps/activity/CloudActivity;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->e(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method sub()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/CloudActivity;->isRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudActivity;->showFirstDialog()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public syncUpLoadInfo(Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "cloudUploadInfo",
            "file"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/join/mgps/activity/CloudActivity$h;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CloudActivity$h;-><init>(Lcom/join/mgps/activity/CloudActivity;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/join/android/app/common/http/h;->e(Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;Lcom/join/android/app/common/http/b;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method upLoad()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/CloudActivity;->ok:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->updataFiles:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CloudActivity;->showUploadDialogNum(II)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    .line 14
    .line 15
    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "uid"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "token"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ""

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "brand_name"

    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->rpcAccountClient:Lcom/join/mgps/rpc/l;

    .line 79
    .line 80
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/l;->z(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getError()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_1

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getData()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/join/mgps/dto/CloudCreateInfo;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudCreateInfo;->getRid()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    iput v1, p0, Lcom/join/mgps/activity/CloudActivity;->rid:I

    .line 101
    .line 102
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->updataFiles:Ljava/util/Map;

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_1

    .line 117
    .line 118
    iget-boolean v2, p0, Lcom/join/mgps/activity/CloudActivity;->breakUpload:Z

    .line 119
    .line 120
    if-eqz v2, :cond_0

    .line 121
    .line 122
    iget v0, p0, Lcom/join/mgps/activity/CloudActivity;->ok:I

    .line 123
    .line 124
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->updataFiles:Ljava/util/Map;

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CloudActivity;->showUploadDialogStop(II)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Ljava/lang/String;

    .line 139
    .line 140
    iget-object v3, p0, Lcom/join/mgps/activity/CloudActivity;->updataFiles:Ljava/util/Map;

    .line 141
    .line 142
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Ljava/io/File;

    .line 147
    .line 148
    new-instance v4, Lcom/join/mgps/dto/CloudUploadInfo;

    .line 149
    .line 150
    invoke-direct {v4}, Lcom/join/mgps/dto/CloudUploadInfo;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-static {v5}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CloudUploadInfo;->setUid(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudCreateInfo;->getRid()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CloudUploadInfo;->setRid(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-static {v5}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CloudUploadInfo;->setToken(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/CloudUploadInfo;->setGame_id(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    new-instance v5, Lcom/join/mgps/activity/CloudActivity$g;

    .line 202
    .line 203
    invoke-direct {v5, p0}, Lcom/join/mgps/activity/CloudActivity$g;-><init>(Lcom/join/mgps/activity/CloudActivity;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, p0, v4, v3, v5}, Lcom/join/android/app/common/http/h;->e(Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;Lcom/join/android/app/common/http/b;)V

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_1
    :goto_1
    return-void
.end method

.method updateBtn()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->adapter:Lcom/join/mgps/activity/CloudActivity$i;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/join/mgps/activity/CloudActivity;->i:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->sub:Landroid/widget/Button;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->sub:Landroid/widget/Button;

    .line 17
    .line 18
    const-string v1, "\u672a\u9009\u4e2d\u4efb\u4f55\u5b58\u6863"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->sub:Landroid/widget/Button;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudInfos:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/join/mgps/dto/CloudInfo;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudInfo;->isSelect()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->sub:Landroid/widget/Button;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "\u5907\u4efd\u5b58\u6863\uff08\u5df2\u9009\u4e2d"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, "\u6b3e\u6e38\u620f)"

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    return-void
.end method

.method uploadSuccess()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "uid"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "token"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget v2, p0, Lcom/join/mgps/activity/CloudActivity;->rid:I

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, ""

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "rid"

    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->rpcAccountClient:Lcom/join/mgps/rpc/l;

    .line 65
    .line 66
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/l;->u(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getData()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/join/mgps/dto/CloudStatus;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudStatus;->getStatus()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "ok"

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_0

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudActivity;->showUploadDialogSuccess()V

    .line 89
    .line 90
    .line 91
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v2, "status----"

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudStatus;->getStatus()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->g(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method zip()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->result:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->cloudInfos:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/join/mgps/dto/CloudInfo;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudInfo;->isSelect()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/CloudActivity;->result:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->updataFiles:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->result:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_8

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/join/mgps/dto/CloudInfo;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v2, v3}, Lcom/join/mgps/Util/o3;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const/4 v4, 0x0

    .line 85
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_5

    .line 90
    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Lcom/join/mgps/dto/RomArchived;

    .line 96
    .line 97
    new-instance v6, Ljava/io/File;

    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v7, Ljava/io/File;

    .line 107
    .line 108
    invoke-virtual {v5}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v6}, Lcom/join/mgps/Util/r;->a(Ljava/io/File;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v8

    .line 119
    iget-object v5, p0, Lcom/join/mgps/activity/CloudActivity;->noUpdateRom:Ljava/util/List;

    .line 120
    .line 121
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_4

    .line 130
    .line 131
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_4
    if-nez v4, :cond_3

    .line 138
    .line 139
    new-instance v4, Ljava/io/File;

    .line 140
    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v6, ".zip"

    .line 170
    .line 171
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_5
    if-eqz v4, :cond_2

    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_6

    .line 189
    .line 190
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 191
    .line 192
    .line 193
    :cond_6
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-lez v2, :cond_7

    .line 198
    .line 199
    const-string v2, ""

    .line 200
    .line 201
    invoke-static {v3, v4, v2}, Lcom/join/mgps/Util/s3;->m(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v2, p0, Lcom/join/mgps/activity/CloudActivity;->updataFiles:Ljava/util/Map;

    .line 205
    .line 206
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudActivity;->upLoad()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .line 215
    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    :catch_0
    move-exception v1

    .line 219
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :cond_8
    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudActivity;->isRunning:Z

    .line 226
    .line 227
    return-void
.end method

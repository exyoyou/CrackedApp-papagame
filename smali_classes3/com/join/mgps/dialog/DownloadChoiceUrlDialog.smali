.class public Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d024d
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field downloadUrlBeans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isLocalShow:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method afterview()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->context:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x7f0a00c3

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const v1, 0x7f0a177f

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/TextView;

    .line 20
    .line 21
    const-string v2, "\u9009\u62e9\u4e0b\u8f7d\u6e90"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    const v1, 0x7f0a02fd

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/widget/TextView;

    .line 34
    .line 35
    const v2, 0x7f0a1188

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroid/widget/TextView;

    .line 43
    .line 44
    new-instance v3, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$a;

    .line 45
    .line 46
    invoke-direct {v3, p0}, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$a;-><init>(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;-><init>(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->downloadUrlBeans:Ljava/util/ArrayList;

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->downloadUrlBeans:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Lcom/join/mgps/dto/DownloadUrlBean;

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadUrlBean;->getDown_url_type()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    const/4 v5, 0x1

    .line 91
    if-ne v4, v5, :cond_0

    .line 92
    .line 93
    iget-boolean v4, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->isLocalShow:Z

    .line 94
    .line 95
    if-nez v4, :cond_0

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const v4, 0x7f0d024c

    .line 99
    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const v5, 0x7f0a0508

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Landroid/widget/TextView;

    .line 114
    .line 115
    const v6, 0x7f0a0f88

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadUrlBean;->getDown_source_name()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    new-instance v5, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;

    .line 132
    .line 133
    invoke-direct {v5, p0, v3}, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;-><init>(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;Lcom/join/mgps/dto/DownloadUrlBean;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_1
    return-void
.end method

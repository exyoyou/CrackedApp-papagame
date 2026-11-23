.class public Lcom/join/mgps/activity/SearchListActivity1$k;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/SearchListActivity1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SearchListActivity1$k$d;,
        Lcom/join/mgps/activity/SearchListActivity1$k$c;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/join/mgps/activity/SearchListActivity1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/SearchListActivity1;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->e:Lcom/join/mgps/activity/SearchListActivity1;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/activity/SearchListActivity1;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "searchAutoDataBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->e:Lcom/join/mgps/activity/SearchListActivity1;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->b:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->d:Ljava/util/List;

    .line 6
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/SearchListActivity1$k;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/SearchListActivity1$k;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "searchKeyword"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    .line 16
    const-string v1, "103"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ExtBean;->setLocation(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "convertView",
            "viewGroup"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->c:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    const p3, 0x7f0d0852

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance p3, Lcom/join/mgps/activity/SearchListActivity1$k$c;

    .line 14
    .line 15
    invoke-direct {p3, p0}, Lcom/join/mgps/activity/SearchListActivity1$k$c;-><init>(Lcom/join/mgps/activity/SearchListActivity1$k;)V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a0fd0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object v0, p3, Lcom/join/mgps/activity/SearchListActivity1$k$c;->a:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Lcom/join/mgps/activity/SearchListActivity1$k$c;

    .line 38
    .line 39
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->d:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p3, p3, Lcom/join/mgps/activity/SearchListActivity1$k$c;->a:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    return-object p2
.end method

.method public e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "convertView",
            "viewGroup"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->c:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    const p3, 0x7f0d0851

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;

    .line 14
    .line 15
    invoke-direct {p3, p0, v0}, Lcom/join/mgps/activity/SearchListActivity1$k$d;-><init>(Lcom/join/mgps/activity/SearchListActivity1$k;Lcom/join/mgps/activity/SearchListActivity1$b;)V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a0fd0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object v0, p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;->d:Landroid/widget/TextView;

    .line 28
    .line 29
    const v0, 0x7f0a04ee

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/ImageView;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;->b:Landroid/widget/ImageView;

    .line 39
    .line 40
    const v0, 0x7f0a13b2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;->c:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    check-cast p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;

    .line 58
    .line 59
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->d:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchAutoDataBean;->getGame_name()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;->d:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchAutoDataBean;->getIsHistory()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object v0, p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;->b:Landroid/widget/ImageView;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/4 v1, 0x0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    iget-object v0, p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;->b:Landroid/widget/ImageView;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;->c:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    iget-object v0, p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;->c:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object p3, p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;->c:Landroid/view/View;

    .line 110
    .line 111
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1$k$b;

    .line 112
    .line 113
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchListActivity1$k$b;-><init>(Lcom/join/mgps/activity/SearchListActivity1$k;Lcom/join/mgps/dto/SearchAutoDataBean;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    iget-object p1, p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;->b:Landroid/widget/ImageView;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    const/16 v0, 0x8

    .line 127
    .line 128
    if-eq p1, v0, :cond_4

    .line 129
    .line 130
    iget-object p1, p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;->b:Landroid/widget/ImageView;

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    :cond_4
    iget-object p1, p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;->c:Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eq p1, v0, :cond_5

    .line 142
    .line 143
    iget-object p1, p3, Lcom/join/mgps/activity/SearchListActivity1$k$d;->c:Landroid/view/View;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    :cond_5
    :goto_1
    return-object p2
.end method

.method public f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "i",
            "convertView",
            "viewGroup"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->c:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    const p3, 0x7f0d082d

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance p3, Lcom/join/mgps/activity/SearchHintActivity$s;

    .line 14
    .line 15
    invoke-direct {p3}, Lcom/join/mgps/activity/SearchHintActivity$s;-><init>()V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a1044

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 26
    .line 27
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    .line 29
    const v0, 0x7f0a0790

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/ImageView;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->b:Landroid/widget/ImageView;

    .line 39
    .line 40
    const v0, 0x7f0a1042

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a054e

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 59
    .line 60
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->d:Lcom/join/mgps/customview/DownloadNormalView;

    .line 61
    .line 62
    const v0, 0x7f0a1043

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->f:Landroid/widget/TextView;

    .line 72
    .line 73
    const v0, 0x7f0a0e73

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/LinearLayout;

    .line 81
    .line 82
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->g:Landroid/widget/LinearLayout;

    .line 83
    .line 84
    const v0, 0x7f0a1764

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/LinearLayout;

    .line 92
    .line 93
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->h:Landroid/widget/LinearLayout;

    .line 94
    .line 95
    const v0, 0x7f0a00f7

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/widget/TextView;

    .line 103
    .line 104
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 105
    .line 106
    const v0, 0x7f0a0f94

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Landroid/widget/TextView;

    .line 114
    .line 115
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->k:Landroid/widget/TextView;

    .line 116
    .line 117
    const v0, 0x7f0a129e

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Landroid/widget/ProgressBar;

    .line 125
    .line 126
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 127
    .line 128
    const v0, 0x7f0a12a5

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/widget/ProgressBar;

    .line 136
    .line 137
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->m:Landroid/widget/ProgressBar;

    .line 138
    .line 139
    const v0, 0x7f0a0e61

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->e:Landroid/view/View;

    .line 147
    .line 148
    const v0, 0x7f0a175b

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroid/widget/TextView;

    .line 156
    .line 157
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->j:Landroid/widget/TextView;

    .line 158
    .line 159
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    check-cast p3, Lcom/join/mgps/activity/SearchHintActivity$s;

    .line 168
    .line 169
    :goto_0
    iget-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->e:Landroid/view/View;

    .line 170
    .line 171
    const/4 v1, 0x0

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->d:Ljava/util/List;

    .line 176
    .line 177
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGift_package_switch()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    const/4 v1, 0x1

    .line 196
    const/16 v7, 0x8

    .line 197
    .line 198
    if-ne v0, v1, :cond_1

    .line 199
    .line 200
    iget-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->b:Landroid/widget/ImageView;

    .line 201
    .line 202
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->b:Landroid/widget/ImageView;

    .line 207
    .line 208
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->c:Landroid/widget/TextView;

    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getShowName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->f:Landroid/widget/TextView;

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 242
    .line 243
    .line 244
    move-result-wide v0

    .line 245
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 246
    .line 247
    mul-double v0, v0, v2

    .line 248
    .line 249
    mul-double v0, v0, v2

    .line 250
    .line 251
    double-to-long v8, v0

    .line 252
    iget-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->j:Landroid/widget/TextView;

    .line 270
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v2, "  "

    .line 296
    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->Z2(J)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->e:Lcom/join/mgps/activity/SearchListActivity1;

    .line 315
    .line 316
    iget-object v1, v0, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 317
    .line 318
    if-eqz v1, :cond_2

    .line 319
    .line 320
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    goto :goto_2

    .line 329
    :cond_2
    iget-object v0, v0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 330
    .line 331
    :goto_2
    move-object v5, v0

    .line 332
    iget-object v10, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->d:Lcom/join/mgps/customview/DownloadNormalView;

    .line 333
    .line 334
    new-instance v11, Lcom/join/mgps/activity/SearchListActivity1$k$a;

    .line 335
    .line 336
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->b:Landroid/content/Context;

    .line 337
    .line 338
    move-object v0, v11

    .line 339
    move-object v1, p0

    .line 340
    move-object v3, p1

    .line 341
    move-object v4, p1

    .line 342
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SearchListActivity1$k$a;-><init>(Lcom/join/mgps/activity/SearchListActivity1$k;Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v10, v11}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-eqz v0, :cond_3

    .line 353
    .line 354
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->h:Landroid/widget/LinearLayout;

    .line 355
    .line 356
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 357
    .line 358
    .line 359
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->b:Landroid/widget/ImageView;

    .line 360
    .line 361
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_7

    .line 365
    .line 366
    :cond_3
    if-nez v6, :cond_4

    .line 367
    .line 368
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 369
    .line 370
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 371
    .line 372
    invoke-virtual {p0, p3, p1, v0}, Lcom/join/mgps/activity/SearchListActivity1$k;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_7

    .line 376
    .line 377
    :cond_4
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    move-result p1

    .line 397
    const/16 v1, 0x2b

    .line 398
    .line 399
    if-lez p1, :cond_5

    .line 400
    .line 401
    const/16 v0, 0x2b

    .line 402
    .line 403
    :cond_5
    if-eqz v0, :cond_c

    .line 404
    .line 405
    const/16 p1, 0x30

    .line 406
    .line 407
    if-eq v0, p1, :cond_b

    .line 408
    .line 409
    const/4 p1, 0x2

    .line 410
    const-wide/16 v2, 0x0

    .line 411
    .line 412
    const-string v4, "/"

    .line 413
    .line 414
    if-eq v0, p1, :cond_9

    .line 415
    .line 416
    const/4 p1, 0x3

    .line 417
    if-eq v0, p1, :cond_7

    .line 418
    .line 419
    const/4 p1, 0x5

    .line 420
    if-eq v0, p1, :cond_6

    .line 421
    .line 422
    const/4 p1, 0x6

    .line 423
    if-eq v0, p1, :cond_7

    .line 424
    .line 425
    const/4 p1, 0x7

    .line 426
    if-eq v0, p1, :cond_c

    .line 427
    .line 428
    const/16 p1, 0x2a

    .line 429
    .line 430
    if-eq v0, p1, :cond_6

    .line 431
    .line 432
    if-eq v0, v1, :cond_c

    .line 433
    .line 434
    packed-switch v0, :pswitch_data_0

    .line 435
    .line 436
    .line 437
    goto/16 :goto_7

    .line 438
    .line 439
    :pswitch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 440
    .line 441
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 442
    .line 443
    invoke-virtual {p0, p3, p1, v0}, Lcom/join/mgps/activity/SearchListActivity1$k;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 444
    .line 445
    .line 446
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 447
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    .line 476
    .line 477
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->k:Landroid/widget/TextView;

    .line 478
    .line 479
    const-string v0, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 480
    .line 481
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    .line 483
    .line 484
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->m:Landroid/widget/ProgressBar;

    .line 485
    .line 486
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 487
    .line 488
    .line 489
    move-result-wide v0

    .line 490
    long-to-int p3, v0

    .line 491
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 492
    .line 493
    .line 494
    goto/16 :goto_7

    .line 495
    .line 496
    :pswitch_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 497
    .line 498
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 499
    .line 500
    invoke-virtual {p0, p3, p1, v0}, Lcom/join/mgps/activity/SearchListActivity1$k;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 501
    .line 502
    .line 503
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 504
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .line 509
    .line 510
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    .line 533
    .line 534
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->k:Landroid/widget/TextView;

    .line 535
    .line 536
    const-string v0, "\u89e3\u538b\u4e2d.."

    .line 537
    .line 538
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    .line 540
    .line 541
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->m:Landroid/widget/ProgressBar;

    .line 542
    .line 543
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 544
    .line 545
    .line 546
    move-result-wide v0

    .line 547
    long-to-int p3, v0

    .line 548
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 549
    .line 550
    .line 551
    goto/16 :goto_7

    .line 552
    .line 553
    :pswitch_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 554
    .line 555
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 556
    .line 557
    invoke-virtual {p0, p3, p1, v0}, Lcom/join/mgps/activity/SearchListActivity1$k;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_7

    .line 561
    .line 562
    :pswitch_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 563
    .line 564
    invoke-virtual {p0, p3, p1, p1}, Lcom/join/mgps/activity/SearchListActivity1$k;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 565
    .line 566
    .line 567
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 568
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 575
    .line 576
    .line 577
    move-result-wide v1

    .line 578
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    .line 601
    .line 602
    :try_start_0
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 603
    .line 604
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 605
    .line 606
    .line 607
    move-result-wide v0

    .line 608
    long-to-int v1, v0

    .line 609
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    .line 611
    .line 612
    goto :goto_3

    .line 613
    :catch_0
    move-exception p1

    .line 614
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 615
    .line 616
    .line 617
    :goto_3
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->k:Landroid/widget/TextView;

    .line 618
    .line 619
    const-string p3, "\u7b49\u5f85\u4e2d"

    .line 620
    .line 621
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    .line 623
    .line 624
    goto/16 :goto_7

    .line 625
    .line 626
    :pswitch_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 627
    .line 628
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 629
    .line 630
    invoke-virtual {p0, p3, p1, v0}, Lcom/join/mgps/activity/SearchListActivity1$k;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 631
    .line 632
    .line 633
    goto/16 :goto_7

    .line 634
    .line 635
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 636
    .line 637
    invoke-virtual {p0, p3, p1, p1}, Lcom/join/mgps/activity/SearchListActivity1$k;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 638
    .line 639
    .line 640
    goto/16 :goto_7

    .line 641
    .line 642
    :cond_7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 643
    .line 644
    invoke-virtual {p0, p3, p1, p1}, Lcom/join/mgps/activity/SearchListActivity1$k;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 645
    .line 646
    .line 647
    :try_start_1
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 648
    .line 649
    .line 650
    move-result-wide v0

    .line 651
    cmp-long p1, v0, v2

    .line 652
    .line 653
    if-nez p1, :cond_8

    .line 654
    .line 655
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 656
    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    .line 658
    .line 659
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 663
    .line 664
    .line 665
    move-result-wide v1

    .line 666
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    .line 689
    .line 690
    goto :goto_4

    .line 691
    :cond_8
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 692
    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    .line 694
    .line 695
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 699
    .line 700
    .line 701
    move-result-wide v1

    .line 702
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    .line 725
    .line 726
    :goto_4
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 727
    .line 728
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 729
    .line 730
    .line 731
    move-result-wide v0

    .line 732
    long-to-int v1, v0

    .line 733
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 734
    .line 735
    .line 736
    goto :goto_5

    .line 737
    :catch_1
    move-exception p1

    .line 738
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 739
    .line 740
    .line 741
    :goto_5
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->k:Landroid/widget/TextView;

    .line 742
    .line 743
    const-string p3, "\u6682\u505c\u4e2d"

    .line 744
    .line 745
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    .line 747
    .line 748
    goto/16 :goto_7

    .line 749
    .line 750
    :cond_9
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 751
    .line 752
    .line 753
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 754
    .line 755
    invoke-virtual {p0, p3, p1, p1}, Lcom/join/mgps/activity/SearchListActivity1$k;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 759
    .line 760
    .line 761
    move-result-wide v0

    .line 762
    cmp-long p1, v0, v2

    .line 763
    .line 764
    if-nez p1, :cond_a

    .line 765
    .line 766
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 767
    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    .line 769
    .line 770
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 774
    .line 775
    .line 776
    move-result-wide v1

    .line 777
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    .line 800
    .line 801
    goto :goto_6

    .line 802
    :cond_a
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 803
    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    .line 805
    .line 806
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 810
    .line 811
    .line 812
    move-result-wide v1

    .line 813
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v1

    .line 817
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    .line 836
    .line 837
    :goto_6
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 838
    .line 839
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 840
    .line 841
    .line 842
    move-result-wide v0

    .line 843
    long-to-int v1, v0

    .line 844
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object p1

    .line 851
    iget-object p3, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->k:Landroid/widget/TextView;

    .line 852
    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    .line 854
    .line 855
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    .line 860
    .line 861
    const-string p1, "/S"

    .line 862
    .line 863
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object p1

    .line 870
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    .line 872
    .line 873
    goto :goto_7

    .line 874
    :cond_b
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 875
    .line 876
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 877
    .line 878
    invoke-virtual {p0, p3, p1, v0}, Lcom/join/mgps/activity/SearchListActivity1$k;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 879
    .line 880
    .line 881
    goto :goto_7

    .line 882
    :cond_c
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 883
    .line 884
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 885
    .line 886
    invoke-virtual {p0, p3, p1, v0}, Lcom/join/mgps/activity/SearchListActivity1$k;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 887
    .line 888
    .line 889
    :goto_7
    return-object p2

    .line 890
    nop

    .line 891
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "isNormal",
            "isZip"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->g:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->m:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->h:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->f:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->g:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->m:Landroid/widget/ProgressBar;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->m:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->h:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->f:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->d:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->d:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-le v0, p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->d:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->d:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gt v0, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->d:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v0, v0, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k;->d:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of p1, p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    return p1

    .line 36
    :cond_2
    const/4 p1, 0x3

    .line 37
    return p1

    .line 38
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 39
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "convertView",
            "viewGroup"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1$k;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/SearchListActivity1$k;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1$k;->getItemViewType(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x2

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/SearchListActivity1$k;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/SearchListActivity1$k;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

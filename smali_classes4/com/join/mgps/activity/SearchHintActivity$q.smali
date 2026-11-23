.class public Lcom/join/mgps/activity/SearchHintActivity$q;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/SearchHintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SearchHintActivity$q$d;,
        Lcom/join/mgps/activity/SearchHintActivity$q$c;
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

.field final synthetic e:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->e:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;Landroid/content/Context;Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->e:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->b:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->d:Ljava/util/List;

    .line 6
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/SearchHintActivity$q;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/SearchHintActivity$q;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method c(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
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
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->e:Lcom/join/mgps/activity/SearchHintActivity;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/join/mgps/activity/SearchHintActivity;->keyword:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setLocation(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
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
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->c:Landroid/view/LayoutInflater;

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
    new-instance p3, Lcom/join/mgps/activity/SearchHintActivity$q$c;

    .line 14
    .line 15
    invoke-direct {p3, p0}, Lcom/join/mgps/activity/SearchHintActivity$q$c;-><init>(Lcom/join/mgps/activity/SearchHintActivity$q;)V

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
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$q$c;->a:Landroid/widget/TextView;

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
    check-cast p3, Lcom/join/mgps/activity/SearchHintActivity$q$c;

    .line 38
    .line 39
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->d:Ljava/util/List;

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
    iget-object p3, p3, Lcom/join/mgps/activity/SearchHintActivity$q$c;->a:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    return-object p2
.end method

.method public e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->c:Landroid/view/LayoutInflater;

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
    new-instance p3, Lcom/join/mgps/activity/SearchHintActivity$q$d;

    .line 14
    .line 15
    invoke-direct {p3, p0, v0}, Lcom/join/mgps/activity/SearchHintActivity$q$d;-><init>(Lcom/join/mgps/activity/SearchHintActivity$q;Lcom/join/mgps/activity/SearchHintActivity$g;)V

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
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$q$d;->d:Landroid/widget/TextView;

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
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$q$d;->b:Landroid/widget/ImageView;

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
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$q$d;->c:Landroid/view/View;

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
    check-cast p3, Lcom/join/mgps/activity/SearchHintActivity$q$d;

    .line 58
    .line 59
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->d:Ljava/util/List;

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
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->e:Lcom/join/mgps/activity/SearchHintActivity;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v2, p3, Lcom/join/mgps/activity/SearchHintActivity$q$d;->d:Landroid/widget/TextView;

    .line 84
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v4, "<font color=#f47500>"

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v4, "</font>"

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 116
    .line 117
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchAutoDataBean;->getIsHistory()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    iget-object v1, p3, Lcom/join/mgps/activity/SearchHintActivity$q$d;->b:Landroid/widget/ImageView;

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    const/4 v2, 0x0

    .line 133
    if-eqz v1, :cond_1

    .line 134
    .line 135
    iget-object v1, p3, Lcom/join/mgps/activity/SearchHintActivity$q$d;->b:Landroid/widget/ImageView;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/activity/SearchHintActivity$q$d;->c:Landroid/view/View;

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    iget-object v1, p3, Lcom/join/mgps/activity/SearchHintActivity$q$d;->c:Landroid/view/View;

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    :cond_2
    iget-object p3, p3, Lcom/join/mgps/activity/SearchHintActivity$q$d;->c:Landroid/view/View;

    .line 154
    .line 155
    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity$q$b;

    .line 156
    .line 157
    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/activity/SearchHintActivity$q$b;-><init>(Lcom/join/mgps/activity/SearchHintActivity$q;Ljava/lang/String;Lcom/join/mgps/dto/SearchAutoDataBean;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_3
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$q$d;->c:Landroid/view/View;

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    const/16 v0, 0x8

    .line 171
    .line 172
    if-eq p1, v0, :cond_4

    .line 173
    .line 174
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$q$d;->c:Landroid/view/View;

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    :cond_4
    :goto_1
    return-object p2
.end method

.method public f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
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
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->c:Landroid/view/LayoutInflater;

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
    const v0, 0x7f0a175b

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
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->j:Landroid/widget/TextView;

    .line 105
    .line 106
    const v0, 0x7f0a00f7

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
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 116
    .line 117
    const v0, 0x7f0a0f94

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Landroid/widget/TextView;

    .line 125
    .line 126
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->k:Landroid/widget/TextView;

    .line 127
    .line 128
    const v0, 0x7f0a129e

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
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 138
    .line 139
    const v0, 0x7f0a12a5

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Landroid/widget/ProgressBar;

    .line 147
    .line 148
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->m:Landroid/widget/ProgressBar;

    .line 149
    .line 150
    const v0, 0x7f0a0e61

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->e:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->d:Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getGift_package_switch()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    const/4 v2, 0x1

    .line 190
    const/16 v3, 0x8

    .line 191
    .line 192
    if-ne v1, v2, :cond_1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->b:Landroid/widget/ImageView;

    .line 196
    .line 197
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    :goto_1
    iget-object v1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->c:Landroid/widget/TextView;

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->f:Landroid/widget/TextView;

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 235
    .line 236
    .line 237
    move-result-wide v1

    .line 238
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 239
    .line 240
    mul-double v1, v1, v4

    .line 241
    .line 242
    mul-double v1, v1, v4

    .line 243
    .line 244
    double-to-long v1, v1

    .line 245
    iget-object v4, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-virtual {v4}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-static {v4}, Lcom/join/mgps/Util/w0;->p(Ljava/util/List;)Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_2

    .line 275
    .line 276
    iget-object v4, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->j:Landroid/widget/TextView;

    .line 277
    .line 278
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    invoke-virtual {v5}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_2
    iget-object v4, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->j:Landroid/widget/TextView;

    .line 299
    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    invoke-virtual {v6}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    invoke-virtual {v6}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v6, " \u00b7 "

    .line 325
    .line 326
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->Z2(J)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    :goto_2
    iget-object v4, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->d:Lcom/join/mgps/customview/DownloadNormalView;

    .line 344
    .line 345
    new-instance v5, Lcom/join/mgps/activity/SearchHintActivity$q$a;

    .line 346
    .line 347
    iget-object v6, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->b:Landroid/content/Context;

    .line 348
    .line 349
    invoke-direct {v5, p0, v6, p1, p1}, Lcom/join/mgps/activity/SearchHintActivity$q$a;-><init>(Lcom/join/mgps/activity/SearchHintActivity$q;Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4, v5}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    if-eqz v4, :cond_3

    .line 360
    .line 361
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->h:Landroid/widget/LinearLayout;

    .line 362
    .line 363
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 364
    .line 365
    .line 366
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->b:Landroid/widget/ImageView;

    .line 367
    .line 368
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_7

    .line 372
    .line 373
    :cond_3
    if-nez v0, :cond_4

    .line 374
    .line 375
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 376
    .line 377
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 378
    .line 379
    invoke-virtual {p0, p3, p1, v0}, Lcom/join/mgps/activity/SearchHintActivity$q;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_7

    .line 383
    .line 384
    :cond_4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    invoke-virtual {v4}, Lcom/join/mgps/dto/GInfoBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-static {v4, p1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    move-result p1

    .line 404
    const/16 v4, 0x2b

    .line 405
    .line 406
    if-lez p1, :cond_5

    .line 407
    .line 408
    const/16 v3, 0x2b

    .line 409
    .line 410
    :cond_5
    if-eqz v3, :cond_b

    .line 411
    .line 412
    const/16 p1, 0x30

    .line 413
    .line 414
    if-eq v3, p1, :cond_b

    .line 415
    .line 416
    const/4 p1, 0x2

    .line 417
    const-wide/16 v5, 0x0

    .line 418
    .line 419
    const-string v7, "/"

    .line 420
    .line 421
    if-eq v3, p1, :cond_9

    .line 422
    .line 423
    const/4 p1, 0x3

    .line 424
    if-eq v3, p1, :cond_7

    .line 425
    .line 426
    const/4 p1, 0x5

    .line 427
    if-eq v3, p1, :cond_6

    .line 428
    .line 429
    const/4 p1, 0x6

    .line 430
    if-eq v3, p1, :cond_7

    .line 431
    .line 432
    const/4 p1, 0x7

    .line 433
    if-eq v3, p1, :cond_b

    .line 434
    .line 435
    const/16 p1, 0x2a

    .line 436
    .line 437
    if-eq v3, p1, :cond_6

    .line 438
    .line 439
    if-eq v3, v4, :cond_b

    .line 440
    .line 441
    packed-switch v3, :pswitch_data_0

    .line 442
    .line 443
    .line 444
    goto/16 :goto_7

    .line 445
    .line 446
    :pswitch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 447
    .line 448
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 449
    .line 450
    invoke-virtual {p0, p3, p1, v3}, Lcom/join/mgps/activity/SearchHintActivity$q;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 451
    .line 452
    .line 453
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 454
    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    .line 483
    .line 484
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->k:Landroid/widget/TextView;

    .line 485
    .line 486
    const-string v1, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 487
    .line 488
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    .line 490
    .line 491
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->m:Landroid/widget/ProgressBar;

    .line 492
    .line 493
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 494
    .line 495
    .line 496
    move-result-wide v0

    .line 497
    long-to-int p3, v0

    .line 498
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_7

    .line 502
    .line 503
    :pswitch_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 504
    .line 505
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 506
    .line 507
    invoke-virtual {p0, p3, p1, v3}, Lcom/join/mgps/activity/SearchHintActivity$q;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 508
    .line 509
    .line 510
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 511
    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .line 516
    .line 517
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    .line 540
    .line 541
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->k:Landroid/widget/TextView;

    .line 542
    .line 543
    const-string v1, "\u89e3\u538b\u4e2d.."

    .line 544
    .line 545
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    .line 547
    .line 548
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->m:Landroid/widget/ProgressBar;

    .line 549
    .line 550
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 551
    .line 552
    .line 553
    move-result-wide v0

    .line 554
    long-to-int p3, v0

    .line 555
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_7

    .line 559
    .line 560
    :pswitch_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 561
    .line 562
    invoke-virtual {p0, p3, p1, p1}, Lcom/join/mgps/activity/SearchHintActivity$q;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 563
    .line 564
    .line 565
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 566
    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 573
    .line 574
    .line 575
    move-result-wide v4

    .line 576
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    .line 599
    .line 600
    :try_start_0
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 601
    .line 602
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 603
    .line 604
    .line 605
    move-result-wide v0

    .line 606
    long-to-int v1, v0

    .line 607
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .line 609
    .line 610
    goto :goto_3

    .line 611
    :catch_0
    move-exception p1

    .line 612
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 613
    .line 614
    .line 615
    :goto_3
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->k:Landroid/widget/TextView;

    .line 616
    .line 617
    const-string p3, "\u7b49\u5f85\u4e2d"

    .line 618
    .line 619
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_7

    .line 623
    .line 624
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 625
    .line 626
    invoke-virtual {p0, p3, p1, p1}, Lcom/join/mgps/activity/SearchHintActivity$q;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 627
    .line 628
    .line 629
    goto/16 :goto_7

    .line 630
    .line 631
    :cond_7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 632
    .line 633
    invoke-virtual {p0, p3, p1, p1}, Lcom/join/mgps/activity/SearchHintActivity$q;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 634
    .line 635
    .line 636
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 637
    .line 638
    .line 639
    move-result-wide v3

    .line 640
    cmp-long p1, v3, v5

    .line 641
    .line 642
    if-nez p1, :cond_8

    .line 643
    .line 644
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 645
    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    .line 647
    .line 648
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 652
    .line 653
    .line 654
    move-result-wide v4

    .line 655
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    .line 678
    .line 679
    goto :goto_4

    .line 680
    :cond_8
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 681
    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    .line 683
    .line 684
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 688
    .line 689
    .line 690
    move-result-wide v4

    .line 691
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v4

    .line 695
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    .line 714
    .line 715
    :goto_4
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 716
    .line 717
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 718
    .line 719
    .line 720
    move-result-wide v0

    .line 721
    long-to-int v1, v0

    .line 722
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 723
    .line 724
    .line 725
    goto :goto_5

    .line 726
    :catch_1
    move-exception p1

    .line 727
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 728
    .line 729
    .line 730
    :goto_5
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->k:Landroid/widget/TextView;

    .line 731
    .line 732
    const-string p3, "\u6682\u505c\u4e2d"

    .line 733
    .line 734
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    .line 736
    .line 737
    goto/16 :goto_7

    .line 738
    .line 739
    :cond_9
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 740
    .line 741
    .line 742
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 743
    .line 744
    invoke-virtual {p0, p3, p1, p1}, Lcom/join/mgps/activity/SearchHintActivity$q;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 748
    .line 749
    .line 750
    move-result-wide v3

    .line 751
    cmp-long p1, v3, v5

    .line 752
    .line 753
    if-nez p1, :cond_a

    .line 754
    .line 755
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 756
    .line 757
    new-instance v3, Ljava/lang/StringBuilder;

    .line 758
    .line 759
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 763
    .line 764
    .line 765
    move-result-wide v4

    .line 766
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v4

    .line 770
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v1

    .line 787
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    .line 789
    .line 790
    goto :goto_6

    .line 791
    :cond_a
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 792
    .line 793
    new-instance v3, Ljava/lang/StringBuilder;

    .line 794
    .line 795
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 799
    .line 800
    .line 801
    move-result-wide v4

    .line 802
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v4

    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    .line 825
    .line 826
    :goto_6
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 827
    .line 828
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 829
    .line 830
    .line 831
    move-result-wide v1

    .line 832
    long-to-int v2, v1

    .line 833
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object p1

    .line 840
    iget-object p3, p3, Lcom/join/mgps/activity/SearchHintActivity$s;->k:Landroid/widget/TextView;

    .line 841
    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    .line 843
    .line 844
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    const-string p1, "/S"

    .line 851
    .line 852
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object p1

    .line 859
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    .line 861
    .line 862
    goto :goto_7

    .line 863
    :cond_b
    :pswitch_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 864
    .line 865
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 866
    .line 867
    invoke-virtual {p0, p3, p1, v0}, Lcom/join/mgps/activity/SearchHintActivity$q;->g(Lcom/join/mgps/activity/SearchHintActivity$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 868
    .line 869
    .line 870
    :goto_7
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->e:Lcom/join/mgps/activity/SearchHintActivity;

    .line 871
    .line 872
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 873
    .line 874
    if-eqz p1, :cond_c

    .line 875
    .line 876
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 877
    .line 878
    .line 879
    move-result-object p1

    .line 880
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    :cond_c
    return-object p2

    .line 884
    nop

    .line 885
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_3
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
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->h:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->g:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->m:Landroid/widget/ProgressBar;

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->m:Landroid/widget/ProgressBar;

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->h:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity$s;->f:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
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
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
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
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$q;->d:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    instance-of p1, p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    return p1

    .line 25
    :cond_1
    const/4 p1, 0x3

    .line 26
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity$q;->getItemViewType(I)I

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/SearchHintActivity$q;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity$q;->getItemViewType(I)I

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/SearchHintActivity$q;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/SearchHintActivity$q;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

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

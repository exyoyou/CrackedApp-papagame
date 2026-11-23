.class Lcom/join/mgps/activity/d8$e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/d8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/d8$e$a;
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/d8;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/d8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/d8$e;->b:Lcom/join/mgps/activity/d8;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/dto/CollectionBeanSub;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/activity/d8$e;->b(Lcom/join/mgps/dto/CollectionBeanSub;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic b(Lcom/join/mgps/dto/CollectionBeanSub;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/d8$e;->b:Lcom/join/mgps/activity/d8;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/d8;->P(Lcom/join/mgps/activity/d8;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/d8$e;->b:Lcom/join/mgps/activity/d8;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/activity/d8;->P(Lcom/join/mgps/activity/d8;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x9

    .line 22
    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
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
    iget-object v0, p0, Lcom/join/mgps/activity/d8$e;->b:Lcom/join/mgps/activity/d8;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/d8;->P(Lcom/join/mgps/activity/d8;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/d8$e;->b:Lcom/join/mgps/activity/d8;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/activity/d8;->P(Lcom/join/mgps/activity/d8;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/activity/d8$e$a;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Lcom/join/mgps/activity/d8$e$a;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/d8$e$a;-><init>(Lcom/join/mgps/activity/d8$e;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/d8$e;->b:Lcom/join/mgps/activity/d8;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const v1, 0x7f0d02c4

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const v0, 0x7f0a084f

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    .line 42
    iput-object v0, p2, Lcom/join/mgps/activity/d8$e$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 43
    .line 44
    const v0, 0x7f0a10d8

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v0, p2, Lcom/join/mgps/activity/d8$e$a;->b:Landroid/widget/TextView;

    .line 54
    .line 55
    const v0, 0x7f0a15ae

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v0, p2, Lcom/join/mgps/activity/d8$e$a;->c:Landroid/widget/TextView;

    .line 65
    .line 66
    const v0, 0x7f0a054e

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 74
    .line 75
    iput-object v0, p2, Lcom/join/mgps/activity/d8$e$a;->d:Lcom/join/mgps/customview/DownloadNormalView;

    .line 76
    .line 77
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    move-object v4, p3

    .line 81
    move-object p3, p2

    .line 82
    move-object p2, v4

    .line 83
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/d8$e;->getItem(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    return-object p2

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/d8$e;->getItem(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 95
    .line 96
    iget-object v0, p3, Lcom/join/mgps/activity/d8$e$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p3, Lcom/join/mgps/activity/d8$e$a;->b:Landroid/widget/TextView;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_2

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 133
    .line 134
    mul-double v0, v0, v2

    .line 135
    .line 136
    mul-double v0, v0, v2

    .line 137
    .line 138
    double-to-long v0, v0

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    const-wide/16 v0, 0x0

    .line 141
    .line 142
    :goto_1
    iget-object v2, p3, Lcom/join/mgps/activity/d8$e$a;->c:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Lcom/join/mgps/activity/e8;

    .line 152
    .line 153
    invoke-direct {v0, p1}, Lcom/join/mgps/activity/e8;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    iget-object p3, p3, Lcom/join/mgps/activity/d8$e$a;->d:Lcom/join/mgps/customview/DownloadNormalView;

    .line 160
    .line 161
    new-instance v0, Lm6/c;

    .line 162
    .line 163
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-direct {v0, v1, p1}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3, v0}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 171
    .line 172
    .line 173
    return-object p2
.end method

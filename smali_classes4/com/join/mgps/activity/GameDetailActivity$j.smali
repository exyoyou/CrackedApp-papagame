.class Lcom/join/mgps/activity/GameDetailActivity$j;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameDetailActivity$j$f;
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
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
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const p3, 0x7f0d0337

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance p3, Lcom/join/mgps/activity/GameDetailActivity$j$f;

    .line 20
    .line 21
    invoke-direct {p3, p0, p2}, Lcom/join/mgps/activity/GameDetailActivity$j$f;-><init>(Lcom/join/mgps/activity/GameDetailActivity$j;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    check-cast p3, Lcom/join/mgps/activity/GameDetailActivity$j$f;

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity$j;->getItem(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/join/mgps/dto/GameListItemBean;

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_5

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v2, 0x1

    .line 60
    const/4 v3, 0x0

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const/4 v1, 0x0

    .line 83
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-ge v5, v6, :cond_2

    .line 95
    .line 96
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 101
    .line 102
    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    add-int/lit8 v5, v5, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-nez v4, :cond_3

    .line 121
    .line 122
    iget-object p1, p3, Lcom/join/mgps/activity/GameDetailActivity$j$f;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 123
    .line 124
    const/16 p3, 0x8

    .line 125
    .line 126
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_3
    iget-object v4, p3, Lcom/join/mgps/activity/GameDetailActivity$j$f;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 131
    .line 132
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_position()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    new-instance v4, Lcom/join/mgps/adapter/i1;

    .line 140
    .line 141
    iget-object v5, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 142
    .line 143
    iget-object v5, v5, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 144
    .line 145
    invoke-direct {v4, v5, v3, v0, v1}, Lcom/join/mgps/adapter/i1;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p3, Lcom/join/mgps/activity/GameDetailActivity$j$f;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 149
    .line 150
    invoke-virtual {v1, v4}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    .line 152
    .line 153
    if-ne v3, v2, :cond_4

    .line 154
    .line 155
    iget-object v1, p3, Lcom/join/mgps/activity/GameDetailActivity$j$f;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 156
    .line 157
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 158
    .line 159
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 160
    .line 161
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    const v3, 0x7f0711b5

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 173
    .line 174
    .line 175
    iget-object v1, p3, Lcom/join/mgps/activity/GameDetailActivity$j$f;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 176
    .line 177
    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_4
    iget-object v1, p3, Lcom/join/mgps/activity/GameDetailActivity$j$f;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 182
    .line 183
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 184
    .line 185
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 186
    .line 187
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const v3, 0x7f07133d

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p3, Lcom/join/mgps/activity/GameDetailActivity$j$f;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 202
    .line 203
    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 204
    .line 205
    .line 206
    :goto_3
    iget-object p3, p3, Lcom/join/mgps/activity/GameDetailActivity$j$f;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 207
    .line 208
    new-instance v1, Lcom/join/mgps/activity/GameDetailActivity$j$a;

    .line 209
    .line 210
    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/activity/GameDetailActivity$j$a;-><init>(Lcom/join/mgps/activity/GameDetailActivity$j;Ljava/util/List;Lcom/join/mgps/dto/GameListItemBean;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    .line 214
    .line 215
    .line 216
    :cond_5
    :goto_4
    return-object p2
.end method

.method b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "view",
            "viewGroup"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/join/mgps/activity/GameDetailActivity;->access$100(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    check-cast p3, Lcom/join/mgps/dto/GameListItemBean;

    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/join/mgps/dto/GameListItemBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const v1, 0x7f0d0309

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    new-instance v1, Lcom/join/mgps/activity/GameDetailActivity$k;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 38
    .line 39
    invoke-direct {v1, v2}, Lcom/join/mgps/activity/GameDetailActivity$k;-><init>(Lcom/join/mgps/activity/GameDetailActivity;)V

    .line 40
    .line 41
    .line 42
    const v2, 0x7f0a1044

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    invoke-static {v1, v2}, Lcom/join/mgps/activity/GameDetailActivity$k;->b(Lcom/join/mgps/activity/GameDetailActivity$k;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 52
    .line 53
    .line 54
    const v2, 0x7f0a1042

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-static {v1, v2}, Lcom/join/mgps/activity/GameDetailActivity$k;->d(Lcom/join/mgps/activity/GameDetailActivity$k;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 64
    .line 65
    .line 66
    const v2, 0x7f0a12a5

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroid/widget/ProgressBar;

    .line 74
    .line 75
    iput-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->c:Landroid/widget/ProgressBar;

    .line 76
    .line 77
    const v2, 0x7f0a129e

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/widget/ProgressBar;

    .line 85
    .line 86
    iput-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->d:Landroid/widget/ProgressBar;

    .line 87
    .line 88
    const v2, 0x7f0a1764

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Landroid/widget/LinearLayout;

    .line 96
    .line 97
    invoke-static {v1, v2}, Lcom/join/mgps/activity/GameDetailActivity$k;->f(Lcom/join/mgps/activity/GameDetailActivity$k;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 98
    .line 99
    .line 100
    const v2, 0x7f0a128f

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-static {v1, v2}, Lcom/join/mgps/activity/GameDetailActivity$k;->g(Lcom/join/mgps/activity/GameDetailActivity$k;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 110
    .line 111
    .line 112
    const v2, 0x7f0a12f8

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    invoke-static {v1, v2}, Lcom/join/mgps/activity/GameDetailActivity$k;->i(Lcom/join/mgps/activity/GameDetailActivity$k;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 122
    .line 123
    .line 124
    const v2, 0x7f0a054e

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Lcom/join/mgps/customview/DownloadNormalView;

    .line 132
    .line 133
    invoke-static {v1, v2}, Lcom/join/mgps/activity/GameDetailActivity$k;->k(Lcom/join/mgps/activity/GameDetailActivity$k;Lcom/join/mgps/customview/DownloadNormalView;)Lcom/join/mgps/customview/DownloadNormalView;

    .line 134
    .line 135
    .line 136
    const v2, 0x7f0a0e73

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Landroid/widget/LinearLayout;

    .line 144
    .line 145
    invoke-static {v1, v2}, Lcom/join/mgps/activity/GameDetailActivity$k;->m(Lcom/join/mgps/activity/GameDetailActivity$k;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 146
    .line 147
    .line 148
    const v2, 0x7f0a00f7

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Landroid/widget/TextView;

    .line 156
    .line 157
    iput-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->k:Landroid/widget/TextView;

    .line 158
    .line 159
    const v2, 0x7f0a1941

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Landroid/widget/TextView;

    .line 167
    .line 168
    iput-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->l:Landroid/widget/TextView;

    .line 169
    .line 170
    const v2, 0x7f0a0f94

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Landroid/widget/TextView;

    .line 178
    .line 179
    iput-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->n:Landroid/widget/TextView;

    .line 180
    .line 181
    const v2, 0x7f0a194e

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Landroid/widget/TextView;

    .line 189
    .line 190
    iput-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->o:Landroid/widget/TextView;

    .line 191
    .line 192
    const v2, 0x7f0a13e4

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Landroid/widget/LinearLayout;

    .line 200
    .line 201
    invoke-static {v1, v2}, Lcom/join/mgps/activity/GameDetailActivity$k;->o(Lcom/join/mgps/activity/GameDetailActivity$k;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 202
    .line 203
    .line 204
    const v2, 0x7f0a1043

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Landroid/widget/TextView;

    .line 212
    .line 213
    iput-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->m:Landroid/widget/TextView;

    .line 214
    .line 215
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Lcom/join/mgps/activity/GameDetailActivity$k;

    .line 224
    .line 225
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 226
    .line 227
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 228
    .line 229
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTv_btn()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    const/4 v3, 0x0

    .line 234
    const/16 v4, 0x8

    .line 235
    .line 236
    if-nez v2, :cond_1

    .line 237
    .line 238
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetailActivity$k;->j(Lcom/join/mgps/activity/GameDetailActivity$k;)Lcom/join/mgps/customview/DownloadNormalView;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetailActivity$k;->h(Lcom/join/mgps/activity/GameDetailActivity$k;)Landroid/widget/RelativeLayout;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_1
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetailActivity$k;->j(Lcom/join/mgps/activity/GameDetailActivity$k;)Lcom/join/mgps/customview/DownloadNormalView;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetailActivity$k;->h(Lcom/join/mgps/activity/GameDetailActivity$k;)Landroid/widget/RelativeLayout;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    :goto_1
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    const-string v3, ""

    .line 272
    .line 273
    if-eqz v2, :cond_2

    .line 274
    .line 275
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-nez v2, :cond_2

    .line 284
    .line 285
    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->l:Landroid/widget/TextView;

    .line 286
    .line 287
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_2
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    const-string v5, "1"

    .line 300
    .line 301
    if-eqz v2, :cond_4

    .line 302
    .line 303
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-nez v2, :cond_4

    .line 312
    .line 313
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 314
    .line 315
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 316
    .line 317
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getIs_self()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    if-eqz v2, :cond_3

    .line 326
    .line 327
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 328
    .line 329
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 330
    .line 331
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTv_btn()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-nez v2, :cond_3

    .line 336
    .line 337
    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->l:Landroid/widget/TextView;

    .line 338
    .line 339
    const-string v3, "\u5728\u6b64\u8f93\u5165\u63a8\u8350\u8bed."

    .line 340
    .line 341
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    .line 343
    .line 344
    goto :goto_2

    .line 345
    :cond_3
    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->l:Landroid/widget/TextView;

    .line 346
    .line 347
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    .line 353
    .line 354
    goto :goto_2

    .line 355
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 356
    .line 357
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 358
    .line 359
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getIs_self()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-eqz v2, :cond_5

    .line 368
    .line 369
    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->l:Landroid/widget/TextView;

    .line 370
    .line 371
    const-string v3, "\u5728\u6b64\u8f93\u5165\u63a8\u8350\u8bed"

    .line 372
    .line 373
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .line 375
    .line 376
    goto :goto_2

    .line 377
    :cond_5
    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->l:Landroid/widget/TextView;

    .line 378
    .line 379
    const-string v3, "\u4e0d\u77e5\u9053\u8be5\u8bf4\u5565\u4e86"

    .line 380
    .line 381
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    .line 383
    .line 384
    :goto_2
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetailActivity$k;->n(Lcom/join/mgps/activity/GameDetailActivity$k;)Landroid/widget/LinearLayout;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    new-instance v3, Lcom/join/mgps/activity/GameDetailActivity$j$b;

    .line 389
    .line 390
    invoke-direct {v3, p0, p3}, Lcom/join/mgps/activity/GameDetailActivity$j$b;-><init>(Lcom/join/mgps/activity/GameDetailActivity$j;Lcom/join/mgps/dto/GameListItemBean;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    .line 395
    .line 396
    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->l:Landroid/widget/TextView;

    .line 397
    .line 398
    new-instance v3, Lcom/join/mgps/activity/GameDetailActivity$j$c;

    .line 399
    .line 400
    invoke-direct {v3, p0, p3, v1, p1}, Lcom/join/mgps/activity/GameDetailActivity$j$c;-><init>(Lcom/join/mgps/activity/GameDetailActivity$j;Lcom/join/mgps/dto/GameListItemBean;Lcom/join/mgps/activity/GameDetailActivity$k;I)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    .line 405
    .line 406
    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->o:Landroid/widget/TextView;

    .line 407
    .line 408
    new-instance v3, Lcom/join/mgps/activity/GameDetailActivity$j$d;

    .line 409
    .line 410
    invoke-direct {v3, p0, p3, p1}, Lcom/join/mgps/activity/GameDetailActivity$j$d;-><init>(Lcom/join/mgps/activity/GameDetailActivity$j;Lcom/join/mgps/dto/GameListItemBean;I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    .line 415
    .line 416
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetailActivity$k;->c(Lcom/join/mgps/activity/GameDetailActivity$k;)Landroid/widget/TextView;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    .line 426
    .line 427
    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->m:Landroid/widget/TextView;

    .line 428
    .line 429
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    .line 435
    .line 436
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetailActivity$k;->a(Lcom/join/mgps/activity/GameDetailActivity$k;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    const v3, 0x7f080caf

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 444
    .line 445
    .line 446
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetailActivity$k;->a(Lcom/join/mgps/activity/GameDetailActivity$k;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 458
    .line 459
    invoke-static {v2}, Lcom/join/mgps/activity/GameDetailActivity;->access$100(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    check-cast p1, Lcom/join/mgps/dto/GameListItemBean;

    .line 468
    .line 469
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 474
    .line 475
    .line 476
    move-result-wide v2

    .line 477
    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    .line 478
    .line 479
    mul-double v2, v2, v5

    .line 480
    .line 481
    mul-double v2, v2, v5

    .line 482
    .line 483
    double-to-long v2, v2

    .line 484
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    .line 489
    .line 490
    .line 491
    move-result v6

    .line 492
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v7

    .line 496
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 497
    .line 498
    .line 499
    move-result-object v8

    .line 500
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 501
    .line 502
    .line 503
    move-result-object v9

    .line 504
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetailActivity$k;->e(Lcom/join/mgps/activity/GameDetailActivity$k;)Landroid/widget/LinearLayout;

    .line 505
    .line 506
    .line 507
    move-result-object v10

    .line 508
    iget-object p3, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 509
    .line 510
    iget-object v11, p3, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 511
    .line 512
    invoke-static/range {v5 .. v11}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 513
    .line 514
    .line 515
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetailActivity$k;->j(Lcom/join/mgps/activity/GameDetailActivity$k;)Lcom/join/mgps/customview/DownloadNormalView;

    .line 516
    .line 517
    .line 518
    move-result-object p3

    .line 519
    new-instance v5, Lcom/join/mgps/activity/GameDetailActivity$j$e;

    .line 520
    .line 521
    iget-object v6, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 522
    .line 523
    iget-object v6, v6, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 524
    .line 525
    invoke-direct {v5, p0, v6, p1, p1}, Lcom/join/mgps/activity/GameDetailActivity$j$e;-><init>(Lcom/join/mgps/activity/GameDetailActivity$j;Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;Lcom/join/mgps/dto/GameListItemBean;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {p3, v5}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    .line 532
    .line 533
    .line 534
    move-result p3

    .line 535
    if-eqz p3, :cond_6

    .line 536
    .line 537
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetailActivity$k;->e(Lcom/join/mgps/activity/GameDetailActivity$k;)Landroid/widget/LinearLayout;

    .line 538
    .line 539
    .line 540
    move-result-object p1

    .line 541
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_5

    .line 545
    .line 546
    :cond_6
    if-nez v0, :cond_7

    .line 547
    .line 548
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 549
    .line 550
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 551
    .line 552
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 553
    .line 554
    invoke-virtual {p1, v1, p3, v0}, Lcom/join/mgps/activity/GameDetailActivity;->updateUi(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 555
    .line 556
    .line 557
    goto/16 :goto_5

    .line 558
    .line 559
    :cond_7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 560
    .line 561
    .line 562
    move-result p3

    .line 563
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 564
    .line 565
    .line 566
    move-result-object v4

    .line 567
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object p1

    .line 571
    invoke-static {v4, p1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 572
    .line 573
    .line 574
    move-result p1

    .line 575
    const/16 v4, 0x2b

    .line 576
    .line 577
    if-lez p1, :cond_8

    .line 578
    .line 579
    const/16 p3, 0x2b

    .line 580
    .line 581
    :cond_8
    if-eqz p3, :cond_b

    .line 582
    .line 583
    const/16 p1, 0x30

    .line 584
    .line 585
    if-eq p3, p1, :cond_b

    .line 586
    .line 587
    const/4 p1, 0x2

    .line 588
    const-string v5, "/"

    .line 589
    .line 590
    if-eq p3, p1, :cond_a

    .line 591
    .line 592
    const/4 p1, 0x3

    .line 593
    if-eq p3, p1, :cond_9

    .line 594
    .line 595
    const/4 p1, 0x5

    .line 596
    if-eq p3, p1, :cond_b

    .line 597
    .line 598
    const/4 p1, 0x6

    .line 599
    if-eq p3, p1, :cond_9

    .line 600
    .line 601
    const/4 p1, 0x7

    .line 602
    if-eq p3, p1, :cond_b

    .line 603
    .line 604
    const/16 p1, 0x2a

    .line 605
    .line 606
    if-eq p3, p1, :cond_b

    .line 607
    .line 608
    if-eq p3, v4, :cond_b

    .line 609
    .line 610
    packed-switch p3, :pswitch_data_0

    .line 611
    .line 612
    .line 613
    goto/16 :goto_5

    .line 614
    .line 615
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 616
    .line 617
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 618
    .line 619
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 620
    .line 621
    invoke-virtual {p1, v1, p3, v4}, Lcom/join/mgps/activity/GameDetailActivity;->updateUi(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 622
    .line 623
    .line 624
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->k:Landroid/widget/TextView;

    .line 625
    .line 626
    new-instance p3, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .line 630
    .line 631
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object p3

    .line 652
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    .line 654
    .line 655
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->n:Landroid/widget/TextView;

    .line 656
    .line 657
    const-string p3, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 658
    .line 659
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    .line 661
    .line 662
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->c:Landroid/widget/ProgressBar;

    .line 663
    .line 664
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 665
    .line 666
    .line 667
    move-result-wide v0

    .line 668
    long-to-int p3, v0

    .line 669
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 670
    .line 671
    .line 672
    goto/16 :goto_5

    .line 673
    .line 674
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 675
    .line 676
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 677
    .line 678
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 679
    .line 680
    invoke-virtual {p1, v1, p3, v4}, Lcom/join/mgps/activity/GameDetailActivity;->updateUi(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 681
    .line 682
    .line 683
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->k:Landroid/widget/TextView;

    .line 684
    .line 685
    new-instance p3, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    .line 689
    .line 690
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v4

    .line 694
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v2

    .line 704
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object p3

    .line 711
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    .line 713
    .line 714
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->n:Landroid/widget/TextView;

    .line 715
    .line 716
    const-string p3, "\u89e3\u538b\u4e2d.."

    .line 717
    .line 718
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    .line 720
    .line 721
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->c:Landroid/widget/ProgressBar;

    .line 722
    .line 723
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 724
    .line 725
    .line 726
    move-result-wide v0

    .line 727
    long-to-int p3, v0

    .line 728
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 729
    .line 730
    .line 731
    goto/16 :goto_5

    .line 732
    .line 733
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 734
    .line 735
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 736
    .line 737
    invoke-virtual {p1, v1, p3, p3}, Lcom/join/mgps/activity/GameDetailActivity;->updateUi(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 738
    .line 739
    .line 740
    :try_start_0
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->k:Landroid/widget/TextView;

    .line 741
    .line 742
    new-instance p3, Ljava/lang/StringBuilder;

    .line 743
    .line 744
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 748
    .line 749
    .line 750
    move-result-wide v6

    .line 751
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v4

    .line 755
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object p3

    .line 772
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    .line 774
    .line 775
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->d:Landroid/widget/ProgressBar;

    .line 776
    .line 777
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 778
    .line 779
    .line 780
    move-result-wide v2

    .line 781
    long-to-int p3, v2

    .line 782
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    .line 784
    .line 785
    goto :goto_3

    .line 786
    :catch_0
    move-exception p1

    .line 787
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 788
    .line 789
    .line 790
    :goto_3
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->n:Landroid/widget/TextView;

    .line 791
    .line 792
    const-string p3, "\u7b49\u5f85\u4e2d"

    .line 793
    .line 794
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    .line 796
    .line 797
    goto/16 :goto_5

    .line 798
    .line 799
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 800
    .line 801
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 802
    .line 803
    invoke-virtual {p1, v1, p3, p3}, Lcom/join/mgps/activity/GameDetailActivity;->updateUi(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 804
    .line 805
    .line 806
    :try_start_1
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->k:Landroid/widget/TextView;

    .line 807
    .line 808
    new-instance p3, Ljava/lang/StringBuilder;

    .line 809
    .line 810
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 814
    .line 815
    .line 816
    move-result-wide v6

    .line 817
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v4

    .line 821
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v2

    .line 831
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object p3

    .line 838
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    .line 840
    .line 841
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->d:Landroid/widget/ProgressBar;

    .line 842
    .line 843
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 844
    .line 845
    .line 846
    move-result-wide v2

    .line 847
    long-to-int p3, v2

    .line 848
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 849
    .line 850
    .line 851
    goto :goto_4

    .line 852
    :catch_1
    move-exception p1

    .line 853
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 854
    .line 855
    .line 856
    :goto_4
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->n:Landroid/widget/TextView;

    .line 857
    .line 858
    const-string p3, "\u6682\u505c\u4e2d"

    .line 859
    .line 860
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    .line 862
    .line 863
    goto :goto_5

    .line 864
    :cond_a
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 865
    .line 866
    .line 867
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 868
    .line 869
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 870
    .line 871
    invoke-virtual {p1, v1, p3, p3}, Lcom/join/mgps/activity/GameDetailActivity;->updateUi(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 872
    .line 873
    .line 874
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->k:Landroid/widget/TextView;

    .line 875
    .line 876
    new-instance p3, Ljava/lang/StringBuilder;

    .line 877
    .line 878
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 882
    .line 883
    .line 884
    move-result-wide v6

    .line 885
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v4

    .line 889
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v2

    .line 899
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object p3

    .line 906
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    .line 908
    .line 909
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->n:Landroid/widget/TextView;

    .line 910
    .line 911
    new-instance p3, Ljava/lang/StringBuilder;

    .line 912
    .line 913
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v2

    .line 920
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    const-string v2, "/S"

    .line 924
    .line 925
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object p3

    .line 932
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    .line 934
    .line 935
    iget-object p1, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->d:Landroid/widget/ProgressBar;

    .line 936
    .line 937
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 938
    .line 939
    .line 940
    move-result-wide v0

    .line 941
    long-to-int p3, v0

    .line 942
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 943
    .line 944
    .line 945
    goto :goto_5

    .line 946
    :cond_b
    :pswitch_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 947
    .line 948
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 949
    .line 950
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 951
    .line 952
    invoke-virtual {p1, v1, p3, v0}, Lcom/join/mgps/activity/GameDetailActivity;->updateUi(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 953
    .line 954
    .line 955
    :goto_5
    return-object p2

    .line 956
    nop

    .line 957
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->access$100(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->access$100(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->access$100(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/mgps/dto/GameListItemBean;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListItemBean;->getItemType()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity$j;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/GameDetailActivity$j;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/GameDetailActivity$j;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

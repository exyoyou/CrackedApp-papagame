.class Lcom/join/mgps/activity/MGGameDetailActivity$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MGGameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    const p1, 0x7f06048d

    .line 2
    .line 3
    .line 4
    const/16 p3, 0x8

    .line 5
    .line 6
    const/4 p4, 0x0

    .line 7
    if-nez p2, :cond_3

    .line 8
    .line 9
    :try_start_0
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->gameListView:Landroid/widget/ListView;

    .line 12
    .line 13
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tpl_two_position()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const v0, 0x7f0604e5

    .line 36
    .line 37
    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->topBarline:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->backBtn:Landroid/widget/ImageView;

    .line 50
    .line 51
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 57
    .line 58
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$700(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/android/app/common/manager/b;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, v0}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 73
    .line 74
    invoke-static {p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    const/4 v1, 0x1

    .line 83
    if-ne p2, v1, :cond_1

    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->topBarline:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->backBtn:Landroid/widget/ImageView;

    .line 95
    .line 96
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 102
    .line 103
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$700(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/android/app/common/manager/b;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1, v0}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 117
    .line 118
    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->backBtn:Landroid/widget/ImageView;

    .line 119
    .line 120
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 124
    .line 125
    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 126
    .line 127
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 131
    .line 132
    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->topBarline:Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 138
    .line 139
    invoke-static {p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$700(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/android/app/common/manager/b;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p2, p1}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 148
    .line 149
    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->backBtn:Landroid/widget/ImageView;

    .line 150
    .line 151
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 155
    .line 156
    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 157
    .line 158
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 162
    .line 163
    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->topBarline:Landroid/view/View;

    .line 164
    .line 165
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 169
    .line 170
    invoke-static {p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$700(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/android/app/common/manager/b;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    if-eqz p2, :cond_4

    .line 175
    .line 176
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 177
    .line 178
    invoke-static {p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$700(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/android/app/common/manager/b;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-virtual {p2, p1}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 187
    .line 188
    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->backBtn:Landroid/widget/ImageView;

    .line 189
    .line 190
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 194
    .line 195
    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 196
    .line 197
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 201
    .line 202
    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->topBarline:Landroid/view/View;

    .line 203
    .line 204
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 208
    .line 209
    invoke-static {p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$700(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/android/app/common/manager/b;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {p2, p1}, Lcom/join/android/app/common/manager/b;->n(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .line 215
    .line 216
    goto :goto_0

    .line 217
    :catch_0
    move-exception p1

    .line 218
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 219
    .line 220
    .line 221
    :cond_4
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    return-void
.end method

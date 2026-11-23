.class Lcom/join/mgps/fragment/o$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o;->V(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/DetailResultBean;

.field final synthetic c:Lcom/join/mgps/fragment/o;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$detailResultBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/o$h;->b:Lcom/join/mgps/dto/DetailResultBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/fragment/o;->Q(Lcom/join/mgps/fragment/o;)Lcom/join/mgps/customview/t;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/fragment/o;->Q(Lcom/join/mgps/fragment/o;)Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/fragment/o;->Q(Lcom/join/mgps/fragment/o;)Lcom/join/mgps/customview/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/join/mgps/fragment/o;->R(Lcom/join/mgps/fragment/o;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/fragment/o;->R(Lcom/join/mgps/fragment/o;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o$h;->b:Lcom/join/mgps/dto/DetailResultBean;

    .line 51
    .line 52
    const/16 v1, 0x2b

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v2, p0, Lcom/join/mgps/fragment/o$h;->b:Lcom/join/mgps/dto/DetailResultBean;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-lez v0, :cond_2

    .line 71
    .line 72
    const/16 p1, 0x2b

    .line 73
    .line 74
    :cond_2
    const/4 v0, 0x5

    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    if-eq p1, v0, :cond_3

    .line 78
    .line 79
    const/16 v2, 0x9

    .line 80
    .line 81
    if-eq p1, v2, :cond_4

    .line 82
    .line 83
    if-eq p1, v1, :cond_4

    .line 84
    .line 85
    goto/16 :goto_2

    .line 86
    .line 87
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/join/mgps/fragment/o;->M(Lcom/join/mgps/fragment/o;)Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/join/mgps/fragment/o;->R(Lcom/join/mgps/fragment/o;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/o$h;->b:Lcom/join/mgps/dto/DetailResultBean;

    .line 105
    .line 106
    if-eqz p1, :cond_8

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object v1, p0, Lcom/join/mgps/fragment/o$h;->b:Lcom/join/mgps/dto/DetailResultBean;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-lez p1, :cond_5

    .line 123
    .line 124
    iget-object p1, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/join/mgps/fragment/o;->R(Lcom/join/mgps/fragment/o;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/join/mgps/fragment/o;->R(Lcom/join/mgps/fragment/o;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object v1, p0, Lcom/join/mgps/fragment/o$h;->b:Lcom/join/mgps/dto/DetailResultBean;

    .line 151
    .line 152
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->A1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 156
    .line 157
    invoke-static {p1}, Lcom/join/mgps/fragment/o;->M(Lcom/join/mgps/fragment/o;)Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object v1, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 162
    .line 163
    invoke-static {v1}, Lcom/join/mgps/fragment/o;->R(Lcom/join/mgps/fragment/o;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_6

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/o$h;->b:Lcom/join/mgps/dto/DetailResultBean;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-ne p1, v0, :cond_7

    .line 181
    .line 182
    iget-object p1, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 183
    .line 184
    invoke-static {p1}, Lcom/join/mgps/fragment/o;->M(Lcom/join/mgps/fragment/o;)Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 189
    .line 190
    invoke-static {v0}, Lcom/join/mgps/fragment/o;->R(Lcom/join/mgps/fragment/o;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 199
    .line 200
    invoke-static {p1}, Lcom/join/mgps/fragment/o;->M(Lcom/join/mgps/fragment/o;)Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iget-object v0, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 205
    .line 206
    invoke-static {v0}, Lcom/join/mgps/fragment/o;->R(Lcom/join/mgps/fragment/o;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/join/mgps/fragment/o$h;->b:Lcom/join/mgps/dto/DetailResultBean;

    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getTp_down_url()Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/join/mgps/fragment/o$h;->b:Lcom/join/mgps/dto/DetailResultBean;

    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getOther_down_switch()I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    iget-object v3, p0, Lcom/join/mgps/fragment/o$h;->b:Lcom/join/mgps/dto/DetailResultBean;

    .line 223
    .line 224
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getCdn_down_switch()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 229
    .line 230
    .line 231
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/fragment/o$h;->c:Lcom/join/mgps/fragment/o;

    .line 232
    .line 233
    invoke-static {p1}, Lcom/join/mgps/fragment/o;->R(Lcom/join/mgps/fragment/o;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    const/4 v0, 0x2

    .line 238
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 239
    .line 240
    .line 241
    :goto_2
    return-void
.end method

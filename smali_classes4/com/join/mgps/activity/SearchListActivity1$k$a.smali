.class Lcom/join/mgps/activity/SearchListActivity1$k$a;
.super Lm6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchListActivity1$k;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommonGameInfoBean;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/SearchListActivity1$k;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchListActivity1$k;Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "ctx",
            "info",
            "val$item",
            "val$searchKeyword"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->c:Lcom/join/mgps/activity/SearchListActivity1$k;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onButtonClicked(Lcom/join/mgps/customview/DownloadNormalView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downView"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getBespeak_switch()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getDown_state()Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x6

    .line 29
    if-ne v0, v2, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->isModGameVm()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getModGameId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getGame_book()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->c:Lcom/join/mgps/activity/SearchListActivity1$k;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/join/mgps/activity/SearchListActivity1$k;->a(Lcom/join/mgps/activity/SearchListActivity1$k;)Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v1, "onClickGamebeSpeakGameId"

    .line 75
    .line 76
    invoke-virtual {p1, v1, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    .line 81
    .line 82
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getGame_book()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-ne v2, v1, :cond_2

    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->c:Lcom/join/mgps/activity/SearchListActivity1$k;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/join/mgps/activity/SearchListActivity1$k;->a(Lcom/join/mgps/activity/SearchListActivity1$k;)Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string v1, "onClickUnGamebeSpeakGameId"

    .line 109
    .line 110
    invoke-virtual {p1, v1, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    .line 115
    .line 116
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->b:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->setWhere(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 128
    .line 129
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 148
    .line 149
    .line 150
    const/16 v1, 0x70

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 153
    .line 154
    .line 155
    const-string v1, "103"

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->b:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setWhere(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->b:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setKeyword(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 168
    .line 169
    .line 170
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->setExt(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-super {p0, p1}, Lm6/c;->onButtonClicked(Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->c:Lcom/join/mgps/activity/SearchListActivity1$k;

    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1$k$a;->b:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/SearchListActivity1$k;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

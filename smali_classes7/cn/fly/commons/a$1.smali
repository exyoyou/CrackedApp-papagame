.class Lcn/fly/commons/a$1;
.super Lcn/fly/tools/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/a;->a(Lcn/fly/commons/FlyProduct;Lcn/fly/tools/utils/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/commons/FlyProduct;

.field final synthetic b:Lcn/fly/tools/utils/d;

.field final synthetic c:Lcn/fly/commons/a;


# direct methods
.method constructor <init>(Lcn/fly/commons/a;Lcn/fly/commons/FlyProduct;Lcn/fly/tools/utils/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/a$1;->c:Lcn/fly/commons/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/commons/a$1;->a:Lcn/fly/commons/FlyProduct;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/fly/commons/a$1;->b:Lcn/fly/tools/utils/d;

    .line 6
    .line 7
    invoke-direct {p0}, Lcn/fly/tools/utils/i;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 1
    const-string v0, "002,babg"

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcn/fly/commons/c;->a(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-static {}, Lcn/fly/commons/c;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :cond_0
    const/4 v2, 0x5

    .line 22
    if-ge v0, v2, :cond_1

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    const-wide/16 v2, 0x1388

    .line 27
    .line 28
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcn/fly/commons/c;->e()Z

    .line 32
    .line 33
    .line 34
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    nop

    .line 39
    :cond_1
    :goto_0
    invoke-static {}, Lcn/fly/commons/c;->e()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "di init"

    .line 50
    .line 51
    new-array v3, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lcn/fly/tools/utils/DH;->requester(Landroid/content/Context;)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getAdvertisingID()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, v1}, Lcn/fly/tools/utils/DH$RequestBuilder;->getCarrierStrict(Z)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getMemoryInfo()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getSizeInfo()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->cx()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->isRooted()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getDeviceType()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->checkPad()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getScreenSize()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getDetailNetworkTypeForStatic()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getODH()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getOD()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getAppLastUpdateTime()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getMIUIVersionForFly()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getInnerAppLanguage()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getGrammaticalGender()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Lcn/fly/tools/utils/DH$RequestBuilder;->getDM(Z)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v2, "ndi"

    .line 133
    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v2, v1}, Lcn/fly/commons/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Ljava/lang/Integer;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    const/4 v2, 0x1

    .line 149
    if-ne v1, v2, :cond_2

    .line 150
    .line 151
    const-string v1, "028jUbaLbgbj*dgcadgBgd)bdOjebDdg3gAfiPfdbSba5dJbhbjQg cgMg"

    .line 152
    .line 153
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Lcn/fly/tools/utils/DH$RequestBuilder;->getLATime(Ljava/lang/String;)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    const-string v2, "035jRba4bgbj,dgcadg4gd=bdEjFde7bgafeBbgdg%g=bfdg dggFbg0c^chdgbjcgbdWe"

    .line 162
    .line 163
    invoke-static {v2}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v1, v2}, Lcn/fly/tools/utils/DH$RequestBuilder;->getLATime(Ljava/lang/String;)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v2, "028j[ba0bgbj[dgcadg%gdHbd;je\'bi:aYcfdg9dggLbg%c4chdgbjbadd"

    .line 172
    .line 173
    invoke-static {v2}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v1, v2}, Lcn/fly/tools/utils/DH$RequestBuilder;->getLATime(Ljava/lang/String;)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const-string v2, "005jGbaIbgb"

    .line 182
    .line 183
    invoke-static {v2}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Lcn/fly/tools/utils/DH$RequestBuilder;->getLATime(Ljava/lang/String;)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const-string v2, "012jJbaLbgbj%dgcadgGgd^bd"

    .line 192
    .line 193
    invoke-static {v2}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v1, v2}, Lcn/fly/tools/utils/DH$RequestBuilder;->getLATime(Ljava/lang/String;)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    const-string v2, "018jMba^bgbj_dgcadg gd0bd=j(bedgQdXbhdg"

    .line 202
    .line 203
    invoke-static {v2}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Lcn/fly/tools/utils/DH$RequestBuilder;->getLATime(Ljava/lang/String;)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const-string v2, "045j!ba;bgbjUdgcadgPgd%bdYj^bedg d^bhdgOjXdf-jBdgGdgg*bg=c-chdgbfcdbg4c7ch(d5bhLhWbhbg(cg\'bjcgbd,e"

    .line 212
    .line 213
    invoke-static {v2}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v1, v2}, Lcn/fly/tools/utils/DH$RequestBuilder;->getLATime(Ljava/lang/String;)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 218
    .line 219
    .line 220
    :cond_2
    new-instance v1, Lcn/fly/commons/a$1$1;

    .line 221
    .line 222
    invoke-direct {v1, p0}, Lcn/fly/commons/a$1$1;-><init>(Lcn/fly/commons/a$1;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lcn/fly/tools/utils/DH$RequestBuilder;->request(Lcn/fly/tools/utils/DH$DHResponder;)V

    .line 226
    .line 227
    .line 228
    :cond_3
    return-void
.end method

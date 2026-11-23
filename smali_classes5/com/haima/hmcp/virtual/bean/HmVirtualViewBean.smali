.class public Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;,
        Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;
    }
.end annotation


# instance fields
.field private crossPicRockerDirection:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cross_pic_rocker_direction"
    .end annotation
.end field

.field private crossPicRockerDirectionMD5:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cross_pic_rocker_direction_MD5"
    .end annotation
.end field

.field private crossPicRockerDirectionUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cross_pic_rocker_direction_url"
    .end annotation
.end field

.field private drawerId:Ljava/lang/Long;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "drawer_id"
    .end annotation
.end field

.field private drawerList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "drawer_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation
.end field

.field private drawerSelectedBorderColor:Ljava/lang/String;

.field private hideText:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hide_text"
    .end annotation
.end field

.field private keyType:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "kT"
    .end annotation
.end field

.field private keys:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "n"
    .end annotation
.end field

.field private picCenter:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_center"
    .end annotation
.end field

.field private picCenterMD5:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_center_MD5"
    .end annotation
.end field

.field private picCenterUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_center_url"
    .end annotation
.end field

.field private picSelected:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_selected"
    .end annotation
.end field

.field private picSelectedMD5:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_selected_MD5"
    .end annotation
.end field

.field private picSelectedUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_selected_url"
    .end annotation
.end field

.field private picUnselected:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_unselected"
    .end annotation
.end field

.field private picUnselectedMD5:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_unselected_MD5"
    .end annotation
.end field

.field private picUnselectedUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_unselected_url"
    .end annotation
.end field

.field private position:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "p"
    .end annotation
.end field

.field private scale:F
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "s"
    .end annotation
.end field

.field private sendType:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sT"
    .end annotation
.end field

.field private sensitivity:Ljava/lang/Float;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sens"
    .end annotation
.end field

.field public sensitivityFnBtnChecked:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private textRocketCenter:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "text_rocker_center"
    .end annotation
.end field

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public copy()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;
    .locals 6

    .line 1
    new-instance v0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->keyType:I

    .line 7
    .line 8
    const/16 v2, 0xd

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eq v1, v2, :cond_2

    .line 12
    .line 13
    const/4 v2, -0x2

    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->position:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->keys:Ljava/util/List;

    .line 25
    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    :cond_1
    return-object v3

    .line 29
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->position:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 30
    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    return-object v3

    .line 34
    :cond_3
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setName(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->keyType:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setKeyType(I)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->sendType:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setSendType(I)V

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->scale:F

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setScale(F)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->sensitivity:Ljava/lang/Float;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setSensitivity(Ljava/lang/Float;)V

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->sensitivityFnBtnChecked:Z

    .line 60
    .line 61
    iput-boolean v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->sensitivityFnBtnChecked:Z

    .line 62
    .line 63
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->uuid:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setUuid(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->drawerId:Ljava/lang/Long;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setDrawerId(Ljava/lang/Long;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picCenter:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setPicCenter(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picCenterMD5:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setPicCenterMD5(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picCenterUrl:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setPicCenterUrl(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 89
    .line 90
    invoke-direct {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->position:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 94
    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->getX()D

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setX(D)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->position:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->getY()D

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setY(D)V

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->position:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->getH()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setH(I)V

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->position:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->getW()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setW(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 133
    .line 134
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setX(D)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setY(D)V

    .line 138
    .line 139
    .line 140
    const/16 v2, 0x6c

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setW(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setH(I)V

    .line 146
    .line 147
    .line 148
    :goto_1
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setPosition(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->keys:Ljava/util/List;

    .line 152
    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    new-instance v1, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->keys:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_5

    .line 171
    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 177
    .line 178
    new-instance v4, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 179
    .line 180
    invoke-direct {v4}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getCode()I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    invoke-virtual {v4, v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->setCode(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getKey()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v4, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->setKey(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_5
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setKeys(Ljava/util/List;)V

    .line 202
    .line 203
    .line 204
    :cond_6
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picSelected:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setPicSelected(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picSelectedMD5:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setPicSelectedMD5(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picSelectedUrl:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setPicSelectedUrl(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picUnselected:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setPicUnselected(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picUnselectedMD5:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setPicUnselectedMD5(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picUnselectedUrl:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setPicUnselectedUrl(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->crossPicRockerDirection:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setCrossPicRockerDirection(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->crossPicRockerDirectionMD5:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setCrossPicRockerDirectionMD5(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->crossPicRockerDirectionUrl:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setCrossPicRockerDirectionUrl(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->textRocketCenter:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setTextRocketCenter(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->hideText:Z

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setHideText(Z)V

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->drawerSelectedBorderColor:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setDrawerSelectedBorderColor(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->drawerList:Ljava/util/List;

    .line 265
    .line 266
    if-eqz v1, :cond_8

    .line 267
    .line 268
    new-instance v1, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .line 272
    .line 273
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->drawerList:Ljava/util/List;

    .line 274
    .line 275
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-eqz v3, :cond_7

    .line 284
    .line 285
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    check-cast v3, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 290
    .line 291
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_7
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setDrawerList(Ljava/util/List;)V

    .line 300
    .line 301
    .line 302
    :cond_8
    return-object v0
.end method

.method public getCrossPicRockerDirection()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->crossPicRockerDirection:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCrossPicRockerDirectionMD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->crossPicRockerDirectionMD5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCrossPicRockerDirectionUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->crossPicRockerDirectionUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDrawerId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->drawerId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDrawerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->drawerList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDrawerSelectedBorderColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->drawerSelectedBorderColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHideText()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->hideText:Z

    .line 2
    .line 3
    return v0
.end method

.method public getKeyType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->keyType:I

    .line 2
    .line 3
    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->keys:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->name:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public getPicCenter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picCenter:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPicCenterMD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picCenterMD5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPicCenterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picCenterUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPicSelected()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picSelected:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPicSelectedMD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picSelectedMD5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPicSelectedUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picSelectedUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPicUnselected()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picUnselected:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPicUnselectedMD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picUnselectedMD5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPicUnselectedUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picUnselectedUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosition()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->position:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScale()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->scale:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v1, v0, v1

    .line 5
    .line 6
    if-gez v1, :cond_0

    .line 7
    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    :cond_0
    return v0
.end method

.method public getSendType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->sendType:I

    .line 2
    .line 3
    return v0
.end method

.method public getSensitivity()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->sensitivity:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextRocketCenter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->textRocketCenter:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCrossPicRockerDirection(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->crossPicRockerDirection:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCrossPicRockerDirectionMD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->crossPicRockerDirectionMD5:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCrossPicRockerDirectionUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->crossPicRockerDirectionUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDrawerId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->drawerId:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setDrawerList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->drawerList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setDrawerSelectedBorderColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->drawerSelectedBorderColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHideText(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->hideText:Z

    .line 2
    .line 3
    return-void
.end method

.method public setKeyType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->keyType:I

    .line 2
    .line 3
    return-void
.end method

.method public setKeys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->keys:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPicCenter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picCenter:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPicCenterMD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picCenterMD5:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPicCenterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picCenterUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPicSelected(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picSelected:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPicSelectedMD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picSelectedMD5:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPicSelectedUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picSelectedUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPicUnselected(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picUnselected:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPicUnselectedMD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picUnselectedMD5:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPicUnselectedUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picUnselectedUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPosition(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->position:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->scale:F

    .line 2
    .line 3
    return-void
.end method

.method public setSendType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->sendType:I

    .line 2
    .line 3
    return-void
.end method

.method public setSensitivity(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->sensitivity:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public setTextRocketCenter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->textRocketCenter:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "HmVirtualViewBean{uuid=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->uuid:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", name=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->name:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", keys="

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->keys:Ljava/util/List;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", position="

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->position:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", keyType="

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->keyType:I

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ", sendType="

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->sendType:I

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, ", scale="

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->scale:F

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, ", drawerId="

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->drawerId:Ljava/lang/Long;

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, ", drawerList="

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->drawerList:Ljava/util/List;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, ", picCenter=\'"

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picCenter:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v2, ", picCenterMD5=\'"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picCenterMD5:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v2, ", picCenterUrl=\'"

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picCenterUrl:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v2, ", picSelectedUrl=\'"

    .line 144
    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picSelectedUrl:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v2, ", picUnselectedUrl=\'"

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->picUnselectedUrl:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v2, ", crossPicRockerDirectionUrl=\'"

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->crossPicRockerDirectionUrl:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const/16 v1, 0x7d

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    return-object v0
.end method

.class public Lcom/join/mgps/activity/HandShankPSPActivity;
.super Lcom/join/mgps/activity/HandShankBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HandShankPSPActivity$a;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0096
.end annotation


# instance fields
.field private KEY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private PSP_KEY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field a:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/activity/HandShankPSPActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private isReset:Z

.field l:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private okMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field r:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field resetButn:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field select:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private selectBtn:Landroid/widget/Button;

.field start:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field titleText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private unSetKeyBoradName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unSetTag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field x:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field y:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->KEY_MAP:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 24
    .line 25
    return-void
.end method

.method private getMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PSP:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/join/mgps/joystick/map/d;->c(Ljava/lang/String;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lcom/join/mgps/joystick/map/b;->r0:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/util/Map$Entry;

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/String;

    .line 47
    .line 48
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-object v0
.end method

.method private initBtn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->titleText:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "PSP\u6e38\u620f\u624b\u67c4\u8bbe\u7f6e"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->select:Landroid/widget/Button;

    .line 9
    .line 10
    const-string v1, "PSP_KEY_SELECT"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->start:Landroid/widget/Button;

    .line 16
    .line 17
    const-string v1, "PSP_KEY_START"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->select:Landroid/widget/Button;

    .line 23
    .line 24
    const-string v1, "\u9009\u62e9"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->start:Landroid/widget/Button;

    .line 30
    .line 31
    const-string v1, "\u5f00\u59cb"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->select:Landroid/widget/Button;

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->start:Landroid/widget/Button;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->l:Landroid/widget/Button;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->r:Landroid/widget/Button;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->y:Landroid/widget/Button;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->x:Landroid/widget/Button;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->b:Landroid/widget/Button;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->a:Landroid/widget/Button;

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private initMap()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v11, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 9
    .line 10
    const v3, 0x7f0a1613

    .line 11
    .line 12
    .line 13
    const v4, 0x7f0806d6

    .line 14
    .line 15
    .line 16
    const v5, 0x7f0806d8

    .line 17
    .line 18
    .line 19
    const v6, 0x7f0806d7

    .line 20
    .line 21
    .line 22
    const v7, 0x7f060196

    .line 23
    .line 24
    .line 25
    const v8, 0x7f060198

    .line 26
    .line 27
    .line 28
    const v9, 0x7f060197

    .line 29
    .line 30
    .line 31
    const v10, 0x7f0a1622

    .line 32
    .line 33
    .line 34
    move-object v1, v11

    .line 35
    move-object v2, p0

    .line 36
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankPSPActivity$a;-><init>(Lcom/join/mgps/activity/HandShankPSPActivity;IIIIIIII)V

    .line 37
    .line 38
    .line 39
    const-string v1, "PSP_KEY_START"

    .line 40
    .line 41
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 45
    .line 46
    new-instance v11, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 47
    .line 48
    const v3, 0x7f0a14e1

    .line 49
    .line 50
    .line 51
    const v10, 0x7f0a14ea

    .line 52
    .line 53
    .line 54
    move-object v1, v11

    .line 55
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankPSPActivity$a;-><init>(Lcom/join/mgps/activity/HandShankPSPActivity;IIIIIIII)V

    .line 56
    .line 57
    .line 58
    const-string v1, "PSP_KEY_SELECT"

    .line 59
    .line 60
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 64
    .line 65
    new-instance v11, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 66
    .line 67
    const v3, 0x7f0a0031

    .line 68
    .line 69
    .line 70
    const v4, 0x7f0806b8

    .line 71
    .line 72
    .line 73
    const v5, 0x7f0806ba

    .line 74
    .line 75
    .line 76
    const v6, 0x7f0806b9

    .line 77
    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    const/4 v8, 0x0

    .line 81
    const/4 v9, 0x0

    .line 82
    const v10, 0x7f0a0033

    .line 83
    .line 84
    .line 85
    move-object v1, v11

    .line 86
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankPSPActivity$a;-><init>(Lcom/join/mgps/activity/HandShankPSPActivity;IIIIIIII)V

    .line 87
    .line 88
    .line 89
    const-string v1, "PSP_KEY_A"

    .line 90
    .line 91
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 95
    .line 96
    new-instance v11, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 97
    .line 98
    const v3, 0x7f0a0136

    .line 99
    .line 100
    .line 101
    const v4, 0x7f0806bb

    .line 102
    .line 103
    .line 104
    const v5, 0x7f0806bd

    .line 105
    .line 106
    .line 107
    const v6, 0x7f0806bc

    .line 108
    .line 109
    .line 110
    const v10, 0x7f0a013a

    .line 111
    .line 112
    .line 113
    move-object v1, v11

    .line 114
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankPSPActivity$a;-><init>(Lcom/join/mgps/activity/HandShankPSPActivity;IIIIIIII)V

    .line 115
    .line 116
    .line 117
    const-string v1, "PSP_KEY_B"

    .line 118
    .line 119
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 123
    .line 124
    new-instance v11, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 125
    .line 126
    const v3, 0x7f0a1c06

    .line 127
    .line 128
    .line 129
    const v4, 0x7f0806bf

    .line 130
    .line 131
    .line 132
    const v5, 0x7f0806c1

    .line 133
    .line 134
    .line 135
    const v6, 0x7f0806c0

    .line 136
    .line 137
    .line 138
    const v10, 0x7f0a1c0a

    .line 139
    .line 140
    .line 141
    move-object v1, v11

    .line 142
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankPSPActivity$a;-><init>(Lcom/join/mgps/activity/HandShankPSPActivity;IIIIIIII)V

    .line 143
    .line 144
    .line 145
    const-string v1, "PSP_KEY_X"

    .line 146
    .line 147
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 151
    .line 152
    new-instance v11, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 153
    .line 154
    const v3, 0x7f0a1c1e

    .line 155
    .line 156
    .line 157
    const v4, 0x7f0806c2

    .line 158
    .line 159
    .line 160
    const v5, 0x7f0806c4

    .line 161
    .line 162
    .line 163
    const v6, 0x7f0806c3

    .line 164
    .line 165
    .line 166
    const v10, 0x7f0a1c1f

    .line 167
    .line 168
    .line 169
    move-object v1, v11

    .line 170
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankPSPActivity$a;-><init>(Lcom/join/mgps/activity/HandShankPSPActivity;IIIIIIII)V

    .line 171
    .line 172
    .line 173
    const-string v1, "PSP_KEY_Y"

    .line 174
    .line 175
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 179
    .line 180
    new-instance v11, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 181
    .line 182
    const v3, 0x7f0a0dce

    .line 183
    .line 184
    .line 185
    const v4, 0x7f0806ca

    .line 186
    .line 187
    .line 188
    const v5, 0x7f0806cc

    .line 189
    .line 190
    .line 191
    const v6, 0x7f0806cb

    .line 192
    .line 193
    .line 194
    const v7, 0x7f060196

    .line 195
    .line 196
    .line 197
    const v8, 0x7f060198

    .line 198
    .line 199
    .line 200
    const v9, 0x7f060197

    .line 201
    .line 202
    .line 203
    const v10, 0x7f0a0dd0

    .line 204
    .line 205
    .line 206
    move-object v1, v11

    .line 207
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankPSPActivity$a;-><init>(Lcom/join/mgps/activity/HandShankPSPActivity;IIIIIIII)V

    .line 208
    .line 209
    .line 210
    const-string v1, "PSP_KEY_L"

    .line 211
    .line 212
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 216
    .line 217
    new-instance v11, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 218
    .line 219
    const v3, 0x7f0a12ee

    .line 220
    .line 221
    .line 222
    const v10, 0x7f0a12f2

    .line 223
    .line 224
    .line 225
    move-object v1, v11

    .line 226
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankPSPActivity$a;-><init>(Lcom/join/mgps/activity/HandShankPSPActivity;IIIIIIII)V

    .line 227
    .line 228
    .line 229
    const-string v1, "PSP_KEY_R"

    .line 230
    .line 231
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankPSPActivity;->initMapData()V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method private initMapData()V
    .locals 10

    .line 1
    const-string v0, "KEY"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->c(Ljava/lang/String;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/join/mgps/joystick/map/b;->a(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->KEY_MAP:Ljava/util/Map;

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->KEY_MAP:Ljava/util/Map;

    .line 54
    .line 55
    const-string v1, "KEY_R1"

    .line 56
    .line 57
    const-string v2, "KEY_L1"

    .line 58
    .line 59
    const-string v3, "KEY_B"

    .line 60
    .line 61
    const-string v4, "KEY_Y"

    .line 62
    .line 63
    const-string v5, "KEY_A"

    .line 64
    .line 65
    const-string v6, "KEY_X"

    .line 66
    .line 67
    const-string v7, "KEY_SELECT"

    .line 68
    .line 69
    const-string v8, "KEY_START"

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->KEY_MAP:Ljava/util/Map;

    .line 80
    .line 81
    const/16 v9, 0x6c

    .line 82
    .line 83
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->KEY_MAP:Ljava/util/Map;

    .line 91
    .line 92
    const/16 v9, 0x6d

    .line 93
    .line 94
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->KEY_MAP:Ljava/util/Map;

    .line 102
    .line 103
    const/16 v9, 0x63

    .line 104
    .line 105
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->KEY_MAP:Ljava/util/Map;

    .line 113
    .line 114
    const/16 v9, 0x60

    .line 115
    .line 116
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->KEY_MAP:Ljava/util/Map;

    .line 124
    .line 125
    const/16 v9, 0x64

    .line 126
    .line 127
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->KEY_MAP:Ljava/util/Map;

    .line 135
    .line 136
    const/16 v9, 0x61

    .line 137
    .line 138
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->KEY_MAP:Ljava/util/Map;

    .line 146
    .line 147
    const/16 v9, 0x66

    .line 148
    .line 149
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->KEY_MAP:Ljava/util/Map;

    .line 157
    .line 158
    const/16 v9, 0x67

    .line 159
    .line 160
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankPSPActivity;->getMap()Ljava/util/Map;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 172
    .line 173
    if-eqz v0, :cond_4

    .line 174
    .line 175
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_5

    .line 180
    .line 181
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 182
    .line 183
    const-string v9, "PSP_KEY_SELECT"

    .line 184
    .line 185
    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 189
    .line 190
    const-string v7, "PSP_KEY_START"

    .line 191
    .line 192
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 196
    .line 197
    const-string v7, "PSP_KEY_X"

    .line 198
    .line 199
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 203
    .line 204
    const-string v6, "PSP_KEY_A"

    .line 205
    .line 206
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 210
    .line 211
    const-string v5, "PSP_KEY_Y"

    .line 212
    .line 213
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 217
    .line 218
    const-string v4, "PSP_KEY_B"

    .line 219
    .line 220
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 224
    .line 225
    const-string v3, "PSP_KEY_L"

    .line 226
    .line 227
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 231
    .line 232
    const-string v2, "PSP_KEY_R"

    .line 233
    .line 234
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    :cond_5
    return-void
.end method

.method private initView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->KEY_MAP:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    iget v1, v1, Lcom/join/mgps/activity/HandShankPSPActivity$a;->h:I

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/widget/TextView;

    .line 54
    .line 55
    sget-object v3, Lcom/join/mgps/joystick/map/b;->a:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/CharSequence;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget v1, v1, Lcom/join/mgps/activity/HandShankPSPActivity$a;->h:I

    .line 68
    .line 69
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/widget/TextView;

    .line 74
    .line 75
    const-string v2, ""

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method private putMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "okMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 31
    .line 32
    sget-object v4, Lcom/join/mgps/joystick/map/b;->r0:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-object v0
.end method

.method private reset()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->isReset:Z

    .line 5
    .line 6
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 12
    .line 13
    const-string v2, "KEY_SELECT"

    .line 14
    .line 15
    const-string v3, "PSP_KEY_SELECT"

    .line 16
    .line 17
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 21
    .line 22
    const-string v4, "KEY_START"

    .line 23
    .line 24
    const-string v5, "PSP_KEY_START"

    .line 25
    .line 26
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 30
    .line 31
    const-string v6, "KEY_X"

    .line 32
    .line 33
    const-string v7, "PSP_KEY_X"

    .line 34
    .line 35
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 39
    .line 40
    const-string v8, "KEY_A"

    .line 41
    .line 42
    const-string v9, "PSP_KEY_A"

    .line 43
    .line 44
    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 48
    .line 49
    const-string v10, "KEY_Y"

    .line 50
    .line 51
    const-string v11, "PSP_KEY_Y"

    .line 52
    .line 53
    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 57
    .line 58
    const-string v12, "KEY_B"

    .line 59
    .line 60
    const-string v13, "PSP_KEY_B"

    .line 61
    .line 62
    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 66
    .line 67
    const-string v14, "KEY_L1"

    .line 68
    .line 69
    const-string v15, "PSP_KEY_L"

    .line 70
    .line 71
    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 75
    .line 76
    move-object/from16 v16, v14

    .line 77
    .line 78
    const-string v14, "KEY_R1"

    .line 79
    .line 80
    move-object/from16 v17, v15

    .line 81
    .line 82
    const-string v15, "PSP_KEY_R"

    .line 83
    .line 84
    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 93
    .line 94
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 98
    .line 99
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 103
    .line 104
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 108
    .line 109
    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 113
    .line 114
    invoke-interface {v1, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 118
    .line 119
    invoke-interface {v1, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 123
    .line 124
    move-object/from16 v2, v16

    .line 125
    .line 126
    move-object/from16 v3, v17

    .line 127
    .line 128
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 132
    .line 133
    invoke-interface {v1, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_1

    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 159
    .line 160
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Ljava/lang/String;

    .line 165
    .line 166
    iget-object v4, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 167
    .line 168
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 173
    .line 174
    iget v4, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->h:I

    .line 175
    .line 176
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    check-cast v4, Landroid/widget/TextView;

    .line 181
    .line 182
    sget-object v5, Lcom/join/mgps/joystick/map/b;->a:Ljava/util/Map;

    .line 183
    .line 184
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Ljava/lang/CharSequence;

    .line 189
    .line 190
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    iget v3, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->a:I

    .line 194
    .line 195
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Landroid/widget/Button;

    .line 200
    .line 201
    iget v4, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->b:I

    .line 202
    .line 203
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 204
    .line 205
    .line 206
    iget v3, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->e:I

    .line 207
    .line 208
    if-eqz v3, :cond_0

    .line 209
    .line 210
    iget v3, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->a:I

    .line 211
    .line 212
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    check-cast v3, Landroid/widget/Button;

    .line 217
    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    iget v2, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->e:I

    .line 223
    .line 224
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_1
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PSP:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 233
    .line 234
    iget-object v2, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 235
    .line 236
    invoke-direct {v0, v2}, Lcom/join/mgps/activity/HandShankPSPActivity;->putMap(Ljava/util/Map;)Ljava/util/Map;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-static {v0, v1, v2}, Lcom/join/mgps/joystick/map/d;->o(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;Ljava/util/Map;)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 244
    .line 245
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method private revertBtn()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v3, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    iget v3, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->a:I

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroid/widget/Button;

    .line 52
    .line 53
    iget v4, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->e:I

    .line 54
    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iget v5, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->g:I

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget v4, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->d:I

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    .line 74
    .line 75
    iget v2, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->h:I

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Landroid/widget/TextView;

    .line 82
    .line 83
    sget-object v3, Lcom/join/mgps/joystick/map/b;->a:Ljava/util/Map;

    .line 84
    .line 85
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 86
    .line 87
    invoke-static {v4, v1}, Lcom/join/mgps/joystick/map/b;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljava/lang/CharSequence;

    .line 96
    .line 97
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    iget v1, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->a:I

    .line 102
    .line 103
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Landroid/widget/Button;

    .line 108
    .line 109
    iget v3, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->e:I

    .line 110
    .line 111
    if-eqz v3, :cond_2

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iget v4, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->e:I

    .line 118
    .line 119
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .line 125
    .line 126
    :cond_2
    iget v2, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->b:I

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    return-void
.end method

.method private unSet()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->unSetKeyBoradName:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->unSetTag:Ljava/util/List;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v2, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->unSetTag:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/lang/String;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->unSetKeyBoradName:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->unSetTag:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Ljava/lang/String;

    .line 106
    .line 107
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 108
    .line 109
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Ljava/lang/String;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->unSetKeyBoradName:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_4

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->unSetKeyBoradName:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 132
    .line 133
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->unSetKeyBoradName:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->unSetTag:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-lt v0, v1, :cond_6

    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    :goto_3
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->unSetTag:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-ge v0, v1, :cond_6

    .line 159
    .line 160
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 161
    .line 162
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->unSetKeyBoradName:Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Ljava/lang/String;

    .line 169
    .line 170
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->unSetTag:Ljava/util/List;

    .line 171
    .line 172
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Ljava/lang/String;

    .line 177
    .line 178
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_6
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankPSPActivity;->initMap()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankPSPActivity;->initBtn()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankPSPActivity;->initView()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method backImage()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method okButn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->isReset:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->isReset:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankPSPActivity;->unSet()V

    .line 23
    .line 24
    .line 25
    :cond_1
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PSP:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 28
    .line 29
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/HandShankPSPActivity;->putMap(Ljava/util/Map;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {p0, v0, v1}, Lcom/join/mgps/joystick/map/d;->o(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->selectBtn:Landroid/widget/Button;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->selectBtn:Landroid/widget/Button;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->selectBtn:Landroid/widget/Button;

    .line 45
    .line 46
    iget v2, v0, Lcom/join/mgps/activity/HandShankPSPActivity$a;->b:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    .line 50
    .line 51
    iget v0, v0, Lcom/join/mgps/activity/HandShankPSPActivity$a;->e:I

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->selectBtn:Landroid/widget/Button;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const v2, 0x7f060196

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    :cond_1
    check-cast p1, Landroid/widget/Button;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->selectBtn:Landroid/widget/Button;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->selectBtn:Landroid/widget/Button;

    .line 88
    .line 89
    iget v1, p1, Lcom/join/mgps/activity/HandShankPSPActivity$a;->c:I

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    .line 93
    .line 94
    iget p1, p1, Lcom/join/mgps/activity/HandShankPSPActivity$a;->e:I

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->selectBtn:Landroid/widget/Button;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const v1, 0x7f060198

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    .line 113
    .line 114
    :cond_2
    return-void
.end method

.method protected onKeyEvent(ILcom/papa/controller/core/PadKeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/papa/controller/core/BaseEvent;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    invoke-virtual {p2}, Lcom/papa/controller/core/PadKeyEvent;->w()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->padEvent2KeyEvent(Lcom/papa/controller/core/PadKeyEvent;)Landroid/view/KeyEvent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/HandShankPSPActivity;->onKeyUp1(ILandroid/view/KeyEvent;)Z

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->onKeyEvent(ILcom/papa/controller/core/PadKeyEvent;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public onKeyUp1(ILandroid/view/KeyEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    const/4 v0, 0x4

    .line 22
    if-eq p1, v0, :cond_5

    .line 23
    .line 24
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->KEY_MAP:Ljava/util/Map;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p2, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const/4 v0, 0x1

    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->selectBtn:Landroid/widget/Button;

    .line 39
    .line 40
    if-eqz p2, :cond_4

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Ljava/lang/String;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->KEY_MAP:Ljava/util/Map;

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v2, p1}, Lcom/join/mgps/joystick/map/b;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/lang/String;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const-string v3, ""

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 73
    .line 74
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 83
    .line 84
    iget v2, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->h:I

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {v2, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->PSP_KEY_MAP:Ljava/util/Map;

    .line 104
    .line 105
    invoke-static {v2, p1}, Lcom/join/mgps/joystick/map/b;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Ljava/lang/String;

    .line 110
    .line 111
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 112
    .line 113
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 118
    .line 119
    iget v2, v2, Lcom/join/mgps/activity/HandShankPSPActivity$a;->h:I

    .line 120
    .line 121
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->okMap:Ljava/util/Map;

    .line 131
    .line 132
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    iput-boolean v1, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->isReset:Z

    .line 136
    .line 137
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->data:Ljava/util/Map;

    .line 138
    .line 139
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lcom/join/mgps/activity/HandShankPSPActivity$a;

    .line 144
    .line 145
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->selectBtn:Landroid/widget/Button;

    .line 146
    .line 147
    iget p1, p1, Lcom/join/mgps/activity/HandShankPSPActivity$a;->d:I

    .line 148
    .line 149
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 150
    .line 151
    .line 152
    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankPSPActivity;->selectBtn:Landroid/widget/Button;

    .line 154
    .line 155
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankPSPActivity;->revertBtn()V

    .line 156
    .line 157
    .line 158
    :cond_4
    return v0

    .line 159
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method resetButn()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankPSPActivity;->reset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

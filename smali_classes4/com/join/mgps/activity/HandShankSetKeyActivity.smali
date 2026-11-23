.class public Lcom/join/mgps/activity/HandShankSetKeyActivity;
.super Lcom/join/mgps/activity/HandShankBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HandShankSetKeyActivity$a;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d037a
.end annotation


# instance fields
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
            "Lcom/join/mgps/activity/HandShankSetKeyActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field down:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field from:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private keyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field l1:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l2:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field left:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r1:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r2:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field right:Landroid/widget/Button;
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

.field private unSetKeyCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unSetKeyTag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field up:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
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
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

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
    :cond_0
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
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 28
    .line 29
    iget v2, v1, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->a:I

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/widget/Button;

    .line 36
    .line 37
    iget v3, v1, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->b:I

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    iget v3, v1, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->e:I

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget v1, v1, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->e:I

    .line 51
    .line 52
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 66
    .line 67
    const-string v1, "108"

    .line 68
    .line 69
    const-string v2, "KEY_START"

    .line 70
    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 75
    .line 76
    const-string v1, "109"

    .line 77
    .line 78
    const-string v2, "KEY_SELECT"

    .line 79
    .line 80
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 84
    .line 85
    const-string v1, "99"

    .line 86
    .line 87
    const-string v2, "KEY_X"

    .line 88
    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 93
    .line 94
    const-string v1, "96"

    .line 95
    .line 96
    const-string v2, "KEY_A"

    .line 97
    .line 98
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 102
    .line 103
    const-string v1, "100"

    .line 104
    .line 105
    const-string v2, "KEY_Y"

    .line 106
    .line 107
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 111
    .line 112
    const-string v1, "97"

    .line 113
    .line 114
    const-string v2, "KEY_B"

    .line 115
    .line 116
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 120
    .line 121
    const-string v1, "102"

    .line 122
    .line 123
    const-string v2, "KEY_L1"

    .line 124
    .line 125
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 129
    .line 130
    const-string v1, "104"

    .line 131
    .line 132
    const-string v2, "KEY_L2"

    .line 133
    .line 134
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 138
    .line 139
    const-string v1, "103"

    .line 140
    .line 141
    const-string v2, "KEY_R1"

    .line 142
    .line 143
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 147
    .line 148
    const-string v1, "105"

    .line 149
    .line 150
    const-string v2, "KEY_R2"

    .line 151
    .line 152
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 156
    .line 157
    const-string v1, "21"

    .line 158
    .line 159
    const-string v2, "KEY_DPAD_LEFT"

    .line 160
    .line 161
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 165
    .line 166
    const-string v1, "19"

    .line 167
    .line 168
    const-string v2, "KEY_DPAD_UP"

    .line 169
    .line 170
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 174
    .line 175
    const-string v1, "22"

    .line 176
    .line 177
    const-string v2, "KEY_DPAD_RIGHT"

    .line 178
    .line 179
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 183
    .line 184
    const-string v1, "20"

    .line 185
    .line 186
    const-string v2, "KEY_DPAD_DOWN"

    .line 187
    .line 188
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 192
    .line 193
    const-string v1, "107"

    .line 194
    .line 195
    const-string v2, "KEY_BUTTON_THUMBR"

    .line 196
    .line 197
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 201
    .line 202
    const-string v1, "106"

    .line 203
    .line 204
    const-string v2, "KEY_BUTTON_THUMBL"

    .line 205
    .line 206
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    const-string v0, "KEY"

    .line 210
    .line 211
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 212
    .line 213
    invoke-static {v0, v1}, Lcom/join/mgps/joystick/map/d;->p(Ljava/lang/String;Ljava/util/Map;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 217
    .line 218
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 219
    .line 220
    .line 221
    const-string v0, "\u6309\u94ae\u91cd\u7f6e\u6210\u529f"

    .line 222
    .line 223
    const/4 v1, 0x1

    .line 224
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method private initBtn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->l2:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->l1:Landroid/widget/Button;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->r2:Landroid/widget/Button;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->r1:Landroid/widget/Button;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->x:Landroid/widget/Button;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->y:Landroid/widget/Button;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->a:Landroid/widget/Button;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->b:Landroid/widget/Button;

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->up:Landroid/widget/Button;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->down:Landroid/widget/Button;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->left:Landroid/widget/Button;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->right:Landroid/widget/Button;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->start:Landroid/widget/Button;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->select:Landroid/widget/Button;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private initMap()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v10, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 9
    .line 10
    const v3, 0x7f0a0dcf

    .line 11
    .line 12
    .line 13
    const v4, 0x7f0806ca

    .line 14
    .line 15
    .line 16
    const v5, 0x7f0806cc

    .line 17
    .line 18
    .line 19
    const v6, 0x7f0806cb

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
    move-object v1, v10

    .line 32
    move-object v2, p0

    .line 33
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSetKeyActivity;IIIIIII)V

    .line 34
    .line 35
    .line 36
    const-string v1, "KEY_L1"

    .line 37
    .line 38
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 42
    .line 43
    new-instance v10, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 44
    .line 45
    const v3, 0x7f0a0dd1

    .line 46
    .line 47
    .line 48
    move-object v1, v10

    .line 49
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSetKeyActivity;IIIIIII)V

    .line 50
    .line 51
    .line 52
    const-string v1, "KEY_L2"

    .line 53
    .line 54
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 58
    .line 59
    new-instance v10, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 60
    .line 61
    const v3, 0x7f0a12ef

    .line 62
    .line 63
    .line 64
    move-object v1, v10

    .line 65
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSetKeyActivity;IIIIIII)V

    .line 66
    .line 67
    .line 68
    const-string v1, "KEY_R1"

    .line 69
    .line 70
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 74
    .line 75
    new-instance v10, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 76
    .line 77
    const v3, 0x7f0a12f3

    .line 78
    .line 79
    .line 80
    move-object v1, v10

    .line 81
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSetKeyActivity;IIIIIII)V

    .line 82
    .line 83
    .line 84
    const-string v1, "KEY_R2"

    .line 85
    .line 86
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 90
    .line 91
    new-instance v10, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 92
    .line 93
    const v3, 0x7f0a1c1e

    .line 94
    .line 95
    .line 96
    move-object v1, v10

    .line 97
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSetKeyActivity;IIIIIII)V

    .line 98
    .line 99
    .line 100
    const-string v1, "KEY_Y"

    .line 101
    .line 102
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 106
    .line 107
    new-instance v10, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 108
    .line 109
    const v3, 0x7f0a1c06

    .line 110
    .line 111
    .line 112
    move-object v1, v10

    .line 113
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSetKeyActivity;IIIIIII)V

    .line 114
    .line 115
    .line 116
    const-string v1, "KEY_X"

    .line 117
    .line 118
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 122
    .line 123
    new-instance v10, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 124
    .line 125
    const v3, 0x7f0a0031

    .line 126
    .line 127
    .line 128
    move-object v1, v10

    .line 129
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSetKeyActivity;IIIIIII)V

    .line 130
    .line 131
    .line 132
    const-string v1, "KEY_A"

    .line 133
    .line 134
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 138
    .line 139
    new-instance v10, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 140
    .line 141
    const v3, 0x7f0a0136

    .line 142
    .line 143
    .line 144
    move-object v1, v10

    .line 145
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSetKeyActivity;IIIIIII)V

    .line 146
    .line 147
    .line 148
    const-string v1, "KEY_B"

    .line 149
    .line 150
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 154
    .line 155
    new-instance v10, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 156
    .line 157
    const v3, 0x7f0a14e1

    .line 158
    .line 159
    .line 160
    const v4, 0x7f0806d6

    .line 161
    .line 162
    .line 163
    const v5, 0x7f0806d8

    .line 164
    .line 165
    .line 166
    const v6, 0x7f0806d7

    .line 167
    .line 168
    .line 169
    move-object v1, v10

    .line 170
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSetKeyActivity;IIIIIII)V

    .line 171
    .line 172
    .line 173
    const-string v1, "KEY_SELECT"

    .line 174
    .line 175
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 179
    .line 180
    new-instance v10, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 181
    .line 182
    const v3, 0x7f0a1613

    .line 183
    .line 184
    .line 185
    move-object v1, v10

    .line 186
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSetKeyActivity;IIIIIII)V

    .line 187
    .line 188
    .line 189
    const-string v1, "KEY_START"

    .line 190
    .line 191
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 195
    .line 196
    new-instance v10, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 197
    .line 198
    const v3, 0x7f0a1aeb

    .line 199
    .line 200
    .line 201
    const v4, 0x7f0806dc

    .line 202
    .line 203
    .line 204
    const v5, 0x7f0806de

    .line 205
    .line 206
    .line 207
    const v6, 0x7f0806dd

    .line 208
    .line 209
    .line 210
    const/4 v7, 0x0

    .line 211
    const/4 v8, 0x0

    .line 212
    const/4 v9, 0x0

    .line 213
    move-object v1, v10

    .line 214
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSetKeyActivity;IIIIIII)V

    .line 215
    .line 216
    .line 217
    const-string v1, "KEY_DPAD_UP"

    .line 218
    .line 219
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 223
    .line 224
    new-instance v10, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 225
    .line 226
    const v3, 0x7f0a04f1

    .line 227
    .line 228
    .line 229
    const v4, 0x7f0806c6

    .line 230
    .line 231
    .line 232
    const v5, 0x7f0806c8

    .line 233
    .line 234
    .line 235
    const v6, 0x7f0806c7

    .line 236
    .line 237
    .line 238
    move-object v1, v10

    .line 239
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSetKeyActivity;IIIIIII)V

    .line 240
    .line 241
    .line 242
    const-string v1, "KEY_DPAD_DOWN"

    .line 243
    .line 244
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 248
    .line 249
    new-instance v10, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 250
    .line 251
    const v3, 0x7f0a0e44

    .line 252
    .line 253
    .line 254
    const v4, 0x7f0806ce

    .line 255
    .line 256
    .line 257
    const v5, 0x7f0806d0

    .line 258
    .line 259
    .line 260
    const v6, 0x7f0806cf

    .line 261
    .line 262
    .line 263
    move-object v1, v10

    .line 264
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSetKeyActivity;IIIIIII)V

    .line 265
    .line 266
    .line 267
    const-string v1, "KEY_DPAD_LEFT"

    .line 268
    .line 269
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 273
    .line 274
    new-instance v10, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 275
    .line 276
    const v3, 0x7f0a139a

    .line 277
    .line 278
    .line 279
    const v4, 0x7f0806d2

    .line 280
    .line 281
    .line 282
    const v5, 0x7f0806d4

    .line 283
    .line 284
    .line 285
    const v6, 0x7f0806d3

    .line 286
    .line 287
    .line 288
    move-object v1, v10

    .line 289
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankSetKeyActivity;IIIIIII)V

    .line 290
    .line 291
    .line 292
    const-string v1, "KEY_DPAD_RIGHT"

    .line 293
    .line 294
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    new-instance v0, Ljava/util/HashMap;

    .line 298
    .line 299
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    .line 301
    .line 302
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 303
    .line 304
    return-void
.end method

.method private revertBtn()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v3, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget v1, v2, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->a:I

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/Button;

    .line 52
    .line 53
    iget v3, v2, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->e:I

    .line 54
    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget v4, v2, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->g:I

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget v2, v2, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->d:I

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget v1, v2, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->a:I

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/widget/Button;

    .line 83
    .line 84
    iget v3, v2, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->e:I

    .line 85
    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iget v4, v2, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->e:I

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iget v2, v2, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->b:I

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    return-void
.end method

.method private unSet()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->unSetKeyCode:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->unSetKeyTag:Ljava/util/List;

    .line 14
    .line 15
    sget-object v0, Lcom/join/mgps/joystick/map/b;->b:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->unSetKeyTag:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Lcom/join/mgps/joystick/map/b;->b:Ljava/util/Map;

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
    const-string v2, ""

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Integer;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->unSetKeyCode:Ljava/util/List;

    .line 101
    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->unSetKeyTag:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_5

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Ljava/lang/String;

    .line 138
    .line 139
    sget-object v3, Lcom/join/mgps/joystick/map/b;->b:Ljava/util/Map;

    .line 140
    .line 141
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Ljava/lang/Integer;

    .line 146
    .line 147
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->unSetKeyCode:Ljava/util/List;

    .line 148
    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_4

    .line 169
    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 171
    .line 172
    .line 173
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->unSetKeyCode:Ljava/util/List;

    .line 174
    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 194
    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->unSetKeyCode:Ljava/util/List;

    .line 215
    .line 216
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->unSetKeyTag:Ljava/util/List;

    .line 221
    .line 222
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-ne v0, v1, :cond_6

    .line 227
    .line 228
    const/4 v0, 0x0

    .line 229
    :goto_3
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->unSetKeyCode:Ljava/util/List;

    .line 230
    .line 231
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-ge v0, v1, :cond_6

    .line 236
    .line 237
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 238
    .line 239
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->unSetKeyCode:Ljava/util/List;

    .line 240
    .line 241
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    check-cast v2, Ljava/lang/String;

    .line 246
    .line 247
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->unSetKeyTag:Ljava/util/List;

    .line 248
    .line 249
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    check-cast v3, Ljava/lang/String;

    .line 254
    .line 255
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    add-int/lit8 v0, v0, 0x1

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_6
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankSetKeyActivity;->initMap()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankSetKeyActivity;->initBtn()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method backImage()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->from:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->from:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "first"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    const-class v1, Lcom/join/mgps/activity/HandShankYesActivity_;

    .line 26
    .line 27
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    const/high16 v1, 0x24000000

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method okButn()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xe

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankSetKeyActivity;->unSet()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 15
    .line 16
    const-string v1, "107"

    .line 17
    .line 18
    const-string v2, "KEY_BUTTON_THUMBR"

    .line 19
    .line 20
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 24
    .line 25
    const-string v1, "106"

    .line 26
    .line 27
    const-string v2, "KEY_BUTTON_THUMBL"

    .line 28
    .line 29
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v0, "KEY"

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/join/mgps/joystick/map/d;->p(Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Landroid/content/Intent;

    .line 40
    .line 41
    const-class v1, Lcom/join/mgps/activity/HandShankYesActivity_;

    .line 42
    .line 43
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    const/high16 v1, 0x24000000

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 55
    .line 56
    .line 57
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
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

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
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->selectBtn:Landroid/widget/Button;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->selectBtn:Landroid/widget/Button;

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
    check-cast v0, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->selectBtn:Landroid/widget/Button;

    .line 45
    .line 46
    iget v2, v0, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->b:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    .line 50
    .line 51
    iget v0, v0, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->e:I

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->selectBtn:Landroid/widget/Button;

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
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->selectBtn:Landroid/widget/Button;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

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
    check-cast p1, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->selectBtn:Landroid/widget/Button;

    .line 88
    .line 89
    iget v1, p1, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->c:I

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    .line 93
    .line 94
    iget p1, p1, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->e:I

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->selectBtn:Landroid/widget/Button;

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/HandShankSetKeyActivity;->onKeyUp1(ILandroid/view/KeyEvent;)Z

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
    .locals 3
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
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 v0, 0x4

    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    const/16 p2, 0x6a

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    if-eq p1, p2, :cond_2

    .line 28
    .line 29
    const/16 p2, 0x6b

    .line 30
    .line 31
    if-ne p1, p2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->selectBtn:Landroid/widget/Button;

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Ljava/lang/String;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->keyMap:Ljava/util/Map;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, ""

    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->data:Ljava/util/Map;

    .line 67
    .line 68
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->selectBtn:Landroid/widget/Button;

    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;

    .line 79
    .line 80
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->selectBtn:Landroid/widget/Button;

    .line 81
    .line 82
    iget p1, p1, Lcom/join/mgps/activity/HandShankSetKeyActivity$a;->d:I

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->selectBtn:Landroid/widget/Button;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const v1, 0x7f060197

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    .line 102
    .line 103
    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankSetKeyActivity;->selectBtn:Landroid/widget/Button;

    .line 105
    .line 106
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankSetKeyActivity;->revertBtn()V

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_0
    return v0

    .line 110
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
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
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankSetKeyActivity;->clear()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

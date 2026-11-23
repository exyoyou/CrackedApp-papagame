.class public Lcom/join/mgps/activity/HandShankFBAActivity;
.super Lcom/join/mgps/activity/HandShankBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HandShankFBAActivity$a;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d004f
.end annotation


# instance fields
.field a:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ab:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field abc:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cd:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field customKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field emuMap:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field emuMapKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field emuMapKeysTemp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f1:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f2:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f3:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f4:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private isReset:Z

.field items:[Lcom/join/mgps/activity/HandShankFBAActivity$a;

.field keyMapManager:Lcom/join/mgps/joystick/map/d;

.field resetButn:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field select:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field selectView:Landroid/view/View;

.field sp1:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field sp2:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field sp3:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field sp4:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field sp5:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field start:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field final title:Ljava/lang/String;

.field titleText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field views:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "\u8857\u673a\u6e38\u620f\u624b\u67c4\u8bbe\u7f6e"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->title:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMap:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 11
    .line 12
    new-instance v0, Lcom/join/mgps/joystick/map/d;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMap:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/join/mgps/joystick/map/d;-><init>(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->keyMapManager:Lcom/join/mgps/joystick/map/d;

    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->customKeys:Ljava/util/HashMap;

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMapKeys:Ljava/util/HashMap;

    .line 34
    .line 35
    new-instance v0, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMapKeysTemp:Ljava/util/HashMap;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->selectView:Landroid/view/View;

    .line 44
    .line 45
    return-void
.end method

.method private findPreBindedView(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customKey"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->views:[Landroid/view/View;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    if-ge v0, v2, :cond_1

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v2, v1, Lcom/join/mgps/activity/HandShankFBAActivity$a;->b:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    iget-object v1, v1, Lcom/join/mgps/activity/HandShankFBAActivity$a;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->views:[Landroid/view/View;

    .line 36
    .line 37
    aget-object p1, p1, v0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    :goto_1
    return-object p1
.end method

.method private initEmuMap()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMap:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->f(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "KEY"

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->c(Ljava/lang/String;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->customKeys:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMapKeys:Ljava/util/HashMap;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMap:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/join/mgps/joystick/map/d;->c(Ljava/lang/String;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMapKeysTemp:Ljava/util/HashMap;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMapKeys:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private initView()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    new-array v2, v1, [Landroid/view/View;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->select:Landroid/widget/Button;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    aput-object v3, v2, v4

    .line 11
    .line 12
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->start:Landroid/widget/Button;

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    aput-object v3, v2, v5

    .line 16
    .line 17
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->abc:Landroid/widget/Button;

    .line 18
    .line 19
    const/4 v6, 0x2

    .line 20
    aput-object v3, v2, v6

    .line 21
    .line 22
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->ab:Landroid/widget/Button;

    .line 23
    .line 24
    const/4 v7, 0x3

    .line 25
    aput-object v3, v2, v7

    .line 26
    .line 27
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->cd:Landroid/widget/Button;

    .line 28
    .line 29
    const/4 v8, 0x4

    .line 30
    aput-object v3, v2, v8

    .line 31
    .line 32
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->a:Landroid/widget/Button;

    .line 33
    .line 34
    const/4 v9, 0x5

    .line 35
    aput-object v3, v2, v9

    .line 36
    .line 37
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->b:Landroid/widget/Button;

    .line 38
    .line 39
    const/4 v10, 0x6

    .line 40
    aput-object v3, v2, v10

    .line 41
    .line 42
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->c:Landroid/widget/Button;

    .line 43
    .line 44
    const/4 v11, 0x7

    .line 45
    aput-object v3, v2, v11

    .line 46
    .line 47
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->d:Landroid/widget/Button;

    .line 48
    .line 49
    const/16 v12, 0x8

    .line 50
    .line 51
    aput-object v3, v2, v12

    .line 52
    .line 53
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->e:Landroid/widget/Button;

    .line 54
    .line 55
    const/16 v13, 0x9

    .line 56
    .line 57
    aput-object v3, v2, v13

    .line 58
    .line 59
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->f:Landroid/widget/Button;

    .line 60
    .line 61
    const/16 v14, 0xa

    .line 62
    .line 63
    aput-object v3, v2, v14

    .line 64
    .line 65
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->f1:Landroid/widget/Button;

    .line 66
    .line 67
    const/16 v15, 0xb

    .line 68
    .line 69
    aput-object v3, v2, v15

    .line 70
    .line 71
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->f2:Landroid/widget/Button;

    .line 72
    .line 73
    const/16 v16, 0xc

    .line 74
    .line 75
    aput-object v3, v2, v16

    .line 76
    .line 77
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->f3:Landroid/widget/Button;

    .line 78
    .line 79
    const/16 v17, 0xd

    .line 80
    .line 81
    aput-object v3, v2, v17

    .line 82
    .line 83
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->f4:Landroid/widget/Button;

    .line 84
    .line 85
    const/16 v18, 0xe

    .line 86
    .line 87
    aput-object v3, v2, v18

    .line 88
    .line 89
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->sp1:Landroid/widget/Button;

    .line 90
    .line 91
    const/16 v19, 0xf

    .line 92
    .line 93
    aput-object v3, v2, v19

    .line 94
    .line 95
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->sp2:Landroid/widget/Button;

    .line 96
    .line 97
    const/16 v20, 0x10

    .line 98
    .line 99
    aput-object v3, v2, v20

    .line 100
    .line 101
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->sp3:Landroid/widget/Button;

    .line 102
    .line 103
    const/16 v21, 0x11

    .line 104
    .line 105
    aput-object v3, v2, v21

    .line 106
    .line 107
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->sp4:Landroid/widget/Button;

    .line 108
    .line 109
    const/16 v22, 0x12

    .line 110
    .line 111
    aput-object v3, v2, v22

    .line 112
    .line 113
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->sp5:Landroid/widget/Button;

    .line 114
    .line 115
    const/16 v23, 0x13

    .line 116
    .line 117
    aput-object v3, v2, v23

    .line 118
    .line 119
    iput-object v2, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->views:[Landroid/view/View;

    .line 120
    .line 121
    new-array v1, v1, [Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 122
    .line 123
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 124
    .line 125
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SELECT:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 126
    .line 127
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 128
    .line 129
    .line 130
    aput-object v2, v1, v4

    .line 131
    .line 132
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 133
    .line 134
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_START:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 135
    .line 136
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 137
    .line 138
    .line 139
    aput-object v2, v1, v5

    .line 140
    .line 141
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 142
    .line 143
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_A:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    sget-object v5, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_B:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 150
    .line 151
    invoke-virtual {v5}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 152
    .line 153
    .line 154
    move-result v24

    .line 155
    or-int v4, v4, v24

    .line 156
    .line 157
    sget-object v15, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_C:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 158
    .line 159
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 160
    .line 161
    .line 162
    move-result v25

    .line 163
    or-int v4, v4, v25

    .line 164
    .line 165
    invoke-direct {v2, v0, v4}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;I)V

    .line 166
    .line 167
    .line 168
    aput-object v2, v1, v6

    .line 169
    .line 170
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 171
    .line 172
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    invoke-virtual {v5}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    or-int/2addr v4, v6

    .line 181
    invoke-direct {v2, v0, v4}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;I)V

    .line 182
    .line 183
    .line 184
    aput-object v2, v1, v7

    .line 185
    .line 186
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 187
    .line 188
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    sget-object v6, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_D:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 193
    .line 194
    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    or-int/2addr v4, v7

    .line 199
    invoke-direct {v2, v0, v4}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;I)V

    .line 200
    .line 201
    .line 202
    aput-object v2, v1, v8

    .line 203
    .line 204
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 205
    .line 206
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 207
    .line 208
    .line 209
    aput-object v2, v1, v9

    .line 210
    .line 211
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 212
    .line 213
    invoke-direct {v2, v0, v5}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 214
    .line 215
    .line 216
    aput-object v2, v1, v10

    .line 217
    .line 218
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 219
    .line 220
    invoke-direct {v2, v0, v15}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 221
    .line 222
    .line 223
    aput-object v2, v1, v11

    .line 224
    .line 225
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 226
    .line 227
    invoke-direct {v2, v0, v6}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 228
    .line 229
    .line 230
    aput-object v2, v1, v12

    .line 231
    .line 232
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 233
    .line 234
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_E:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 235
    .line 236
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 237
    .line 238
    .line 239
    aput-object v2, v1, v13

    .line 240
    .line 241
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 242
    .line 243
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_F:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 244
    .line 245
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 246
    .line 247
    .line 248
    aput-object v2, v1, v14

    .line 249
    .line 250
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 251
    .line 252
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 253
    .line 254
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 255
    .line 256
    .line 257
    const/16 v3, 0xb

    .line 258
    .line 259
    aput-object v2, v1, v3

    .line 260
    .line 261
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 262
    .line 263
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_2:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 264
    .line 265
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 266
    .line 267
    .line 268
    aput-object v2, v1, v16

    .line 269
    .line 270
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 271
    .line 272
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_3:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 273
    .line 274
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 275
    .line 276
    .line 277
    aput-object v2, v1, v17

    .line 278
    .line 279
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 280
    .line 281
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_4:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 282
    .line 283
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 284
    .line 285
    .line 286
    aput-object v2, v1, v18

    .line 287
    .line 288
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 289
    .line 290
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP0:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 291
    .line 292
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 293
    .line 294
    .line 295
    aput-object v2, v1, v19

    .line 296
    .line 297
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 298
    .line 299
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 300
    .line 301
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 302
    .line 303
    .line 304
    aput-object v2, v1, v20

    .line 305
    .line 306
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 307
    .line 308
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP2:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 309
    .line 310
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 311
    .line 312
    .line 313
    aput-object v2, v1, v21

    .line 314
    .line 315
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 316
    .line 317
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP3:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 318
    .line 319
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 320
    .line 321
    .line 322
    aput-object v2, v1, v22

    .line 323
    .line 324
    new-instance v2, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 325
    .line 326
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP4:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 327
    .line 328
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFBAActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFBAActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    .line 329
    .line 330
    .line 331
    aput-object v2, v1, v23

    .line 332
    .line 333
    iput-object v1, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->items:[Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 334
    .line 335
    iget-object v2, v0, Lcom/join/mgps/activity/HandShankFBAActivity;->views:[Landroid/view/View;

    .line 336
    .line 337
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/activity/HandShankFBAActivity;->bindViews([Landroid/view/View;[Lcom/join/mgps/activity/HandShankFBAActivity$a;)V

    .line 338
    .line 339
    .line 340
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->titleText:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u8857\u673a\u6e38\u620f\u624b\u67c4\u8bbe\u7f6e"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankFBAActivity;->initEmuMap()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankFBAActivity;->initView()V

    .line 12
    .line 13
    .line 14
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

.method bind(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "customKey"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/HandShankFBAActivity;->findPreBindedView(Ljava/lang/String;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HandShankFBAActivity;->bindCancel(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 24
    .line 25
    iput-object p2, v0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMapKeysTemp:Ljava/util/HashMap;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankFBAActivity;->selectCancel(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
.end method

.method bindCancel(Landroid/view/View;)V
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
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    iput-object v1, v0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->b:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMapKeysTemp:Ljava/util/HashMap;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankFBAActivity;->selectCancel(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method bindViews([Landroid/view/View;[Lcom/join/mgps/activity/HandShankFBAActivity$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "views",
            "items"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-eqz p1, :cond_1

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    aget-object v1, p1, v0

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    aget-object v1, p2, v0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/activity/HandShankFBAActivity$a;->b()V

    .line 18
    .line 19
    .line 20
    aget-object v1, p1, v0

    .line 21
    .line 22
    aget-object v2, p2, v0

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    aget-object v1, p1, v0

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/HandShankFBAActivity;->selectCancel(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method getCustomKeyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customKey"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    const-string v0, "KEY_"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "BUTTON_"

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method isCustomKey(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->customKeys:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method okButn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->isReset:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->isReset:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMap:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMapKeysTemp:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-static {p0, v0, v1}, Lcom/join/mgps/joystick/map/d;->m(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankFBAActivity;->select(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/HandShankFBAActivity;->onKeyUp1(ILandroid/view/KeyEvent;)Z

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
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankFBAActivity;->isCustomKey(I)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 v0, 0x1

    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    return v0

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->selectView:Landroid/view/View;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->customKeys:Ljava/util/HashMap;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, ""

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/String;

    .line 60
    .line 61
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->selectView:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/activity/HandShankFBAActivity;->bind(Landroid/view/View;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-boolean v1, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->isReset:Z

    .line 67
    .line 68
    :cond_2
    return v0

    .line 69
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    return p1
.end method

.method resetButn()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMapKeysTemp:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMapKeys:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMapKeys:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMap:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->map:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/String;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMap:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->map:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/lang/String;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMapKeys:Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMapKeysTemp:Ljava/util/HashMap;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->emuMapKeys:Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->views:[Landroid/view/View;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->items:[Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 88
    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/HandShankFBAActivity;->bindViews([Landroid/view/View;[Lcom/join/mgps/activity/HandShankFBAActivity$a;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method select(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->selectView:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->selectView:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankFBAActivity;->selectCancel(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->selectView:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HandShankFBAActivity;->selectCancel(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->selectView:Landroid/view/View;

    .line 30
    .line 31
    instance-of v0, p1, Landroid/widget/Button;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    const v0, 0x7f0806d8

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Landroid/widget/Button;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const v1, 0x7f060198

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void
.end method

.method selectCancel(Landroid/view/View;)V
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
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/join/mgps/activity/HandShankFBAActivity$a;

    .line 15
    .line 16
    instance-of v1, p1, Landroid/widget/Button;

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/activity/HandShankFBAActivity$a;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const v1, 0x7f0806d7

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    .line 31
    .line 32
    check-cast p1, Landroid/widget/Button;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const v2, 0x7f060197

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v0, Lcom/join/mgps/activity/HandShankFBAActivity$a;->b:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HandShankFBAActivity;->getCustomKeyName(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    const-string v0, ""

    .line 61
    .line 62
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const v0, 0x7f0806d6

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    .line 71
    .line 72
    check-cast p1, Landroid/widget/Button;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const v1, 0x7f060196

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    const-string v0, "\u5f85\u5b9a"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankFBAActivity;->selectView:Landroid/view/View;

    .line 95
    .line 96
    :cond_4
    :goto_1
    return-void
.end method

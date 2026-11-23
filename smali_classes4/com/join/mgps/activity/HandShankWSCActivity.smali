.class public Lcom/join/mgps/activity/HandShankWSCActivity;
.super Lcom/join/mgps/activity/HandShankBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HandShankWSCActivity$a;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d00bd
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

.field private WSC_KEY_MAP:Ljava/util/Map;
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
            "Lcom/join/mgps/activity/HandShankWSCActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field down:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private isReset:Z

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

.field r1:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r2:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field resetButn:Landroid/widget/Button;
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

.field up:Landroid/widget/Button;
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
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

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
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->WSC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

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
    sget-object v2, Lcom/join/mgps/joystick/map/b;->b1:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->titleText:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "WSC\u6e38\u620f\u624b\u67c4\u8bbe\u7f6e"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->select:Landroid/widget/Button;

    .line 9
    .line 10
    const-string v1, "WSC_KEY_SELECT"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->start:Landroid/widget/Button;

    .line 16
    .line 17
    const-string v1, "WSC_KEY_START"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->select:Landroid/widget/Button;

    .line 23
    .line 24
    const-string v1, "\u9009\u62e9"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->start:Landroid/widget/Button;

    .line 30
    .line 31
    const-string v1, "\u5f00\u59cb"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->select:Landroid/widget/Button;

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->start:Landroid/widget/Button;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->l1:Landroid/widget/Button;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->r1:Landroid/widget/Button;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->r2:Landroid/widget/Button;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->l2:Landroid/widget/Button;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->up:Landroid/widget/Button;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->left:Landroid/widget/Button;

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->right:Landroid/widget/Button;

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->down:Landroid/widget/Button;

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->b:Landroid/widget/Button;

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->a:Landroid/widget/Button;

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->select:Landroid/widget/Button;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/view/View;

    .line 103
    .line 104
    const/16 v1, 0x8

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
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
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v11, Lcom/join/mgps/activity/HandShankWSCActivity$a;

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
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankWSCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankWSCActivity;IIIIIIII)V

    .line 37
    .line 38
    .line 39
    const-string v1, "WSC_KEY_START"

    .line 40
    .line 41
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 45
    .line 46
    new-instance v11, Lcom/join/mgps/activity/HandShankWSCActivity$a;

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
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankWSCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankWSCActivity;IIIIIIII)V

    .line 56
    .line 57
    .line 58
    const-string v1, "WSC_KEY_SELECT"

    .line 59
    .line 60
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 64
    .line 65
    new-instance v11, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 66
    .line 67
    const v3, 0x7f0a0031

    .line 68
    .line 69
    .line 70
    const v4, 0x7f0806ca

    .line 71
    .line 72
    .line 73
    const v5, 0x7f0806cc

    .line 74
    .line 75
    .line 76
    const v6, 0x7f0806cb

    .line 77
    .line 78
    .line 79
    const v10, 0x7f0a0033

    .line 80
    .line 81
    .line 82
    move-object v1, v11

    .line 83
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankWSCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankWSCActivity;IIIIIIII)V

    .line 84
    .line 85
    .line 86
    const-string v1, "WSC_KEY_A"

    .line 87
    .line 88
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 92
    .line 93
    new-instance v11, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 94
    .line 95
    const v3, 0x7f0a0136

    .line 96
    .line 97
    .line 98
    const v10, 0x7f0a013a

    .line 99
    .line 100
    .line 101
    move-object v1, v11

    .line 102
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankWSCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankWSCActivity;IIIIIIII)V

    .line 103
    .line 104
    .line 105
    const-string v1, "WSC_KEY_B"

    .line 106
    .line 107
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 111
    .line 112
    new-instance v11, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 113
    .line 114
    const v3, 0x7f0a1aeb

    .line 115
    .line 116
    .line 117
    const v10, 0x7f0a1aef

    .line 118
    .line 119
    .line 120
    move-object v1, v11

    .line 121
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankWSCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankWSCActivity;IIIIIIII)V

    .line 122
    .line 123
    .line 124
    const-string v1, "WSC_KEY_UP"

    .line 125
    .line 126
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 130
    .line 131
    new-instance v11, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 132
    .line 133
    const v3, 0x7f0a04f1

    .line 134
    .line 135
    .line 136
    const v10, 0x7f0a050a

    .line 137
    .line 138
    .line 139
    move-object v1, v11

    .line 140
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankWSCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankWSCActivity;IIIIIIII)V

    .line 141
    .line 142
    .line 143
    const-string v1, "WSC_KEY_DOWN"

    .line 144
    .line 145
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 149
    .line 150
    new-instance v11, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 151
    .line 152
    const v3, 0x7f0a0e44

    .line 153
    .line 154
    .line 155
    const v10, 0x7f0a0e52

    .line 156
    .line 157
    .line 158
    move-object v1, v11

    .line 159
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankWSCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankWSCActivity;IIIIIIII)V

    .line 160
    .line 161
    .line 162
    const-string v1, "WSC_KEY_LEFT"

    .line 163
    .line 164
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 168
    .line 169
    new-instance v11, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 170
    .line 171
    const v3, 0x7f0a139a

    .line 172
    .line 173
    .line 174
    const v10, 0x7f0a13ad

    .line 175
    .line 176
    .line 177
    move-object v1, v11

    .line 178
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankWSCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankWSCActivity;IIIIIIII)V

    .line 179
    .line 180
    .line 181
    const-string v1, "WSC_KEY_RIGHT"

    .line 182
    .line 183
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 187
    .line 188
    new-instance v11, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 189
    .line 190
    const v3, 0x7f0a0dcf

    .line 191
    .line 192
    .line 193
    const v10, 0x7f0a0dd0

    .line 194
    .line 195
    .line 196
    move-object v1, v11

    .line 197
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankWSCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankWSCActivity;IIIIIIII)V

    .line 198
    .line 199
    .line 200
    const-string v1, "WSC_KEY_L1"

    .line 201
    .line 202
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 206
    .line 207
    new-instance v11, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 208
    .line 209
    const v3, 0x7f0a0dd1

    .line 210
    .line 211
    .line 212
    const v10, 0x7f0a0dd2

    .line 213
    .line 214
    .line 215
    move-object v1, v11

    .line 216
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankWSCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankWSCActivity;IIIIIIII)V

    .line 217
    .line 218
    .line 219
    const-string v1, "WSC_KEY_L2"

    .line 220
    .line 221
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 225
    .line 226
    new-instance v11, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 227
    .line 228
    const v3, 0x7f0a12ef

    .line 229
    .line 230
    .line 231
    const v10, 0x7f0a12f2

    .line 232
    .line 233
    .line 234
    move-object v1, v11

    .line 235
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankWSCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankWSCActivity;IIIIIIII)V

    .line 236
    .line 237
    .line 238
    const-string v1, "WSC_KEY_R1"

    .line 239
    .line 240
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 244
    .line 245
    new-instance v11, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 246
    .line 247
    const v3, 0x7f0a12f3

    .line 248
    .line 249
    .line 250
    const v10, 0x7f0a12f6

    .line 251
    .line 252
    .line 253
    move-object v1, v11

    .line 254
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/activity/HandShankWSCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankWSCActivity;IIIIIIII)V

    .line 255
    .line 256
    .line 257
    const-string v1, "WSC_KEY_R2"

    .line 258
    .line 259
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankWSCActivity;->initMapData()V

    .line 263
    .line 264
    .line 265
    return-void
.end method

.method private initMapData()V
    .locals 14

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
    invoke-static {v2}, Lcom/join/mgps/joystick/map/b;->b(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

    .line 54
    .line 55
    const-string v1, "KEY_DPAD_RIGHT"

    .line 56
    .line 57
    const-string v2, "KEY_DPAD_UP"

    .line 58
    .line 59
    const-string v3, "KEY_DPAD_DOWN"

    .line 60
    .line 61
    const-string v4, "KEY_DPAD_LEFT"

    .line 62
    .line 63
    const-string v5, "KEY_L2"

    .line 64
    .line 65
    const-string v6, "KEY_R2"

    .line 66
    .line 67
    const-string v7, "KEY_R1"

    .line 68
    .line 69
    const-string v8, "KEY_L1"

    .line 70
    .line 71
    const-string v9, "KEY_B"

    .line 72
    .line 73
    const-string v10, "KEY_A"

    .line 74
    .line 75
    const-string v11, "KEY_SELECT"

    .line 76
    .line 77
    const-string v12, "KEY_START"

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

    .line 88
    .line 89
    const/16 v13, 0x6c

    .line 90
    .line 91
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

    .line 99
    .line 100
    const/16 v13, 0x6d

    .line 101
    .line 102
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

    .line 110
    .line 111
    const/16 v13, 0x60

    .line 112
    .line 113
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

    .line 121
    .line 122
    const/16 v13, 0x61

    .line 123
    .line 124
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    invoke-interface {v0, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

    .line 132
    .line 133
    const/16 v13, 0x66

    .line 134
    .line 135
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    invoke-interface {v0, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

    .line 143
    .line 144
    const/16 v13, 0x67

    .line 145
    .line 146
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    invoke-interface {v0, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

    .line 154
    .line 155
    const/16 v13, 0x69

    .line 156
    .line 157
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    invoke-interface {v0, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

    .line 165
    .line 166
    const/16 v13, 0x68

    .line 167
    .line 168
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

    .line 176
    .line 177
    const/16 v13, 0x15

    .line 178
    .line 179
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v13

    .line 183
    invoke-interface {v0, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

    .line 187
    .line 188
    const/16 v13, 0x14

    .line 189
    .line 190
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

    .line 198
    .line 199
    const/16 v13, 0x13

    .line 200
    .line 201
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v13

    .line 205
    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

    .line 209
    .line 210
    const/16 v13, 0x16

    .line 211
    .line 212
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v13

    .line 216
    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankWSCActivity;->getMap()Ljava/util/Map;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 224
    .line 225
    if-eqz v0, :cond_4

    .line 226
    .line 227
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_5

    .line 232
    .line 233
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 234
    .line 235
    const-string v13, "WSC_KEY_SELECT"

    .line 236
    .line 237
    invoke-interface {v0, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 241
    .line 242
    const-string v11, "WSC_KEY_START"

    .line 243
    .line 244
    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 248
    .line 249
    const-string v11, "WSC_KEY_A"

    .line 250
    .line 251
    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 255
    .line 256
    const-string v10, "WSC_KEY_B"

    .line 257
    .line 258
    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 262
    .line 263
    const-string v9, "WSC_KEY_L1"

    .line 264
    .line 265
    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 269
    .line 270
    const-string v8, "WSC_KEY_R1"

    .line 271
    .line 272
    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 276
    .line 277
    const-string v7, "WSC_KEY_L2"

    .line 278
    .line 279
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 283
    .line 284
    const-string v5, "WSC_KEY_R2"

    .line 285
    .line 286
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 290
    .line 291
    const-string v5, "WSC_KEY_LEFT"

    .line 292
    .line 293
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 297
    .line 298
    const-string v4, "WSC_KEY_UP"

    .line 299
    .line 300
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 304
    .line 305
    const-string v2, "WSC_KEY_RIGHT"

    .line 306
    .line 307
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 311
    .line 312
    const-string v1, "WSC_KEY_DOWN"

    .line 313
    .line 314
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    :cond_5
    return-void
.end method

.method private initView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

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
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

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
    iget v1, v1, Lcom/join/mgps/activity/HandShankWSCActivity$a;->h:I

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
    iget v1, v1, Lcom/join/mgps/activity/HandShankWSCActivity$a;->h:I

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
    sget-object v4, Lcom/join/mgps/joystick/map/b;->b1:Ljava/util/Map;

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
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->isReset:Z

    .line 5
    .line 6
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 12
    .line 13
    const-string v2, "KEY_SELECT"

    .line 14
    .line 15
    const-string v3, "WSC_KEY_SELECT"

    .line 16
    .line 17
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 21
    .line 22
    const-string v4, "KEY_START"

    .line 23
    .line 24
    const-string v5, "WSC_KEY_START"

    .line 25
    .line 26
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 30
    .line 31
    const-string v6, "KEY_A"

    .line 32
    .line 33
    const-string v7, "WSC_KEY_A"

    .line 34
    .line 35
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 39
    .line 40
    const-string v8, "KEY_B"

    .line 41
    .line 42
    const-string v9, "WSC_KEY_B"

    .line 43
    .line 44
    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 48
    .line 49
    const-string v10, "KEY_L1"

    .line 50
    .line 51
    const-string v11, "WSC_KEY_L1"

    .line 52
    .line 53
    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 57
    .line 58
    const-string v12, "KEY_R1"

    .line 59
    .line 60
    const-string v13, "WSC_KEY_R1"

    .line 61
    .line 62
    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 66
    .line 67
    const-string v14, "KEY_L2"

    .line 68
    .line 69
    const-string v15, "WSC_KEY_L2"

    .line 70
    .line 71
    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 75
    .line 76
    move-object/from16 v16, v14

    .line 77
    .line 78
    const-string v14, "KEY_R2"

    .line 79
    .line 80
    move-object/from16 v17, v15

    .line 81
    .line 82
    const-string v15, "WSC_KEY_R2"

    .line 83
    .line 84
    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 88
    .line 89
    move-object/from16 v18, v14

    .line 90
    .line 91
    const-string v14, "KEY_DPAD_LEFT"

    .line 92
    .line 93
    move-object/from16 v19, v15

    .line 94
    .line 95
    const-string v15, "WSC_KEY_LEFT"

    .line 96
    .line 97
    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 101
    .line 102
    move-object/from16 v20, v14

    .line 103
    .line 104
    const-string v14, "KEY_DPAD_UP"

    .line 105
    .line 106
    move-object/from16 v21, v15

    .line 107
    .line 108
    const-string v15, "WSC_KEY_UP"

    .line 109
    .line 110
    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 114
    .line 115
    move-object/from16 v22, v14

    .line 116
    .line 117
    const-string v14, "KEY_DPAD_RIGHT"

    .line 118
    .line 119
    move-object/from16 v23, v15

    .line 120
    .line 121
    const-string v15, "WSC_KEY_RIGHT"

    .line 122
    .line 123
    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 127
    .line 128
    move-object/from16 v24, v14

    .line 129
    .line 130
    const-string v14, "KEY_DPAD_DOWN"

    .line 131
    .line 132
    move-object/from16 v25, v15

    .line 133
    .line 134
    const-string v15, "WSC_KEY_DOWN"

    .line 135
    .line 136
    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 140
    .line 141
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 145
    .line 146
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 150
    .line 151
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 155
    .line 156
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 160
    .line 161
    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 165
    .line 166
    invoke-interface {v1, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 170
    .line 171
    invoke-interface {v1, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 175
    .line 176
    move-object/from16 v2, v16

    .line 177
    .line 178
    move-object/from16 v3, v17

    .line 179
    .line 180
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 184
    .line 185
    move-object/from16 v2, v18

    .line 186
    .line 187
    move-object/from16 v3, v19

    .line 188
    .line 189
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 193
    .line 194
    move-object/from16 v2, v20

    .line 195
    .line 196
    move-object/from16 v3, v21

    .line 197
    .line 198
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 202
    .line 203
    move-object/from16 v2, v22

    .line 204
    .line 205
    move-object/from16 v3, v23

    .line 206
    .line 207
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 211
    .line 212
    move-object/from16 v2, v24

    .line 213
    .line 214
    move-object/from16 v3, v25

    .line 215
    .line 216
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 220
    .line 221
    const-string v2, "WSC_KEY_DOWN"

    .line 222
    .line 223
    const-string v3, "KEY_DPAD_DOWN"

    .line 224
    .line 225
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 229
    .line 230
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_1

    .line 243
    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    check-cast v2, Ljava/lang/String;

    .line 249
    .line 250
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

    .line 251
    .line 252
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    check-cast v3, Ljava/lang/String;

    .line 257
    .line 258
    iget-object v4, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 259
    .line 260
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 265
    .line 266
    iget v4, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->h:I

    .line 267
    .line 268
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    check-cast v4, Landroid/widget/TextView;

    .line 273
    .line 274
    sget-object v5, Lcom/join/mgps/joystick/map/b;->a:Ljava/util/Map;

    .line 275
    .line 276
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    check-cast v3, Ljava/lang/CharSequence;

    .line 281
    .line 282
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    .line 284
    .line 285
    iget v3, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->a:I

    .line 286
    .line 287
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    check-cast v3, Landroid/widget/Button;

    .line 292
    .line 293
    iget v4, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->b:I

    .line 294
    .line 295
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 296
    .line 297
    .line 298
    iget v3, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->e:I

    .line 299
    .line 300
    if-eqz v3, :cond_0

    .line 301
    .line 302
    iget v3, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->a:I

    .line 303
    .line 304
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    check-cast v3, Landroid/widget/Button;

    .line 309
    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    iget v2, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->e:I

    .line 315
    .line 316
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    .line 322
    .line 323
    goto :goto_0

    .line 324
    :cond_1
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->WSC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 325
    .line 326
    iget-object v2, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 327
    .line 328
    invoke-direct {v0, v2}, Lcom/join/mgps/activity/HandShankWSCActivity;->putMap(Ljava/util/Map;)Ljava/util/Map;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-static {v0, v1, v2}, Lcom/join/mgps/joystick/map/d;->o(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;Ljava/util/Map;)V

    .line 333
    .line 334
    .line 335
    iget-object v1, v0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 336
    .line 337
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 338
    .line 339
    .line 340
    return-void
.end method

.method private revertBtn()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

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
    iget v3, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->a:I

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
    iget v4, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->e:I

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
    iget v5, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->g:I

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
    iget v4, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->d:I

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    .line 74
    .line 75
    iget v2, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->h:I

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
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

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
    iget v1, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->a:I

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
    iget v3, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->e:I

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
    iget v4, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->e:I

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
    iget v2, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->b:I

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
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->unSetKeyBoradName:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->unSetTag:Ljava/util/List;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->unSetTag:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->unSetKeyBoradName:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->unSetTag:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

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
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->unSetKeyBoradName:Ljava/util/List;

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
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->unSetKeyBoradName:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 132
    .line 133
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->unSetKeyBoradName:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->unSetTag:Ljava/util/List;

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
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->unSetTag:Ljava/util/List;

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
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 161
    .line 162
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->unSetKeyBoradName:Ljava/util/List;

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
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->unSetTag:Ljava/util/List;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankWSCActivity;->initMap()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankWSCActivity;->initBtn()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankWSCActivity;->initView()V

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
    iget-boolean v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->isReset:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->isReset:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0xc

    .line 19
    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankWSCActivity;->unSet()V

    .line 23
    .line 24
    .line 25
    :cond_1
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->WSC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 28
    .line 29
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/HandShankWSCActivity;->putMap(Ljava/util/Map;)Ljava/util/Map;

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
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

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
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->selectBtn:Landroid/widget/Button;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->selectBtn:Landroid/widget/Button;

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
    check-cast v0, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->selectBtn:Landroid/widget/Button;

    .line 45
    .line 46
    iget v2, v0, Lcom/join/mgps/activity/HandShankWSCActivity$a;->b:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    .line 50
    .line 51
    iget v0, v0, Lcom/join/mgps/activity/HandShankWSCActivity$a;->e:I

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->selectBtn:Landroid/widget/Button;

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
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->selectBtn:Landroid/widget/Button;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

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
    check-cast p1, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->selectBtn:Landroid/widget/Button;

    .line 88
    .line 89
    iget v1, p1, Lcom/join/mgps/activity/HandShankWSCActivity$a;->c:I

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    .line 93
    .line 94
    iget p1, p1, Lcom/join/mgps/activity/HandShankWSCActivity$a;->e:I

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->selectBtn:Landroid/widget/Button;

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/HandShankWSCActivity;->onKeyUp1(ILandroid/view/KeyEvent;)Z

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
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->selectBtn:Landroid/widget/Button;

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->KEY_MAP:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

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
    check-cast v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 83
    .line 84
    iget v2, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->h:I

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->WSC_KEY_MAP:Ljava/util/Map;

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
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 112
    .line 113
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 118
    .line 119
    iget v2, v2, Lcom/join/mgps/activity/HandShankWSCActivity$a;->h:I

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
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->okMap:Ljava/util/Map;

    .line 131
    .line 132
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    iput-boolean v1, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->isReset:Z

    .line 136
    .line 137
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->data:Ljava/util/Map;

    .line 138
    .line 139
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lcom/join/mgps/activity/HandShankWSCActivity$a;

    .line 144
    .line 145
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->selectBtn:Landroid/widget/Button;

    .line 146
    .line 147
    iget p1, p1, Lcom/join/mgps/activity/HandShankWSCActivity$a;->d:I

    .line 148
    .line 149
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 150
    .line 151
    .line 152
    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankWSCActivity;->selectBtn:Landroid/widget/Button;

    .line 154
    .line 155
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankWSCActivity;->revertBtn()V

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
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankWSCActivity;->reset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

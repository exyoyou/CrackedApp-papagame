.class public final Lcom/join/mgps/activity/VideoSettingActivity_;
.super Lcom/join/mgps/activity/VideoSettingActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/VideoSettingActivity_$h;
    }
.end annotation


# instance fields
.field private final beans_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzc/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lzc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/VideoSettingActivity_$h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/VideoSettingActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/VideoSettingActivity_$h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportFragment"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/activity/VideoSettingActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$h;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/VideoSettingActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d089d

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/VideoSettingActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a1790

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->title_textview:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a1b60

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoAllNet:Landroid/view/View;

    .line 20
    .line 21
    const v0, 0x7f0a1b67

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoOnlyWifi:Landroid/view/View;

    .line 29
    .line 30
    const v0, 0x7f0a1b65

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoNotPlay:Landroid/view/View;

    .line 38
    .line 39
    const v0, 0x7f0a1b61

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/ImageView;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoAllNetSwitch:Landroid/widget/ImageView;

    .line 49
    .line 50
    const v0, 0x7f0a1b68

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoOnlyWifiSwitch:Landroid/widget/ImageView;

    .line 60
    .line 61
    const v0, 0x7f0a1b66

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/ImageView;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoNotPlaySwitch:Landroid/widget/ImageView;

    .line 71
    .line 72
    const v0, 0x7f0a081c

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoAllNet:Landroid/view/View;

    .line 80
    .line 81
    const v0, 0x7f0a0820

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoOnlyWifi:Landroid/view/View;

    .line 89
    .line 90
    const v0, 0x7f0a081e

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoNotPlay:Landroid/view/View;

    .line 98
    .line 99
    const v0, 0x7f0a081d

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Landroid/widget/ImageView;

    .line 107
    .line 108
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoAllNetSwitch:Landroid/widget/ImageView;

    .line 109
    .line 110
    const v0, 0x7f0a0821

    .line 111
    .line 112
    .line 113
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroid/widget/ImageView;

    .line 118
    .line 119
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoOnlyWifiSwitch:Landroid/widget/ImageView;

    .line 120
    .line 121
    const v0, 0x7f0a081f

    .line 122
    .line 123
    .line 124
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Landroid/widget/ImageView;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoNotPlaySwitch:Landroid/widget/ImageView;

    .line 131
    .line 132
    const v0, 0x7f0a014e

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoAllNet:Landroid/view/View;

    .line 140
    .line 141
    if-eqz v0, :cond_0

    .line 142
    .line 143
    new-instance v1, Lcom/join/mgps/activity/VideoSettingActivity_$a;

    .line 144
    .line 145
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$a;-><init>(Lcom/join/mgps/activity/VideoSettingActivity_;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoOnlyWifi:Landroid/view/View;

    .line 152
    .line 153
    if-eqz v0, :cond_1

    .line 154
    .line 155
    new-instance v1, Lcom/join/mgps/activity/VideoSettingActivity_$b;

    .line 156
    .line 157
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$b;-><init>(Lcom/join/mgps/activity/VideoSettingActivity_;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoNotPlay:Landroid/view/View;

    .line 164
    .line 165
    if-eqz v0, :cond_2

    .line 166
    .line 167
    new-instance v1, Lcom/join/mgps/activity/VideoSettingActivity_$c;

    .line 168
    .line 169
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$c;-><init>(Lcom/join/mgps/activity/VideoSettingActivity_;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoAllNet:Landroid/view/View;

    .line 176
    .line 177
    if-eqz v0, :cond_3

    .line 178
    .line 179
    new-instance v1, Lcom/join/mgps/activity/VideoSettingActivity_$d;

    .line 180
    .line 181
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$d;-><init>(Lcom/join/mgps/activity/VideoSettingActivity_;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoOnlyWifi:Landroid/view/View;

    .line 188
    .line 189
    if-eqz v0, :cond_4

    .line 190
    .line 191
    new-instance v1, Lcom/join/mgps/activity/VideoSettingActivity_$e;

    .line 192
    .line 193
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$e;-><init>(Lcom/join/mgps/activity/VideoSettingActivity_;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoNotPlay:Landroid/view/View;

    .line 200
    .line 201
    if-eqz v0, :cond_5

    .line 202
    .line 203
    new-instance v1, Lcom/join/mgps/activity/VideoSettingActivity_$f;

    .line 204
    .line 205
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$f;-><init>(Lcom/join/mgps/activity/VideoSettingActivity_;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .line 210
    .line 211
    :cond_5
    if-eqz p1, :cond_6

    .line 212
    .line 213
    new-instance v0, Lcom/join/mgps/activity/VideoSettingActivity_$g;

    .line 214
    .line 215
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$g;-><init>(Lcom/join/mgps/activity/VideoSettingActivity_;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->afterview()V

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "params"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

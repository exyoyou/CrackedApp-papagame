.class public final Lcom/join/mgps/activity/GameMainActivityv2_;
.super Lcom/join/mgps/activity/GameMainActivityv2;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameMainActivityv2_$n;
    }
.end annotation


# static fields
.field public static final G:Ljava/lang/String; = "gameId"


# instance fields
.field private final E:Lzc/c;

.field private final F:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivityv2;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->E:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->F:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic s(Lcom/join/mgps/activity/GameMainActivityv2_;Lcom/join/mgps/dto/GameMainDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivityv2;->r(Lcom/join/mgps/dto/GameMainDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t(Lcom/join/mgps/activity/GameMainActivityv2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u(Lcom/join/mgps/activity/GameMainActivityv2_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivityv2;->o(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v(Lcom/join/mgps/activity/GameMainActivityv2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private w(Landroid/os/Bundle;)V
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
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->v:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivityv2_;->x()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private x()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "gameId"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->u:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public static y(Landroid/content/Context;)Lcom/join/mgps/activity/GameMainActivityv2_$n;
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
    new-instance v0, Lcom/join/mgps/activity/GameMainActivityv2_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$n;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static z(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GameMainActivityv2_$n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportFragment"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivityv2_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$n;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method e()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainActivityv2_$d;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainActivityv2_$d;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method f()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainActivityv2_$b;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainActivityv2_$b;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->F:Ljava/util/Map;

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

.method o(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "silenceSwitch"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/GameMainActivityv2_$c;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameMainActivityv2_$c;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->E:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameMainActivityv2_;->w(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivityv2;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d0062

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameMainActivityv2_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a177f

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->b:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a0a11

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    .line 22
    .line 23
    const v0, 0x7f0a0a86

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->d:Landroid/widget/ImageView;

    .line 33
    .line 34
    const v0, 0x7f0a0a53

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/ImageView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->e:Landroid/widget/ImageView;

    .line 44
    .line 45
    const v0, 0x7f0a0a18

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 55
    .line 56
    const v0, 0x7f0a1979

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->g:Landroid/widget/TextView;

    .line 66
    .line 67
    const v0, 0x7f0a0118

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->h:Landroid/widget/TextView;

    .line 77
    .line 78
    const v0, 0x7f0a0a3a

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 88
    .line 89
    const v0, 0x7f0a0069

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 99
    .line 100
    const v0, 0x7f0a1764

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/LinearLayout;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->k:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    const v0, 0x7f0a0f18

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/LinearLayout;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->l:Landroid/widget/LinearLayout;

    .line 121
    .line 122
    const v0, 0x7f0a0091

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/LinearLayout;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->m:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    const v0, 0x7f0a13c6

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->n:Landroid/widget/RelativeLayout;

    .line 143
    .line 144
    const v0, 0x7f0a0aa1

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->o:Landroid/widget/RelativeLayout;

    .line 154
    .line 155
    const v0, 0x7f0a13e6

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->p:Landroid/widget/RelativeLayout;

    .line 165
    .line 166
    const v0, 0x7f0a1b86

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->q:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 176
    .line 177
    const v0, 0x7f0a068a

    .line 178
    .line 179
    .line 180
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/widget/LinearLayout;

    .line 185
    .line 186
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->r:Landroid/widget/LinearLayout;

    .line 187
    .line 188
    const v0, 0x7f0a00b1

    .line 189
    .line 190
    .line 191
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Landroid/widget/ViewFlipper;

    .line 196
    .line 197
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->s:Landroid/widget/ViewFlipper;

    .line 198
    .line 199
    const v0, 0x7f0a19d7

    .line 200
    .line 201
    .line 202
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Landroid/widget/TextView;

    .line 207
    .line 208
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->t:Landroid/widget/TextView;

    .line 209
    .line 210
    const v0, 0x7f0a0258

    .line 211
    .line 212
    .line 213
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const v1, 0x7f0a1405

    .line 218
    .line 219
    .line 220
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    const v2, 0x7f0a069c

    .line 225
    .line 226
    .line 227
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    const v3, 0x7f0a1407

    .line 232
    .line 233
    .line 234
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    .line 239
    .line 240
    if-eqz v3, :cond_0

    .line 241
    .line 242
    new-instance v4, Lcom/join/mgps/activity/GameMainActivityv2_$e;

    .line 243
    .line 244
    invoke-direct {v4, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$e;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    .line 249
    .line 250
    :cond_0
    if-eqz v0, :cond_1

    .line 251
    .line 252
    new-instance v3, Lcom/join/mgps/activity/GameMainActivityv2_$f;

    .line 253
    .line 254
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$f;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    .line 259
    .line 260
    :cond_1
    if-eqz v1, :cond_2

    .line 261
    .line 262
    new-instance v0, Lcom/join/mgps/activity/GameMainActivityv2_$g;

    .line 263
    .line 264
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$g;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    .line 269
    .line 270
    :cond_2
    if-eqz v2, :cond_3

    .line 271
    .line 272
    new-instance v0, Lcom/join/mgps/activity/GameMainActivityv2_$h;

    .line 273
    .line 274
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$h;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .line 279
    .line 280
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->p:Landroid/widget/RelativeLayout;

    .line 281
    .line 282
    if-eqz v0, :cond_4

    .line 283
    .line 284
    new-instance v1, Lcom/join/mgps/activity/GameMainActivityv2_$i;

    .line 285
    .line 286
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$i;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    .line 291
    .line 292
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->l:Landroid/widget/LinearLayout;

    .line 293
    .line 294
    if-eqz v0, :cond_5

    .line 295
    .line 296
    new-instance v1, Lcom/join/mgps/activity/GameMainActivityv2_$j;

    .line 297
    .line 298
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$j;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    .line 303
    .line 304
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->n:Landroid/widget/RelativeLayout;

    .line 305
    .line 306
    if-eqz v0, :cond_6

    .line 307
    .line 308
    new-instance v1, Lcom/join/mgps/activity/GameMainActivityv2_$k;

    .line 309
    .line 310
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$k;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    .line 315
    .line 316
    :cond_6
    if-eqz p1, :cond_7

    .line 317
    .line 318
    new-instance v0, Lcom/join/mgps/activity/GameMainActivityv2_$l;

    .line 319
    .line 320
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$l;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    .line 325
    .line 326
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->d:Landroid/widget/ImageView;

    .line 327
    .line 328
    if-eqz p1, :cond_8

    .line 329
    .line 330
    new-instance v0, Lcom/join/mgps/activity/GameMainActivityv2_$m;

    .line 331
    .line 332
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$m;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    .line 337
    .line 338
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->b()V

    .line 339
    .line 340
    .line 341
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->F:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method r(Lcom/join/mgps/dto/GameMainDataBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivityv2_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameMainActivityv2_$a;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;Lcom/join/mgps/dto/GameMainDataBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
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
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->E:Lzc/c;

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
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->E:Lzc/c;

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
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->E:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newIntent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivityv2_;->x()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

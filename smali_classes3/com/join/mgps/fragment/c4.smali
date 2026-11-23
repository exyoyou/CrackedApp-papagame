.class public final Lcom/join/mgps/fragment/c4;
.super Lcom/join/mgps/fragment/b4;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/c4$i;
    }
.end annotation


# instance fields
.field private final t:Lzc/c;

.field private u:Landroid/view/View;

.field private final v:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/b4;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/c4;->t:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/c4;->v:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method public static Z()Lcom/join/mgps/fragment/c4$i;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/c4$i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/c4$i;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
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
    iget-object v0, p0, Lcom/join/mgps/fragment/c4;->v:Ljava/util/Map;

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
    .locals 1
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
    iget-object v0, p0, Lcom/join/mgps/fragment/c4;->u:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
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
    iget-object v0, p0, Lcom/join/mgps/fragment/c4;->t:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/c4;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iput-object p3, p0, Lcom/join/mgps/fragment/c4;->u:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d0491

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/join/mgps/fragment/c4;->u:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/c4;->u:Landroid/view/View;

    .line 20
    .line 21
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/c4;->u:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->c:Landroid/widget/RadioButton;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->d:Landroid/widget/RadioButton;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->e:Landroid/widget/RadioButton;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->f:Landroid/widget/RadioButton;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->g:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->h:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->i:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->j:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->k:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->l:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a1319

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/RadioButton;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->c:Landroid/widget/RadioButton;

    .line 11
    .line 12
    const v0, 0x7f0a130e

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/RadioButton;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->d:Landroid/widget/RadioButton;

    .line 22
    .line 23
    const v0, 0x7f0a1311

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/RadioButton;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->e:Landroid/widget/RadioButton;

    .line 33
    .line 34
    const v0, 0x7f0a1310

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/RadioButton;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->f:Landroid/widget/RadioButton;

    .line 44
    .line 45
    const v0, 0x7f0a0f59

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/LinearLayout;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->g:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    const v0, 0x7f0a0efb

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->h:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    const v0, 0x7f0a0f19

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/LinearLayout;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->i:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    const v0, 0x7f0a0f16

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/LinearLayout;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->j:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    const v0, 0x7f0a06c1

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/FrameLayout;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/fragment/b4;->k:Landroid/widget/FrameLayout;

    .line 99
    .line 100
    const v0, 0x7f0a1404

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 108
    .line 109
    iput-object p1, p0, Lcom/join/mgps/fragment/b4;->l:Landroid/widget/RelativeLayout;

    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/fragment/b4;->g:Landroid/widget/LinearLayout;

    .line 112
    .line 113
    if-eqz p1, :cond_0

    .line 114
    .line 115
    new-instance v0, Lcom/join/mgps/fragment/c4$a;

    .line 116
    .line 117
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/c4$a;-><init>(Lcom/join/mgps/fragment/c4;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/b4;->c:Landroid/widget/RadioButton;

    .line 124
    .line 125
    if-eqz p1, :cond_1

    .line 126
    .line 127
    new-instance v0, Lcom/join/mgps/fragment/c4$b;

    .line 128
    .line 129
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/c4$b;-><init>(Lcom/join/mgps/fragment/c4;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/b4;->h:Landroid/widget/LinearLayout;

    .line 136
    .line 137
    if-eqz p1, :cond_2

    .line 138
    .line 139
    new-instance v0, Lcom/join/mgps/fragment/c4$c;

    .line 140
    .line 141
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/c4$c;-><init>(Lcom/join/mgps/fragment/c4;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/b4;->d:Landroid/widget/RadioButton;

    .line 148
    .line 149
    if-eqz p1, :cond_3

    .line 150
    .line 151
    new-instance v0, Lcom/join/mgps/fragment/c4$d;

    .line 152
    .line 153
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/c4$d;-><init>(Lcom/join/mgps/fragment/c4;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/b4;->i:Landroid/widget/LinearLayout;

    .line 160
    .line 161
    if-eqz p1, :cond_4

    .line 162
    .line 163
    new-instance v0, Lcom/join/mgps/fragment/c4$e;

    .line 164
    .line 165
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/c4$e;-><init>(Lcom/join/mgps/fragment/c4;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/b4;->e:Landroid/widget/RadioButton;

    .line 172
    .line 173
    if-eqz p1, :cond_5

    .line 174
    .line 175
    new-instance v0, Lcom/join/mgps/fragment/c4$f;

    .line 176
    .line 177
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/c4$f;-><init>(Lcom/join/mgps/fragment/c4;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/b4;->j:Landroid/widget/LinearLayout;

    .line 184
    .line 185
    if-eqz p1, :cond_6

    .line 186
    .line 187
    new-instance v0, Lcom/join/mgps/fragment/c4$g;

    .line 188
    .line 189
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/c4$g;-><init>(Lcom/join/mgps/fragment/c4;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/b4;->f:Landroid/widget/RadioButton;

    .line 196
    .line 197
    if-eqz p1, :cond_7

    .line 198
    .line 199
    new-instance v0, Lcom/join/mgps/fragment/c4$h;

    .line 200
    .line 201
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/c4$h;-><init>(Lcom/join/mgps/fragment/c4;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/b4;->afterView()V

    .line 208
    .line 209
    .line 210
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/c4;->t:Lzc/c;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    .line 7
    .line 8
    .line 9
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
    iget-object v0, p0, Lcom/join/mgps/fragment/c4;->v:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

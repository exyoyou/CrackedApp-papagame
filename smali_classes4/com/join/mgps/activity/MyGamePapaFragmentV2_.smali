.class public final Lcom/join/mgps/activity/MyGamePapaFragmentV2_;
.super Lcom/join/mgps/activity/MyGamePapaFragmentV2;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyGamePapaFragmentV2_$f;
    }
.end annotation


# instance fields
.field private final N:Lzc/c;

.field private O:Landroid/view/View;

.field private final P:Ljava/util/Map;
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

.field private final Q:Landroid/content/IntentFilter;

.field private final R:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->N:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->P:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->Q:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2_$1;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->R:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
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
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->C:Lcom/join/mgps/pref/PrefDef_;

    .line 11
    .line 12
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->Q:Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static n0()Lcom/join/mgps/activity/MyGamePapaFragmentV2_$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_$f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2_$f;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->P:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->O:Landroid/view/View;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->N:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->R:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->Q:Landroid/content/IntentFilter;

    .line 20
    .line 21
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 25
    .line 26
    .line 27
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
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/basefragment/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->O:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d02b8

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
    iput-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->O:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->O:Landroid/view/View;

    .line 20
    .line 21
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->R:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->onDestroy()V

    .line 11
    .line 12
    .line 13
    return-void
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
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->O:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->e:Landroid/view/View;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->f:Landroid/view/View;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->g:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->h:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->i:Landroid/view/View;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->j:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->k:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->l:Landroid/view/View;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->m:Landroid/view/View;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->n:Landroid/view/View;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->o:Landroid/view/View;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->p:Landroidx/viewpager2/widget/ViewPager2;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 32
    .line 33
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0104

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->e:Landroid/view/View;

    .line 9
    .line 10
    const v0, 0x7f0a126a

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->f:Landroid/view/View;

    .line 18
    .line 19
    const v0, 0x7f0a1267

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->g:Landroid/widget/TextView;

    .line 29
    .line 30
    const v0, 0x7f0a1264

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->h:Landroid/widget/TextView;

    .line 40
    .line 41
    const v0, 0x7f0a0629

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->i:Landroid/view/View;

    .line 49
    .line 50
    const v0, 0x7f0a062d

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->j:Landroid/widget/TextView;

    .line 60
    .line 61
    const v0, 0x7f0a1767

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->k:Landroid/widget/TextView;

    .line 71
    .line 72
    const v0, 0x7f0a1415

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->l:Landroid/view/View;

    .line 80
    .line 81
    const v0, 0x7f0a14b4

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->m:Landroid/view/View;

    .line 89
    .line 90
    const v0, 0x7f0a013b

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->n:Landroid/view/View;

    .line 98
    .line 99
    const v0, 0x7f0a1628

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->o:Landroid/view/View;

    .line 107
    .line 108
    const v0, 0x7f0a1bd0

    .line 109
    .line 110
    .line 111
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->p:Landroidx/viewpager2/widget/ViewPager2;

    .line 118
    .line 119
    const v0, 0x7f0a166c

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 127
    .line 128
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 129
    .line 130
    const v0, 0x7f0a1508

    .line 131
    .line 132
    .line 133
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const v1, 0x7f0a1269

    .line 138
    .line 139
    .line 140
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const v2, 0x7f0a1513

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz v0, :cond_0

    .line 152
    .line 153
    new-instance v2, Lcom/join/mgps/activity/MyGamePapaFragmentV2_$a;

    .line 154
    .line 155
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2_$a;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2_;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->n:Landroid/view/View;

    .line 162
    .line 163
    if-eqz v0, :cond_1

    .line 164
    .line 165
    new-instance v2, Lcom/join/mgps/activity/MyGamePapaFragmentV2_$b;

    .line 166
    .line 167
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2_$b;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2_;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->m:Landroid/view/View;

    .line 174
    .line 175
    if-eqz v0, :cond_2

    .line 176
    .line 177
    new-instance v2, Lcom/join/mgps/activity/MyGamePapaFragmentV2_$c;

    .line 178
    .line 179
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2_$c;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2_;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    :cond_2
    if-eqz v1, :cond_3

    .line 186
    .line 187
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_$d;

    .line 188
    .line 189
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2_$d;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2_;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    :cond_3
    if-eqz p1, :cond_4

    .line 196
    .line 197
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_$e;

    .line 198
    .line 199
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2_$e;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2_;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->afterViews()V

    .line 206
    .line 207
    .line 208
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
    iget-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->N:Lzc/c;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2_;->P:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

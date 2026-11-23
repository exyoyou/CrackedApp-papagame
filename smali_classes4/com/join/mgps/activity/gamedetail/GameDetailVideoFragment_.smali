.class public final Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;
.super Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$FragmentBuilder_;
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

.field private contentView_:Landroid/view/View;

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->delayCheckplay()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updatePlayImg()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showProgress()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->changeGameFollow(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static builder()Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$FragmentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$FragmentBuilder_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$FragmentBuilder_;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
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
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 11
    .line 12
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method changeGameFollow(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$14;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$14;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method delayCheckplay()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$8;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$8;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
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
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->beans_:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->contentView_:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->init_(Landroid/os/Bundle;)V

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
    iput-object p3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->contentView_:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d033d

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
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->contentView_:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->contentView_:Landroid/view/View;

    .line 20
    .line 21
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->contentView_:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->coverback:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->sound:Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameName:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->content:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->statuHVIew:Landroid/view/View;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->progressbarLayout:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalbutnLayout:Landroid/widget/RelativeLayout;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->percent:Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->playIcon:Landroid/view/View;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butnProgressBar:Landroid/widget/ProgressBar;

    .line 36
    .line 37
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
    const v0, 0x7f0a044e

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    .line 12
    const v0, 0x7f0a0451

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->coverback:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    .line 23
    const v0, 0x7f0a084f

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 33
    .line 34
    const v0, 0x7f0a1b6b

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 44
    .line 45
    const v0, 0x7f0a15cd

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/ImageView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->sound:Landroid/widget/ImageView;

    .line 55
    .line 56
    const v0, 0x7f0a0713

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
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameName:Landroid/widget/TextView;

    .line 66
    .line 67
    const v0, 0x7f0a0424

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
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->content:Landroid/widget/TextView;

    .line 77
    .line 78
    const v0, 0x7f0a1626

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->statuHVIew:Landroid/view/View;

    .line 86
    .line 87
    const v0, 0x7f0a095c

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/widget/TextView;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 97
    .line 98
    const v0, 0x7f0a12b3

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->progressbarLayout:Landroid/widget/RelativeLayout;

    .line 108
    .line 109
    const v0, 0x7f0a095d

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalbutnLayout:Landroid/widget/RelativeLayout;

    .line 119
    .line 120
    const v0, 0x7f0a02dc

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/ImageView;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    .line 130
    .line 131
    const v0, 0x7f0a123f

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/widget/TextView;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->percent:Landroid/widget/TextView;

    .line 141
    .line 142
    const v0, 0x7f0a125c

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->playIcon:Landroid/view/View;

    .line 150
    .line 151
    const v0, 0x7f0a02db

    .line 152
    .line 153
    .line 154
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Landroid/widget/ProgressBar;

    .line 159
    .line 160
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butnProgressBar:Landroid/widget/ProgressBar;

    .line 161
    .line 162
    const v0, 0x7f0a0450

    .line 163
    .line 164
    .line 165
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const v1, 0x7f0a06f4

    .line 170
    .line 171
    .line 172
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const v2, 0x7f0a0a11

    .line 177
    .line 178
    .line 179
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    const v3, 0x7f0a12b2

    .line 184
    .line 185
    .line 186
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    const v4, 0x7f0a1508

    .line 191
    .line 192
    .line 193
    invoke-interface {p1, v4}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    if-eqz v0, :cond_0

    .line 198
    .line 199
    new-instance v4, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$1;

    .line 200
    .line 201
    invoke-direct {v4, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$1;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    :cond_0
    if-eqz v1, :cond_1

    .line 208
    .line 209
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$2;

    .line 210
    .line 211
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$2;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    :cond_1
    if-eqz v2, :cond_2

    .line 218
    .line 219
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$3;

    .line 220
    .line 221
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$3;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->sound:Landroid/widget/ImageView;

    .line 228
    .line 229
    if-eqz v0, :cond_3

    .line 230
    .line 231
    new-instance v1, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$4;

    .line 232
    .line 233
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$4;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    .line 238
    .line 239
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 240
    .line 241
    if-eqz v0, :cond_4

    .line 242
    .line 243
    new-instance v1, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$5;

    .line 244
    .line 245
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$5;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    :cond_4
    if-eqz v3, :cond_5

    .line 252
    .line 253
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$6;

    .line 254
    .line 255
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$6;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    .line 260
    .line 261
    :cond_5
    if-eqz p1, :cond_6

    .line 262
    .line 263
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$7;

    .line 264
    .line 265
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$7;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .line 270
    .line 271
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->afterView()V

    .line 272
    .line 273
    .line 274
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
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showInstallButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$11;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$11;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showProgress()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$10;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$10;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method updateButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$12;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$12;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method updatePlayImg()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$9;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$9;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x12c

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "result",
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$13;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$13;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;Lcom/join/mgps/dto/ResultMainBean;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

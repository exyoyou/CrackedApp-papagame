.class Lcom/join/mgps/activity/vipzone/GameHlistAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field from:I

.field iconGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/IconGame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "iconGames",
            "context",
            "from"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/IconGame;",
            ">;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->iconGames:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->context:Landroid/content/Context;

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->from:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->iconGames:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const p3, 0x7f0d08b1

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;

    .line 18
    .line 19
    invoke-direct {p3, p0}, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;-><init>(Lcom/join/mgps/activity/vipzone/GameHlistAdapter;)V

    .line 20
    .line 21
    .line 22
    const v0, 0x7f0a030a

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 30
    .line 31
    iput-object v0, p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    const v0, 0x7f0a0713

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v0, p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;->gameName:Landroid/widget/TextView;

    .line 43
    .line 44
    const v0, 0x7f0a0fee

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;->main:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    check-cast p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;

    .line 62
    .line 63
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->iconGames:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/IconGame;

    .line 70
    .line 71
    iget-object v0, p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/IconGame;->getGame_ico()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;->gameName:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/IconGame;->getGame_name()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object p3, p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;->main:Landroid/view/View;

    .line 90
    .line 91
    new-instance v0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;

    .line 92
    .line 93
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;-><init>(Lcom/join/mgps/activity/vipzone/GameHlistAdapter;Lcom/join/mgps/activity/vipzone/bean/IconGame;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    return-object p2
.end method

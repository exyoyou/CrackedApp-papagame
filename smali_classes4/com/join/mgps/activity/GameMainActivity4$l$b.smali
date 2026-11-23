.class Lcom/join/mgps/activity/GameMainActivity4$l$b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameMainActivity4$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameMainActivity4$l;


# direct methods
.method private constructor <init>(Lcom/join/mgps/activity/GameMainActivity4$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$l$b;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/activity/GameMainActivity4$l;Lcom/join/mgps/activity/GameMainActivity4$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameMainActivity4$l$b;-><init>(Lcom/join/mgps/activity/GameMainActivity4$l;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$l$b;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity4;->pspBattleServers:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$l$b;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity4;->pspBattleServers:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
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

    int-to-long v0, p1

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
    iget-object p2, p0, Lcom/join/mgps/activity/GameMainActivity4$l$b;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 6
    .line 7
    invoke-static {p2}, Lcom/join/mgps/activity/GameMainActivity4;->access$100(Lcom/join/mgps/activity/GameMainActivity4;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const p3, 0x7f0d0215

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    :cond_0
    const p3, 0x7f0a10d8

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    check-cast p3, Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$l$b;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity4;->pspBattleServers:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/join/mgps/dto/PspBattleServer;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/PspBattleServer;->getServer_name()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    const p3, 0x7f0a0441

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    check-cast p3, Landroid/widget/TextView;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4$l$b;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/join/mgps/activity/GameMainActivity4;->pspBattleServers:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/join/mgps/dto/PspBattleServer;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/dto/PspBattleServer;->getPeople()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p1, "\u4eba"

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    return-object p2
.end method

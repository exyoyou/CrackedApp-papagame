.class Lcom/join/mgps/activity/GameDetailActivity$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/sephiroth/android/library/widget/AdapterView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity$j;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/dto/GameListItemBean;

.field final synthetic c:Lcom/join/mgps/activity/GameDetailActivity$j;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$j;Ljava/util/List;Lcom/join/mgps/dto/GameListItemBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$strings",
            "val$modleFourBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$a;->c:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$j$a;->a:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/GameDetailActivity$j$a;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit/sephiroth/android/library/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$j$a;->c:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    const-class p4, Lcom/join/mgps/activity/ImagePagerActivity;

    .line 10
    .line 11
    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$j$a;->a:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    new-array p2, p2, [Ljava/lang/String;

    .line 21
    .line 22
    const/4 p4, 0x0

    .line 23
    const/4 p5, 0x0

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$a;->a:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ge p5, v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$a;->a:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/String;

    .line 39
    .line 40
    aput-object v0, p2, p5

    .line 41
    .line 42
    add-int/lit8 p5, p5, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p5, p0, Lcom/join/mgps/activity/GameDetailActivity$j$a;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 46
    .line 47
    invoke-virtual {p5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p5

    .line 51
    invoke-static {p5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p5

    .line 55
    if-eqz p5, :cond_1

    .line 56
    .line 57
    if-nez p3, :cond_1

    .line 58
    .line 59
    new-instance p1, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    .line 60
    .line 61
    invoke-direct {p1}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object p3, p0, Lcom/join/mgps/activity/GameDetailActivity$j$a;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 65
    .line 66
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->H(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    aget-object p2, p2, p4

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->C(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$j$a;->c:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 79
    .line 80
    iget-object p2, p2, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 81
    .line 82
    iget-object p2, p2, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {p2}, Lcom/join/mgps/adapter/FullScreenActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/FullScreenActivity_$b;->a(Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    const-string p4, "image_urls"

    .line 97
    .line 98
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    const-string p2, "image_index"

    .line 102
    .line 103
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$j$a;->c:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 107
    .line 108
    iget-object p2, p2, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 109
    .line 110
    iget-object p2, p2, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 111
    .line 112
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void
.end method

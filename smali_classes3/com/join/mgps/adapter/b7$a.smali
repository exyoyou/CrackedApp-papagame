.class Lcom/join/mgps/adapter/b7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/sephiroth/android/library/widget/AdapterView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/b7;->x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/join/mgps/dto/CollectionBeanSub;

.field final synthetic d:Lcom/join/mgps/adapter/b7;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/b7;Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
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
    iput-object p1, p0, Lcom/join/mgps/adapter/b7$a;->d:Lcom/join/mgps/adapter/b7;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/b7$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/b7$a;->b:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/adapter/b7$a;->c:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
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
    iget-object p2, p0, Lcom/join/mgps/adapter/b7$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    const-class p4, Lcom/join/mgps/activity/ImagePagerActivity;

    .line 6
    .line 7
    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/join/mgps/adapter/b7$a;->b:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    new-array p2, p2, [Ljava/lang/String;

    .line 17
    .line 18
    const/4 p4, 0x0

    .line 19
    const/4 p5, 0x0

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/b7$a;->b:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ge p5, v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/adapter/b7$a;->b:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .line 36
    aput-object v0, p2, p5

    .line 37
    .line 38
    add-int/lit8 p5, p5, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p5, p0, Lcom/join/mgps/adapter/b7$a;->c:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 42
    .line 43
    invoke-virtual {p5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p5

    .line 47
    invoke-static {p5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p5

    .line 51
    if-eqz p5, :cond_1

    .line 52
    .line 53
    if-nez p3, :cond_1

    .line 54
    .line 55
    new-instance p1, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    .line 56
    .line 57
    invoke-direct {p1}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object p3, p0, Lcom/join/mgps/adapter/b7$a;->c:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->H(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    aget-object p2, p2, p4

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->C(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lcom/join/mgps/adapter/b7$a;->a:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {p2}, Lcom/join/mgps/adapter/FullScreenActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/FullScreenActivity_$b;->a(Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const-string p4, "image_urls"

    .line 89
    .line 90
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    const-string p2, "image_index"

    .line 94
    .line 95
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, Lcom/join/mgps/adapter/b7$a;->a:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :goto_1
    return-void
.end method

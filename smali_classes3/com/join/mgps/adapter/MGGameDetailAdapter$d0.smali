.class Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/sephiroth/android/library/widget/AdapterView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;->M(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;

.field final synthetic b:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-class p4, Lcom/join/mgps/activity/ImagePagerActivity;

    .line 10
    .line 11
    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 15
    .line 16
    invoke-static {p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->h(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    new-array p2, p2, [Ljava/lang/String;

    .line 25
    .line 26
    const/4 p4, 0x0

    .line 27
    const/4 p5, 0x0

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->h(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ge p5, v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->h(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/String;

    .line 51
    .line 52
    aput-object v0, p2, p5

    .line 53
    .line 54
    add-int/lit8 p5, p5, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;

    .line 58
    .line 59
    iget-object p5, p5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->d:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p5

    .line 65
    if-eqz p5, :cond_1

    .line 66
    .line 67
    if-nez p3, :cond_1

    .line 68
    .line 69
    new-instance p1, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    .line 70
    .line 71
    invoke-direct {p1}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;

    .line 75
    .line 76
    iget-object p3, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->d:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->H(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    aget-object p2, p2, p4

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->C(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 87
    .line 88
    invoke-static {p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-static {p2}, Lcom/join/mgps/adapter/FullScreenActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/FullScreenActivity_$b;->a(Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    const-string p4, "image_urls"

    .line 105
    .line 106
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    const-string p2, "image_index"

    .line 110
    .line 111
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 115
    .line 116
    invoke-static {p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    :goto_1
    return-void
.end method

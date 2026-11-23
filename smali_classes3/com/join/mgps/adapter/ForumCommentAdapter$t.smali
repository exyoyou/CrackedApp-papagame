.class public Lcom/join/mgps/adapter/ForumCommentAdapter$t;
.super Lcom/join/mgps/customview/h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumCommentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "t"
.end annotation


# instance fields
.field d:I

.field e:I

.field f:Ljava/lang/String;

.field g:Landroid/view/View;

.field final synthetic h:Lcom/join/mgps/adapter/ForumCommentAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->h:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/h;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/h;->b:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f0d0696

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/join/mgps/customview/h;->b:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const v0, 0x7f071402

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    float-to-int p2, p2

    .line 34
    iget-object v0, p0, Lcom/join/mgps/customview/h;->b:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v1, 0x7f07163a

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    float-to-int v0, v0

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 55
    .line 56
    .line 57
    const p2, 0x7f130541

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->g(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private g(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a137c

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0a1372

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f0a136e

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const v3, 0x7f0a0483

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v3, Lcom/join/mgps/adapter/ForumCommentAdapter$t$a;

    .line 30
    .line 31
    invoke-direct {v3, p0}, Lcom/join/mgps/adapter/ForumCommentAdapter$t$a;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter$t;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public dismiss()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/h;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->g:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->g:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->d:I

    .line 18
    .line 19
    sparse-switch v0, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->h:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->h:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->e:I

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumCommentAdapter$w;->o(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :sswitch_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->h:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->h:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter$w;->l()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :sswitch_2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->h:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->h:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->e:I

    .line 76
    .line 77
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->f:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {v0, v1, v2}, Lcom/join/mgps/adapter/ForumCommentAdapter$w;->i(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :sswitch_3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->h:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->h:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->e:I

    .line 98
    .line 99
    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumCommentAdapter$w;->d(I)V

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_0
    return-void

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x7f0a0483 -> :sswitch_3
        0x7f0a136e -> :sswitch_2
        0x7f0a1372 -> :sswitch_1
        0x7f0a137c -> :sswitch_0
    .end sparse-switch
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cNickname"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "xoff",
            "yoff"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->g:Landroid/view/View;

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/customview/h;->showAsDropDown(Landroid/view/View;II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/h;->b()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->d:I

    .line 11
    .line 12
    return-void
.end method

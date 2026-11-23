.class public final Lab/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb/b;
.implements Lcb/c;
.implements Lab/c;
.implements Lab/g;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkagePickerHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkagePickerHelper.kt\ncom/zyyoona7/picker/helper/LinkagePickerHelper\n*L\n1#1,570:1\n*E\n"
.end annotation


# instance fields
.field private b:Lbb/d;

.field private c:Lbb/g;

.field private d:Lcb/c;

.field private e:Lbb/e;

.field private f:Lcom/zyyoona7/wheel/WheelView;

.field private g:Lcom/zyyoona7/wheel/WheelView;

.field private h:Lcom/zyyoona7/wheel/WheelView;


# direct methods
.method public constructor <init>(Lcom/zyyoona7/wheel/WheelView;Lcom/zyyoona7/wheel/WheelView;Lcom/zyyoona7/wheel/WheelView;)V
    .locals 0
    .param p1    # Lcom/zyyoona7/wheel/WheelView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/zyyoona7/wheel/WheelView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/zyyoona7/wheel/WheelView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 5
    .line 6
    iput-object p2, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 7
    .line 8
    iput-object p3, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/zyyoona7/wheel/WheelView;->setOnItemSelectedListener(Lcb/b;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lcom/zyyoona7/wheel/WheelView;->setOnItemSelectedListener(Lcb/b;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lcom/zyyoona7/wheel/WheelView;->setOnItemSelectedListener(Lcb/b;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object p1, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Lcom/zyyoona7/wheel/WheelView;->setOnScrollChangedListener(Lcb/c;)V

    .line 34
    .line 35
    .line 36
    :cond_3
    iget-object p1, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Lcom/zyyoona7/wheel/WheelView;->setOnScrollChangedListener(Lcb/c;)V

    .line 41
    .line 42
    .line 43
    :cond_4
    iget-object p1, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 44
    .line 45
    if-eqz p1, :cond_5

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Lcom/zyyoona7/wheel/WheelView;->setOnScrollChangedListener(Lcb/c;)V

    .line 48
    .line 49
    .line 50
    :cond_5
    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lab/d;->setAutoFitTextSize(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lab/d;->setResetSelectedPosition(Z)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public a(Lcom/zyyoona7/wheel/WheelView;I)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/WheelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->d:Lcb/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcb/c;->a(Lcom/zyyoona7/wheel/WheelView;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public d(Lcom/zyyoona7/wheel/WheelView;I)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/WheelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->d:Lcb/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcb/c;->d(Lcom/zyyoona7/wheel/WheelView;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public e(Lcom/zyyoona7/wheel/WheelView;Lcom/zyyoona7/wheel/adapter/a;I)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/WheelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/zyyoona7/wheel/adapter/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zyyoona7/wheel/WheelView;",
            "Lcom/zyyoona7/wheel/adapter/a<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    const/4 p3, -0x1

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p2, -0x1

    .line 12
    :goto_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ne p1, p2, :cond_6

    .line 25
    .line 26
    iget-object p1, p0, Lab/d;->c:Lbb/g;

    .line 27
    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    iget-object p2, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lab/d;->getLinkage1WheelView()Lcom/zyyoona7/wheel/WheelView;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-interface {p1, p3}, Lbb/g;->a(Lcom/zyyoona7/wheel/WheelView;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p2, p3}, Lcom/zyyoona7/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p2, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 46
    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lab/d;->getLinkage1WheelView()Lcom/zyyoona7/wheel/WheelView;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p0}, Lab/d;->getLinkage2WheelView()Lcom/zyyoona7/wheel/WheelView;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {p1, p3, v0}, Lbb/g;->b(Lcom/zyyoona7/wheel/WheelView;Lcom/zyyoona7/wheel/WheelView;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p2, p1}, Lcom/zyyoona7/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const/4 p1, 0x0

    .line 68
    :goto_1
    if-eqz p1, :cond_4

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    iget-object p1, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 72
    .line 73
    if-eqz p1, :cond_7

    .line 74
    .line 75
    iget-object p2, p0, Lab/d;->b:Lbb/d;

    .line 76
    .line 77
    if-eqz p2, :cond_5

    .line 78
    .line 79
    invoke-virtual {p0}, Lab/d;->getLinkage1WheelView()Lcom/zyyoona7/wheel/WheelView;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-interface {p2, p3}, Lbb/d;->a(Lcom/zyyoona7/wheel/WheelView;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    if-eqz p2, :cond_5

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    :goto_2
    invoke-virtual {p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_6
    if-ne p1, p3, :cond_7

    .line 101
    .line 102
    iget-object p1, p0, Lab/d;->c:Lbb/g;

    .line 103
    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    iget-object p2, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 107
    .line 108
    if-eqz p2, :cond_7

    .line 109
    .line 110
    invoke-virtual {p0}, Lab/d;->getLinkage1WheelView()Lcom/zyyoona7/wheel/WheelView;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    invoke-virtual {p0}, Lab/d;->getLinkage2WheelView()Lcom/zyyoona7/wheel/WheelView;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-interface {p1, p3, v0}, Lbb/g;->b(Lcom/zyyoona7/wheel/WheelView;Lcom/zyyoona7/wheel/WheelView;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p2, p1}, Lcom/zyyoona7/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 123
    .line 124
    .line 125
    :cond_7
    :goto_3
    iget-object p1, p0, Lab/d;->e:Lbb/e;

    .line 126
    .line 127
    if-eqz p1, :cond_8

    .line 128
    .line 129
    invoke-virtual {p0}, Lab/d;->getLinkage1WheelView()Lcom/zyyoona7/wheel/WheelView;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    iget-object p3, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 134
    .line 135
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 136
    .line 137
    invoke-interface {p1, p2, p3, v0}, Lbb/e;->a(Lcom/zyyoona7/wheel/WheelView;Lcom/zyyoona7/wheel/WheelView;Lcom/zyyoona7/wheel/WheelView;)V

    .line 138
    .line 139
    .line 140
    :cond_8
    return-void
.end method

.method public getLinkage1SelectedItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lab/d;->getLinkage1WheelView()Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/zyyoona7/wheel/WheelView;->getSelectedItem()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getLinkage1WheelView()Lcom/zyyoona7/wheel/WheelView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-object v0

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "First WheelView is null."

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public getLinkage2SelectedItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lab/d;->getLinkage2WheelView()Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/zyyoona7/wheel/WheelView;->getSelectedItem()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getLinkage2WheelView()Lcom/zyyoona7/wheel/WheelView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-object v0

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "Second WheelView is null."

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public getLinkage3SelectedItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lab/d;->getLinkage3WheelView()Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/zyyoona7/wheel/WheelView;->getSelectedItem()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getLinkage3WheelView()Lcom/zyyoona7/wheel/WheelView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-object v0

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "Third WheelView is null."

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public setAutoFitTextSize(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setAutoFitTextSize(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setAutoFitTextSize(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setAutoFitTextSize(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setCurtainColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurtainColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurtainColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurtainColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setCurtainColorRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurtainColorRes(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurtainColorRes(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurtainColorRes(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setCurved(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurved(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurved(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurved(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setCurvedArcDirection(Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurvedArcDirection(Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurvedArcDirection(Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurvedArcDirection(Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setCurvedArcDirectionFactor(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurvedArcDirectionFactor(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurvedArcDirectionFactor(F)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCurvedArcDirectionFactor(F)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setCyclic(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCyclic(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCyclic(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setCyclic(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setData(Ljava/util/List;Lbb/d;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbb/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lbb/d;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 2
    :cond_0
    iput-object p2, p0, Lab/d;->b:Lbb/d;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lab/d;->c:Lbb/g;

    .line 4
    iget-object p1, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lab/d;->getLinkage1WheelView()Lcom/zyyoona7/wheel/WheelView;

    move-result-object v0

    invoke-interface {p2, v0}, Lbb/d;->a(Lcom/zyyoona7/wheel/WheelView;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 6
    :goto_0
    invoke-virtual {p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 7
    :cond_2
    iget-object p1, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz p1, :cond_3

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public setData(Ljava/util/List;Lbb/g;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbb/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lbb/g;",
            ")V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 9
    :cond_0
    iput-object p2, p0, Lab/d;->c:Lbb/g;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lab/d;->b:Lbb/d;

    .line 11
    iget-object p1, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lab/d;->getLinkage1WheelView()Lcom/zyyoona7/wheel/WheelView;

    move-result-object v0

    invoke-interface {p2, v0}, Lbb/g;->a(Lcom/zyyoona7/wheel/WheelView;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 13
    :goto_0
    invoke-virtual {p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 14
    :cond_2
    iget-object p1, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lab/d;->c:Lbb/g;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lab/d;->getLinkage1WheelView()Lcom/zyyoona7/wheel/WheelView;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lab/d;->getLinkage2WheelView()Lcom/zyyoona7/wheel/WheelView;

    move-result-object v1

    .line 16
    invoke-interface {p2, v0, v1}, Lbb/g;->b(Lcom/zyyoona7/wheel/WheelView;Lcom/zyyoona7/wheel/WheelView;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 18
    :goto_1
    invoke-virtual {p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setData(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public setDividerCap(Landroid/graphics/Paint$Cap;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint$Cap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerCap(Landroid/graphics/Paint$Cap;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerCap(Landroid/graphics/Paint$Cap;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerCap(Landroid/graphics/Paint$Cap;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setDividerColorRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColorRes(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColorRes(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColorRes(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setDividerHeight(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(F)V

    :cond_2
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(I)V

    :cond_2
    return-void
.end method

.method public setDividerOffsetY(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerOffsetY(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerOffsetY(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerOffsetY(F)V

    :cond_2
    return-void
.end method

.method public setDividerOffsetY(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerOffsetY(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerOffsetY(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerOffsetY(I)V

    :cond_2
    return-void
.end method

.method public setDividerType(Lcom/zyyoona7/wheel/WheelView$DividerType;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/WheelView$DividerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerType(Lcom/zyyoona7/wheel/WheelView$DividerType;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerType(Lcom/zyyoona7/wheel/WheelView$DividerType;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerType(Lcom/zyyoona7/wheel/WheelView$DividerType;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setLeftText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p1, p1}, Lab/d;->setLeftText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setLeftText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Lcom/zyyoona7/wheel/WheelView;->setLeftText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setLeftTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setLeftTextColorRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextColorRes(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextColorRes(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextColorRes(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setLeftTextGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextGravity(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextGravity(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextGravity(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setLeftTextMarginRight(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextMarginRight(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextMarginRight(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextMarginRight(F)V

    :cond_2
    return-void
.end method

.method public setLeftTextMarginRight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextMarginRight(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextMarginRight(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextMarginRight(I)V

    :cond_2
    return-void
.end method

.method public setLeftTextSize(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextSize(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextSize(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextSize(F)V

    :cond_2
    return-void
.end method

.method public setLeftTextSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextSize(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextSize(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLeftTextSize(I)V

    :cond_2
    return-void
.end method

.method public setLineSpacing(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(F)V

    :cond_2
    return-void
.end method

.method public setLineSpacing(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(I)V

    :cond_2
    return-void
.end method

.method public setLinkage1TextFormatter(Lcom/zyyoona7/wheel/formatter/c;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/formatter/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextFormatter(Lcom/zyyoona7/wheel/formatter/c;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setLinkage2TextFormatter(Lcom/zyyoona7/wheel/formatter/c;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/formatter/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextFormatter(Lcom/zyyoona7/wheel/formatter/c;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setLinkage3TextFormatter(Lcom/zyyoona7/wheel/formatter/c;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/formatter/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextFormatter(Lcom/zyyoona7/wheel/formatter/c;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V
    .locals 0
    .param p1    # Lcom/zyyoona7/wheel/WheelView$MeasureType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p1, p1}, Lab/d;->setMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;Lcom/zyyoona7/wheel/WheelView$MeasureType;Lcom/zyyoona7/wheel/WheelView$MeasureType;)V

    return-void
.end method

.method public setMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;Lcom/zyyoona7/wheel/WheelView$MeasureType;Lcom/zyyoona7/wheel/WheelView$MeasureType;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/WheelView$MeasureType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/zyyoona7/wheel/WheelView$MeasureType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/zyyoona7/wheel/WheelView$MeasureType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Lcom/zyyoona7/wheel/WheelView;->setMaxTextWidthMeasureType(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V

    :cond_2
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMinTextSize(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMinTextSize(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMinTextSize(F)V

    :cond_2
    return-void
.end method

.method public setMinTextSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMinTextSize(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMinTextSize(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setMinTextSize(I)V

    :cond_2
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalTextColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalTextColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalTextColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setNormalTextColorRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalTextColorRes(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalTextColorRes(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalTextColorRes(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setOnLinkageSelectedListener(Lbb/e;)V
    .locals 0
    .param p1    # Lbb/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lab/d;->e:Lbb/e;

    .line 2
    .line 3
    return-void
.end method

.method public setOnScrollChangedListener(Lcb/c;)V
    .locals 0
    .param p1    # Lcb/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lab/d;->d:Lcb/c;

    .line 2
    .line 3
    return-void
.end method

.method public setRefractRatio(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRefractRatio(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRefractRatio(F)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRefractRatio(F)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setResetSelectedPosition(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setResetSelectedPosition(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setResetSelectedPosition(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setResetSelectedPosition(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setRightText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p1, p1}, Lab/d;->setRightText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRightText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setRightText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Lcom/zyyoona7/wheel/WheelView;->setRightText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setRightTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setRightTextColorRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextColorRes(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextColorRes(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextColorRes(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setRightTextGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextGravity(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextGravity(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextGravity(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setRightTextMarginLeft(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextMarginLeft(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextMarginLeft(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextMarginLeft(F)V

    :cond_2
    return-void
.end method

.method public setRightTextMarginLeft(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextMarginLeft(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextMarginLeft(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextMarginLeft(I)V

    :cond_2
    return-void
.end method

.method public setRightTextSize(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextSize(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextSize(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextSize(F)V

    :cond_2
    return-void
.end method

.method public setRightTextSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextSize(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextSize(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRightTextSize(I)V

    :cond_2
    return-void
.end method

.method public setSelectedItem(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lab/d;->setSelectedItem(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSelectedItem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lab/d;->setSelectedItem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSelectedItem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 14
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move/from16 v1, p4

    .line 4
    iget-object v2, v0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v2, :cond_0

    move-object v3, p1

    .line 5
    invoke-virtual {v2, p1, v1}, Lcom/zyyoona7/wheel/WheelView;->l0(Ljava/lang/Object;Z)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/zyyoona7/wheel/WheelView;->setSelectedPosition$default(Lcom/zyyoona7/wheel/WheelView;IZIILjava/lang/Object;)V

    .line 6
    :cond_0
    iget-object v8, v0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v8, :cond_1

    move-object/from16 v2, p2

    .line 7
    invoke-virtual {v8, v2, v1}, Lcom/zyyoona7/wheel/WheelView;->l0(Ljava/lang/Object;Z)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/zyyoona7/wheel/WheelView;->setSelectedPosition$default(Lcom/zyyoona7/wheel/WheelView;IZIILjava/lang/Object;)V

    .line 8
    :cond_1
    iget-object v2, v0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v2, :cond_2

    move-object/from16 v3, p3

    .line 9
    invoke-virtual {v2, v3, v1}, Lcom/zyyoona7/wheel/WheelView;->l0(Ljava/lang/Object;Z)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/zyyoona7/wheel/WheelView;->setSelectedPosition$default(Lcom/zyyoona7/wheel/WheelView;IZIILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setSelectedItem(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, ""

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Lab/d;->setSelectedItem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSelectedPosition(II)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lab/d;->setSelectedPosition(III)V

    return-void
.end method

.method public setSelectedPosition(III)V
    .locals 12

    .line 2
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/zyyoona7/wheel/WheelView;->setSelectedPosition$default(Lcom/zyyoona7/wheel/WheelView;IZIILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v6, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v6, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move v7, p2

    invoke-static/range {v6 .. v11}, Lcom/zyyoona7/wheel/WheelView;->setSelectedPosition$default(Lcom/zyyoona7/wheel/WheelView;IZIILjava/lang/Object;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/zyyoona7/wheel/WheelView;->setSelectedPosition$default(Lcom/zyyoona7/wheel/WheelView;IZIILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedTextColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedTextColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedTextColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setSelectedTextColorRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedTextColorRes(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedTextColorRes(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedTextColorRes(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setShowCurtain(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setShowCurtain(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setShowCurtain(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setShowCurtain(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setShowDivider(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setShowDivider(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setShowDivider(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setSoundEffect(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundEffect(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundEffect(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundEffect(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setSoundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundResource(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundResource(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundResource(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setSoundVolume(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundVolume(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundVolume(F)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSoundVolume(F)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint$Align;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setTextFormatter(Lcom/zyyoona7/wheel/formatter/c;)V
    .locals 1
    .param p1    # Lcom/zyyoona7/wheel/formatter/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextFormatter(Lcom/zyyoona7/wheel/formatter/c;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextFormatter(Lcom/zyyoona7/wheel/formatter/c;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextFormatter(Lcom/zyyoona7/wheel/formatter/c;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setTextPadding(F)V
    .locals 1

    .line 7
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPadding(F)V

    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPadding(F)V

    .line 9
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPadding(F)V

    :cond_2
    return-void
.end method

.method public setTextPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(I)V

    .line 5
    :cond_3
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(I)V

    .line 6
    :cond_4
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(I)V

    :cond_5
    return-void
.end method

.method public setTextPaddingLeft(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(F)V

    :cond_2
    return-void
.end method

.method public setTextPaddingLeft(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingLeft(I)V

    :cond_2
    return-void
.end method

.method public setTextPaddingRight(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(F)V

    :cond_2
    return-void
.end method

.method public setTextPaddingRight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextPaddingRight(I)V

    :cond_2
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(F)V

    :cond_2
    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(I)V

    :cond_2
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 4
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, v3, v2, v1}, Lcom/zyyoona7/wheel/WheelView;->setTypeface$default(Lcom/zyyoona7/wheel/WheelView;Landroid/graphics/Typeface;ZILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-static {v0, p1, v3, v2, v1}, Lcom/zyyoona7/wheel/WheelView;->setTypeface$default(Lcom/zyyoona7/wheel/WheelView;Landroid/graphics/Typeface;ZILjava/lang/Object;)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-static {v0, p1, v3, v2, v1}, Lcom/zyyoona7/wheel/WheelView;->setTypeface$default(Lcom/zyyoona7/wheel/WheelView;Landroid/graphics/Typeface;ZILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;Z)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    :cond_2
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setVisibleItems(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setVisibleItems(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setVisibleItems(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public setWheelDividerPadding(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerPadding(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerPadding(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerPadding(F)V

    :cond_2
    return-void
.end method

.method public setWheelDividerPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->f:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerPadding(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lab/d;->g:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerPadding(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lab/d;->h:Lcom/zyyoona7/wheel/WheelView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerPadding(I)V

    :cond_2
    return-void
.end method

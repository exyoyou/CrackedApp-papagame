.class public Lcom/join/mgps/adapter/o5$k;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/o5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public d:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/FrameLayout;

.field public g:Landroid/widget/TextView;

.field public h:Lcom/join/android/app/component/video/MultiStandVideo;

.field final synthetic i:Lcom/join/mgps/adapter/o5;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/o5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemview"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$k;->i:Lcom/join/mgps/adapter/o5;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1415

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$k;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    const p1, 0x7f0a1889

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$k;->e:Landroid/widget/TextView;

    .line 27
    .line 28
    const p1, 0x7f0a0642

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/FrameLayout;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$k;->f:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    const p1, 0x7f0a1857

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$k;->g:Landroid/widget/TextView;

    .line 49
    .line 50
    const p1, 0x7f0a1bea

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 60
    .line 61
    return-void
.end method

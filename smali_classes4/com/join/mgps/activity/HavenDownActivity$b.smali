.class Lcom/join/mgps/activity/HavenDownActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HavenDownActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/view/View;

.field g:Lcom/facebook/drawee/view/SimpleDraweeView;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field final synthetic j:Lcom/join/mgps/activity/HavenDownActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/HavenDownActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/HavenDownActivity;
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
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$b;->j:Lcom/join/mgps/activity/HavenDownActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a0424

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$b;->d:Landroid/widget/TextView;

    .line 16
    .line 17
    const p1, 0x7f0a00ee

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
    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$b;->e:Landroid/widget/TextView;

    .line 27
    .line 28
    const p1, 0x7f0a0496

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$b;->f:Landroid/view/View;

    .line 36
    .line 37
    const p1, 0x7f0a084f

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$b;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 47
    .line 48
    const p1, 0x7f0a06f8

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$b;->h:Landroid/view/View;

    .line 56
    .line 57
    const p1, 0x7f0a0fee

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$b;->i:Landroid/view/View;

    .line 65
    .line 66
    return-void
.end method

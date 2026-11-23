.class public Lcom/join/mgps/activity/GameInformationActivityV2$r;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameInformationActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "r"
.end annotation


# instance fields
.field private d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private e:Landroid/widget/TextView;

.field final synthetic f:Lcom/join/mgps/activity/GameInformationActivityV2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/GameInformationActivityV2;
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$r;->f:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1b1b

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$r;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    .line 17
    const p1, 0x7f0a1032

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$r;->e:Landroid/widget/TextView;

    .line 27
    .line 28
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/GameInformationActivityV2$r;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$r;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/GameInformationActivityV2$r;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$r;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

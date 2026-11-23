.class Lcom/join/mgps/activity/GameDetailActivity$j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity$j;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameListItemBean;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/activity/GameDetailActivity$j;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$j;Lcom/join/mgps/dto/GameListItemBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$searchDataBean",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$d;->d:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$j$d;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/GameDetailActivity$j$d;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$d;->d:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->gameidlist:Ljava/util/List;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$d;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$d;->d:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 19
    .line 20
    iget v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$d;->c:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameDetailActivity;->DelectLocaleGame(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

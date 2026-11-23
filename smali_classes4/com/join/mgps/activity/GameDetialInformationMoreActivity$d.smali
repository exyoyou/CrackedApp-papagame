.class Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->refresh(Landroid/view/ViewGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameDetialStrategyTag;

.field final synthetic c:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;Lcom/join/mgps/dto/GameDetialStrategyTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$tabBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;->c:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;->b:Lcom/join/mgps/dto/GameDetialStrategyTag;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;->c:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;->b:Lcom/join/mgps/dto/GameDetialStrategyTag;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetialStrategyTag;->getTag_id()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p1, v0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->access$402(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;I)I

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;->c:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {p1, v0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->access$102(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;I)I

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;->c:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->dialogLoding:Lcom/join/mgps/dialog/f1;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dialog/f1;->b()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;->c:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->getListData()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

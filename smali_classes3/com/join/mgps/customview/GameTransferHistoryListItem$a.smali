.class Lcom/join/mgps/customview/GameTransferHistoryListItem$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/GameTransferHistoryListItem;->b(Lcom/join/mgps/dto/GameTransferBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/GameTransferHistoryListItem;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/GameTransferHistoryListItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem$a;->b:Lcom/join/mgps/customview/GameTransferHistoryListItem;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem$a;->b:Lcom/join/mgps/customview/GameTransferHistoryListItem;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/join/mgps/customview/GameTransferHistoryListItem;->f:Lcom/join/mgps/dto/GameTransferBean;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem$a;->b:Lcom/join/mgps/customview/GameTransferHistoryListItem;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/GameTransferHistoryListItem;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.class Lcom/join/mgps/activity/SearchHintActivity$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity;->makeFlawLayoutItem(Landroid/content/Context;Lcom/join/mgps/dto/SearchAutoDataBean;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/SearchAutoDataBean;

.field final synthetic c:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/dto/SearchAutoDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->c:Lcom/join/mgps/activity/SearchHintActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->b:Lcom/join/mgps/dto/SearchAutoDataBean;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->c:Lcom/join/mgps/activity/SearchHintActivity;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->b:Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchAutoDataBean;->getGame_name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->b:Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchAutoDataBean;->getGame_id()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

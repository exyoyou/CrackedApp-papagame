.class Lcom/join/mgps/activity/GameDetailActivity_$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity_;->showPopupWindow(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameDetailActivity$k;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/dto/GameListItemBean;

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Lcom/join/mgps/activity/GameDetailActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity_;Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$myHolder",
            "val$text_content",
            "val$gameid",
            "val$searchDataBean",
            "val$type",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->h:Lcom/join/mgps/activity/GameDetailActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->b:Lcom/join/mgps/activity/GameDetailActivity$k;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->e:Lcom/join/mgps/dto/GameListItemBean;

    .line 10
    .line 11
    iput p6, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->f:I

    .line 12
    .line 13
    iput p7, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->g:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->h:Lcom/join/mgps/activity/GameDetailActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->b:Lcom/join/mgps/activity/GameDetailActivity$k;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->e:Lcom/join/mgps/dto/GameListItemBean;

    .line 10
    .line 11
    iget v5, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->f:I

    .line 12
    .line 13
    iget v6, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->g:I

    .line 14
    .line 15
    invoke-static/range {v0 .. v6}, Lcom/join/mgps/activity/GameDetailActivity_;->access$1901(Lcom/join/mgps/activity/GameDetailActivity_;Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

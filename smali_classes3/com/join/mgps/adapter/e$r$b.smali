.class Lcom/join/mgps/adapter/e$r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/e$r;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/TodayWufunBroadcast;

.field final synthetic c:Lcom/join/mgps/adapter/e$r;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/e$r;Lcom/join/mgps/dto/TodayWufunBroadcast;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/e$r$b;->c:Lcom/join/mgps/adapter/e$r;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/e$r$b;->b:Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "tpl_type",
            "jump_type",
            "_from_type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 20
    .line 21
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p4}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/join/mgps/adapter/e$r$b;->c:Lcom/join/mgps/adapter/e$r;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/join/mgps/adapter/e$r;->c:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/e$r$b;->b:Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/e$r$b;->b:Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getTpl_type()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/adapter/e$r$b;->b:Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getSp_tpl_two_position()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/join/mgps/adapter/e$r$b;->b:Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/join/mgps/adapter/e$r$b;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

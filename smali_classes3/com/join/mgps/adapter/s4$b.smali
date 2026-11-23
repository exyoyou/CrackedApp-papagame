.class Lcom/join/mgps/adapter/s4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/s4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/AccountVoucherGameBean;

.field final synthetic c:Lcom/join/mgps/adapter/s4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/s4;Lcom/join/mgps/dto/AccountVoucherGameBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$mBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/s4$b;->c:Lcom/join/mgps/adapter/s4;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/s4$b;->b:Lcom/join/mgps/dto/AccountVoucherGameBean;

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
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/s4$b;->c:Lcom/join/mgps/adapter/s4;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/adapter/s4;->a(Lcom/join/mgps/adapter/s4;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/join/mgps/adapter/s4$b;->b:Lcom/join/mgps/dto/AccountVoucherGameBean;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object p1, p0, Lcom/join/mgps/adapter/s4$b;->b:Lcom/join/mgps/dto/AccountVoucherGameBean;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object p1, p0, Lcom/join/mgps/adapter/s4$b;->b:Lcom/join/mgps/dto/AccountVoucherGameBean;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iget-object p1, p0, Lcom/join/mgps/adapter/s4$b;->b:Lcom/join/mgps/dto/AccountVoucherGameBean;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

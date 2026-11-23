.class Lcom/join/mgps/adapter/d3$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/d3$a;->a(Lcom/join/mgps/dto/AccountVoucherGameBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/AccountVoucherGameBean;

.field final synthetic c:Lcom/join/mgps/adapter/d3$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d3$a;Lcom/join/mgps/dto/AccountVoucherGameBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$mBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d3$a$a;->c:Lcom/join/mgps/adapter/d3$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/d3$a$a;->b:Lcom/join/mgps/dto/AccountVoucherGameBean;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/d3$a$a;->c:Lcom/join/mgps/adapter/d3$a;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/d3$a;->g:Lcom/join/mgps/adapter/d3;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/mgps/adapter/d3;->a(Lcom/join/mgps/adapter/d3;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/adapter/d3$a$a;->b:Lcom/join/mgps/dto/AccountVoucherGameBean;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object p1, p0, Lcom/join/mgps/adapter/d3$a$a;->b:Lcom/join/mgps/dto/AccountVoucherGameBean;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getGame_tpl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object p1, p0, Lcom/join/mgps/adapter/d3$a$a;->b:Lcom/join/mgps/dto/AccountVoucherGameBean;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iget-object p1, p0, Lcom/join/mgps/adapter/d3$a$a;->b:Lcom/join/mgps/dto/AccountVoucherGameBean;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

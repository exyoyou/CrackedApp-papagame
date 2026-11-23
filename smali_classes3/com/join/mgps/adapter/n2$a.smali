.class Lcom/join/mgps/adapter/n2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/n2;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/adapter/n2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/n2;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$gameId",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/n2$a;->d:Lcom/join/mgps/adapter/n2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/n2$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/n2$a;->c:I

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
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/n2$a;->d:Lcom/join/mgps/adapter/n2;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/n2;->a(Lcom/join/mgps/adapter/n2;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickIndexAdEvent:Lcom/papa/sim/statistic/Event;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/adapter/n2$a;->d:Lcom/join/mgps/adapter/n2;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/join/mgps/adapter/n2;->a(Lcom/join/mgps/adapter/n2;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/join/mgps/adapter/n2$a;->b:Ljava/lang/String;

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "1-"

    .line 35
    .line 36
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v4, p0, Lcom/join/mgps/adapter/n2$a;->c:I

    .line 40
    .line 41
    add-int/lit8 v4, v4, 0x1

    .line 42
    .line 43
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->Z0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    iget-object p1, p0, Lcom/join/mgps/adapter/n2$a;->d:Lcom/join/mgps/adapter/n2;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/join/mgps/adapter/n2;->a(Lcom/join/mgps/adapter/n2;)Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    iget-object v8, p0, Lcom/join/mgps/adapter/n2$a;->b:Ljava/lang/String;

    .line 65
    .line 66
    const-string v9, "0"

    .line 67
    .line 68
    const/4 v10, 0x1

    .line 69
    const/16 v11, 0x7a

    .line 70
    .line 71
    invoke-virtual/range {v6 .. v11}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

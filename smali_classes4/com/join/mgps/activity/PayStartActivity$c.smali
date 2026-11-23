.class Lcom/join/mgps/activity/PayStartActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PayStartActivity;->showConfigData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/join/mgps/dto/PayActivityRebate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/PayStartActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PayStartActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$c;->b:Lcom/join/mgps/activity/PayStartActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/PayActivityRebate;Lcom/join/mgps/dto/PayActivityRebate;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayActivityRebate;->getMin_money()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/PayActivityRebate;->getMin_money()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-le p1, p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, -0x1

    .line 14
    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "arg0",
            "arg1"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/dto/PayActivityRebate;

    .line 2
    .line 3
    check-cast p2, Lcom/join/mgps/dto/PayActivityRebate;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/PayStartActivity$c;->a(Lcom/join/mgps/dto/PayActivityRebate;Lcom/join/mgps/dto/PayActivityRebate;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

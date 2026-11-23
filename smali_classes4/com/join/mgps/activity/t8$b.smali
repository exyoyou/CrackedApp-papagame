.class Lcom/join/mgps/activity/t8$b;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/t8;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/t8;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/t8;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/t8$b;->a:Lcom/join/mgps/activity/t8;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8$b;->a:Lcom/join/mgps/activity/t8;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/t8;->X(Lcom/join/mgps/activity/t8;)Lcom/join/mgps/adapter/f6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/t8$b;->a:Lcom/join/mgps/activity/t8;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/activity/t8;->X(Lcom/join/mgps/activity/t8;)Lcom/join/mgps/adapter/f6;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/16 v0, 0xb

    .line 32
    .line 33
    if-eq p1, v0, :cond_0

    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    const/4 p1, 0x5

    .line 37
    return p1

    .line 38
    :cond_1
    return v1
.end method

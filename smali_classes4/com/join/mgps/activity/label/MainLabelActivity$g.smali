.class Lcom/join/mgps/activity/label/MainLabelActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/noties/scrollable/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/label/MainLabelActivity;->initTab(Lcom/join/mgps/dto/MainLabelBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/label/MainLabelActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/label/MainLabelActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$g;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "y",
            "oldY",
            "maxY"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/join/mgps/activity/label/MainLabelActivity$g;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 2
    .line 3
    add-int/lit8 p3, p3, -0xf

    .line 4
    .line 5
    if-lt p1, p3, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/label/MainLabelActivity;->changeState(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$g;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 14
    .line 15
    iget-object p2, p1, Lcom/join/mgps/activity/label/MainLabelActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/activity/label/MainLabelActivity;->access$100(Lcom/join/mgps/activity/label/MainLabelActivity;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/h0;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/join/mgps/fragment/y3;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/fragment/y3;->Q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_1
    return-void
.end method

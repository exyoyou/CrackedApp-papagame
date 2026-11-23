.class Lcom/join/mgps/activity/MGChooseIconActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGChooseIconActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MGChooseIconActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGChooseIconActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "view",
            "i",
            "l"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/tbruyelle/rxpermissions2/c;

    .line 4
    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity;

    .line 6
    .line 7
    invoke-direct {p1, p2}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 8
    .line 9
    .line 10
    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 11
    .line 12
    filled-new-array {p2}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/Observable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance p2, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;

    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity$a;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/mgps/activity/MGChooseIconActivity;->access$100(Lcom/join/mgps/activity/MGChooseIconActivity;)Lcom/join/mgps/adapter/f;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/f;->b(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->b:Lcom/join/mgps/activity/MGChooseIconActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/activity/MGChooseIconActivity;->access$200(Lcom/join/mgps/activity/MGChooseIconActivity;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Lcom/join/mgps/db/tables/HeadPortraitTable;

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/HeadPortraitTable;->getHead_portrait_pic()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MGChooseIconActivity;->updatedata(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

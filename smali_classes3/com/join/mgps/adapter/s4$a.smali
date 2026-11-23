.class Lcom/join/mgps/adapter/s4$a;
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
.field final synthetic b:Lcom/join/mgps/dto/AccountVoucher;

.field final synthetic c:Lcom/join/mgps/adapter/s4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/s4;Lcom/join/mgps/dto/AccountVoucher;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/s4$a;->c:Lcom/join/mgps/adapter/s4;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/s4$a;->b:Lcom/join/mgps/dto/AccountVoucher;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/s4$a;->c:Lcom/join/mgps/adapter/s4;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/s4;->a(Lcom/join/mgps/adapter/s4;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/MyVoucherGameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MyVoucherGameActivity_$j;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/s4$a;->b:Lcom/join/mgps/dto/AccountVoucher;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MyVoucherGameActivity_$j;->a(Lcom/join/mgps/dto/AccountVoucher;)Lcom/join/mgps/activity/MyVoucherGameActivity_$j;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 18
    .line 19
    .line 20
    return-void
.end method

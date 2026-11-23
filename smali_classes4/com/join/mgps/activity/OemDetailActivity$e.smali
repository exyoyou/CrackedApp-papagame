.class Lcom/join/mgps/activity/OemDetailActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/OemDetailActivity;->refreshOem1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/OemDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/OemDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$e;->b:Lcom/join/mgps/activity/OemDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$e;->b:Lcom/join/mgps/activity/OemDetailActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity$e;->b:Lcom/join/mgps/activity/OemDetailActivity;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/join/mgps/activity/OemDetailActivity;->access$000(Lcom/join/mgps/activity/OemDetailActivity;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$e;->b:Lcom/join/mgps/activity/OemDetailActivity;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/activity/OemDetailActivity;->receveCdk()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

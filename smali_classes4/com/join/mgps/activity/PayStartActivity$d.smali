.class public Lcom/join/mgps/activity/PayStartActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/PayStartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/PayStartActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/PayStartActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$d;->b:Lcom/join/mgps/activity/PayStartActivity;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity$d;->b:Lcom/join/mgps/activity/PayStartActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/PayStartActivity;->papaTopPriceBig:Landroid/widget/TextView;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity$d;->b:Lcom/join/mgps/activity/PayStartActivity;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayStartActivity;->access$000(Lcom/join/mgps/activity/PayStartActivity;Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    instance-of v0, p1, Landroid/widget/Button;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity$d;->b:Lcom/join/mgps/activity/PayStartActivity;

    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayStartActivity;->access$200(Lcom/join/mgps/activity/PayStartActivity;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$d;->b:Lcom/join/mgps/activity/PayStartActivity;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/activity/PayStartActivity;->access$300(Lcom/join/mgps/activity/PayStartActivity;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

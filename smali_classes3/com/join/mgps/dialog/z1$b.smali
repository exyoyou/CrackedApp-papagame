.class Lcom/join/mgps/dialog/z1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/z1;->c(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/z1;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/z1;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/z1$b;->b:Lcom/join/mgps/dialog/z1;

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
    iget-object p1, p0, Lcom/join/mgps/dialog/z1$b;->b:Lcom/join/mgps/dialog/z1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/dialog/z1;->a(Lcom/join/mgps/dialog/z1;)Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x1101

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/join/mgps/activity/posting/PostingActivity$m;->c(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/dialog/z1$b;->b:Lcom/join/mgps/dialog/z1;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dialog/z1;->b()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

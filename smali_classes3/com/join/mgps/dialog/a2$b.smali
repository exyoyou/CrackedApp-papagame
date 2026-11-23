.class Lcom/join/mgps/dialog/a2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/a2;->d(Landroid/app/Activity;I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/dialog/a2;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/a2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/a2$b;->c:Lcom/join/mgps/dialog/a2;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/dialog/a2$b;->b:I

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
    iget-object p1, p0, Lcom/join/mgps/dialog/a2$b;->c:Lcom/join/mgps/dialog/a2;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/dialog/a2;->a(Lcom/join/mgps/dialog/a2;)Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget v0, p0, Lcom/join/mgps/dialog/a2$b;->b:I

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/join/mgps/activity/posting/PostingActivity$m;->b(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/dialog/a2$b;->c:Lcom/join/mgps/dialog/a2;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dialog/a2;->c()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
